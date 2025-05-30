#include "defines.h"
#include "static_references.h"

bool is_bank_present(u32 bank);
bool is_of_type(u8 bank, u8 type);
void set_type(u8 bank, u8 type);
s8 get_move_position(u8 bank, u16 move);
bool percent_chance(u8 percent);
void copy_status_condition_text(u8 bank, u8 confusion);
void record_usage_of_move(u8 bank, u16 move);
bool try_stealing_bank_item(u8 thief_bank, u8 victim_bank);
bool find_move_in_table(u16 move, const u16* table_ptr);
u8 cant_fall_asleep(u8 bank, u8 self_inflicted);
u8 cant_become_burned(u8 bank, u8 self_inflicted);
u8 cant_become_freezed(u8 bank, u8 self_inflicted);
u8 cant_become_paralyzed(u8 bank, u8 self_inflicted);
u8 cant_poison(u8 atk_bank, u8 def_bank, u8 self_inflicted);
void move_to_buff1(u16 move);
u8 not_magicguard(u8 bank);
u16 apply_type_effectiveness(u16 move, u16 chained_effect, u8 move_type, u8 target_bank, u8 atk_bank, u8 airstatus);
bool load_weather_from_overworld();
bool does_move_make_contact(u16 move, u8 atk_bank);
void reset_terrains(struct field_affecting* field);
u8 terrains_get_turns(u8 bank);
s8 get_priority(u16 move, u8 bank);
bool handle_primal_reversion(u8 bank);
bool check_ability(u8 bank, u8 ability);
u8 get_item_effect(u8 bank, bool check_negating_effects);
u8 get_attacking_move_type(void);
struct pokemon* get_bank_poke_ptr(u8 bank);
u8 get_bank_side(u8 bank);
void bs_push(void* to_return, void* now);
void bs_push_current(void* now);
void bs_execute(void* bs);
u8 item_force_switching(u8 bank, void* BS_ptr, bool be_attacked);
u8 check_field_for_ability(u8 ability, u8 side_to_ignore, u8 mold);
u8 can_lose_item(u8 bank, u8 stickyhold_check, u8 sticky_message);
void check_weather_trio(void);
u8 findability_in_table(u8 ability, const u8* table);

bool not_impostered(u8 bank) 
{
    return !battle_participants[bank].status2.transformed;
}

bool neutralizing_gas_leaving_field(bool reset)
{
	if(new_battlestruct->various.neutralizing_gas_in_force && !check_field_for_ability(ABILITY_NEUTRALIZING_GAS,3 ,0))
	{
		if (reset)
			new_battlestruct->various.neutralizing_gas_in_force = 0;
		return 1;
	}
	return 0;
}

void mimicry_change(u8 bank, bool reset_type)
{
	u8 checking_bank = 0;
	u8 check_end_bank = gBattlersCount;
	if(bank < gBattlersCount) 
	{
		checking_bank = bank;
		check_end_bank = bank + 1;
	}
	for(; checking_bank < check_end_bank; checking_bank++)
	{
		if(check_ability(checking_bank, ABILITY_MIMICRY))
		{
			if(new_battlestruct->field_affecting.grassy_terrain)
				set_type(checking_bank, TYPE_GRASS);
			else if(new_battlestruct->field_affecting.electic_terrain)
				set_type(checking_bank, TYPE_ELECTRIC);
			else if(new_battlestruct->field_affecting.misty_terrain)
				set_type(checking_bank, TYPE_FAIRY);
			else if(new_battlestruct->field_affecting.psychic_terrain)
				set_type(checking_bank, TYPE_PSYCHIC);
			else if(reset_type)
			{
				battle_participants[checking_bank].type1 = (*basestat_table)[battle_participants[checking_bank].species].type1;
				battle_participants[checking_bank].type2 = (*basestat_table)[battle_participants[checking_bank].species].type2;
				new_battlestruct->bank_affecting[checking_bank].type3 = TYPE_EGG;
			}
		}
	}
}

bool has_ability_effect(u8 bank, u8 mold_breaker) 
{
    u8 bank_ability = battle_participants[bank].ability_id;
    if (new_battlestruct->bank_affecting[bank].gastro_acided)
        return false;
	else if  (bank_ability != ABILITY_NEUTRALIZING_GAS && !findability_in_table(bank_ability, forbidenabilitiestable2) && check_field_for_ability(ABILITY_NEUTRALIZING_GAS, 3, 0))
        return false;
    if (mold_breaker && bank != bank_attacker && bank_ability != ABILITY_SHADOW_SHIELD &&
        bank_ability != ABILITY_PRISM_ARMOR && bank_ability != ABILITY_FULL_METAL_BODY) 
	{
        u8 attacker_ability = battle_participants[bank_attacker].ability_id;
        static const u16 const mold_moves[] = {MOVE_PHOTON_GEYSER, MOVE_MOONGEIST_BEAM, MOVE_SUNSTEEL_STRIKE, 0xFFFF};
        if (!new_battlestruct->bank_affecting[bank_attacker].gastro_acided && 
		    !(!findability_in_table(battle_participants[bank].ability_id, forbidenabilitiestable2) && check_field_for_ability(ABILITY_NEUTRALIZING_GAS, 3, 0)) &&
			(attacker_ability == ABILITY_MOLD_BREAKER || attacker_ability == ABILITY_TERAVOLT ||
			 attacker_ability == ABILITY_TURBOBLAZE || find_move_in_table(current_move, mold_moves)))
            return false;
    }
    return true;
}

u8 check_field_for_ability(u8 ability, u8 side_to_ignore, u8 mold) 
{
    for (u8 i = 0; i < gBattlersCount; i++)
    {
        if (is_bank_present(i) && get_bank_side(i) != side_to_ignore && battle_participants[i].ability_id == ability && has_ability_effect(i, mold))
            return i + 1;
    }
    return 0;
}

u8 get_ally_ability(u8 bank, u8 mold) 
{
    u8 ally = bank ^ 2;  // Determina o aliado no formato de batalha dupla
    if (is_bank_present(ally) && has_ability_effect(ally, mold))
        return battle_participants[ally].ability_id;
    return 0;  // Retorna 0 caso o aliado não tenha uma habilidade válida ou não esteja presente
}

bool weather_abilities_effect(void)
{
    if (check_field_for_ability(ABILITY_CLOUD_NINE, 3, 0) || check_field_for_ability(ABILITY_AIR_LOCK, 3, 0))
        return false;
    else
        return true;
}

u16 get_forewarn_move(u8 bank) 
{
    u16 most_powerful_move = 0;
    s16 best_power = - 1;
    u8 banks_side = get_bank_side(bank);
    for (u8 i2 = 0; i2 < gBattlersCount; i2++) 
	{
        if (banks_side != get_bank_side(i2) && battle_participants[i2].current_hp) 
		{
            for (u8 i = 0; i < 4; i++) 
			{
                u16 curr_move = battle_participants[i2].moves[i];
                if (move_table[curr_move].base_power > best_power) 
				{
                    most_powerful_move = curr_move;
                    best_power = move_table[curr_move].base_power;
                } 
				else if (move_table[curr_move].base_power == best_power) 
				{
                    most_powerful_move = COIN_FLIP(most_powerful_move, curr_move);
                } 
				else if (move_table[curr_move].base_power == 1) 
				{
                    u16 curr_power;
                    if (move_table[curr_move].script_id == 70) //one hit ko moves
                        curr_power = 160;
                    else if (curr_move == MOVE_COUNTER || curr_move == MOVE_METAL_BURST || curr_move == MOVE_MIRROR_COAT)
                        curr_power = 120;
                    else 
					{
                        static const u16 forewarn_moves[] = {MOVE_CRUSH_GRIP, MOVE_DRAGON_RAGE, MOVE_ENDEAVOR,
                                MOVE_FLAIL, MOVE_REVERSAL, MOVE_FRUSTRATION, MOVE_GRASS_KNOT, MOVE_GYRO_BALL,
                                MOVE_HIDDEN_POWER, MOVE_LOW_KICK, MOVE_NATURAL_GIFT, MOVE_NIGHT_SHADE, MOVE_PSYWAVE,
                                MOVE_RETURN, MOVE_SEISMIC_TOSS, MOVE_SONIC_BOOM, MOVE_TRUMP_CARD, MOVE_WRING_OUT,
                                0xFFFF};
                        if (find_move_in_table(curr_move, forewarn_moves))
                            curr_power = 80;
                        else
                            curr_power = 1;
                    }
                    if (curr_power > best_power) 
					{
                        most_powerful_move = curr_move;
                        best_power = curr_power;
                    } else if (curr_power == best_power) 
					{
                        most_powerful_move = COIN_FLIP(most_powerful_move, curr_move);
                    }
                }
            }
        }
    }
    if (best_power == 0)
        return 0;
    else
        return most_powerful_move;
}

bool anticipation_shudder(u8 bank)
{
    u8 banks_side = get_bank_side(bank);
    for (u8 opposing = 0; opposing < gBattlersCount; opposing++)
    {
        if (banks_side != get_bank_side(opposing) && is_bank_present(opposing))
        {
            for (u8 i = 0; i < 4; i++)
            {
                u16 move = battle_participants[opposing].moves[i];
                if (move_table[move].script_id == 70) //one hit ko move check
                    return 1;
                if (move_table[move].base_power)
                {
                    if (apply_type_effectiveness(move, 64, move_table[move].type, bank, opposing, 0) > 64)
                        return 1;
                }
            }
        }
    }
    return 0;
}

static bool HP_half_drop(u8 bank)
{
    struct battle_participant* pok = &battle_participants[bank];
    u16 max_hp = pok->max_hp;
    u16 curr_hp = pok->current_hp;
    //curr hp must be less than 50%
    if (curr_hp < (max_hp / 2))
    {
        //poke had to have more than 50% of hp before taking the hit
        if ((hp_dealt + curr_hp) > (max_hp / 2))
            return 1;
    }
    return 0;
}

enum CastformForm castform_change(u8 bank)
{
    if (battle_participants[bank].species == POKE_CASTFORM)
    {
        enum CastformForm form = castform_form[bank];
        bool weather = weather_abilities_effect();
        bool forecast = check_ability(bank, ABILITY_FORECAST);
        //becomes normal if weather has no effect, doesnt have forecast or the weather doesnt make it possible to change
        if (form != CastformNormal && (!weather || !forecast || (!RAIN_WEATHER && !SUN_WEATHER && !HAIL_WEATHER)))
        {
            set_type(bank, TYPE_NORMAL);
            return CastformNormal;
        }
        //to become other types it has to have forecast and the weather has to be in effect
        if (forecast && weather)
        {
            //check fire
            if (form != CastformFire && SUN_WEATHER)
            {
                set_type(bank, TYPE_FIRE);
                return CastformFire;
            }
            //check water
            if (form != CastformWater && RAIN_WEATHER)
            {
                set_type(bank, TYPE_WATER);
                return CastformWater;
            }
            //check hail
            if (form != CastformIce && HAIL_WEATHER)
            {
                set_type(bank, TYPE_ICE);
                return CastformIce;
            }
        }
    }
    return CastformNoChange;
}

static void species_change(u8 bank, u16 new_species)
{
    battle_participants[bank].species = new_species;
    active_bank = bank;
    bb2_setattributes_in_battle(0, REQUEST_SPECIES_BATTLE, 0, 2, &battle_participants[bank].species);
    mark_buffer_bank_for_execution(bank);
}

enum CherrimForm cherrim_change(u8 bank)
{
    u16 species = battle_participants[bank].species;
    if (CHERRIM_ID(species) && not_impostered(bank)) 
    {
        bool weather = weather_abilities_effect();
        bool flowergift = check_ability(bank, ABILITY_FLOWER_GIFT);
        enum CherrimForm form = new_battlestruct->bank_affecting[bank].cherrim_form;
        //Check if needs to become normal form
        if (form != CherrimNormal && (!weather || !flowergift || !SUN_WEATHER))
        {
            species_change(bank, POKE_CHERRIM);
            return CherrimNormal;
        }
        //check if needs to become sun form
        if (form != CherrimSunny && weather && flowergift && SUN_WEATHER)
        {
            species_change(bank, POKE_CHERRIM_SUNSHINE);
            return CherrimSunny;
        }
    }
    return CherrimNoChange;
}

bool exec_cherrim_script(u8 bank, bool use_end3)
{
    enum CherrimForm form = cherrim_change(bank);
    if (form == CherrimNoChange) { return 0; }

    new_battlestruct->bank_affecting[bank].cherrim_form = form;
    new_battlestruct->bank_affecting[bank].transform_tid = get_attributes(get_bank_poke_ptr(bank), ATTR_TID, 0);
    battle_scripting.active_bank = bank;
    PiD_pbs[bank] = battle_participants[bank].pid;
    if (use_end3)
        bs_execute(BS_CHERRIMSWITCH_END3);
    else
    {
        bs_push_current(BS_CHERRIMSWITCH);
    }
    return 1;
}

bool exec_castform_script(u8 bank, bool use_end3)
{
    enum CastformForm form = castform_change(bank);
    if (form == CastformNoChange) { return 0; }

    battle_stuff_ptr->castform_switch_form = form;
    battle_scripting.active_bank = bank;
    if (use_end3)
        bs_execute(BS_CASTFORMSWITCH_END3);
    else
    {
        bs_push_current(BS_CASTFORMSWITCH);
    }
    return 1;
}

bool ability_try_status_effect(u16 move_effect, bool contact)
{
    if (contact && percent_chance(30))
    {
        new_battlestruct->move_effect.effect1 = move_effect;
        bs_push_current(BS_DEF_ABILITY_STATUS);
        hitmarker |= HITMAKRER_IGNORE_SAFEGUARD;
        return 1;
    }
    return 0;
}

u8 ability_battle_effects(u8 switch_id, u8 bank, u8 ability_to_check, u8 special_cases_argument, u16 move) 
{
    u8 effect = false;
    u16 curr_move;
    if (move > 0 && move < 622)
        curr_move = move;
    else
        curr_move = current_move;
    u8 move_type = get_attacking_move_type();

    if (special_cases_argument)
        gLastUsedAbility = special_cases_argument;
    else
        gLastUsedAbility = battle_participants[bank].ability_id;

    u8 bank_side = get_bank_side(bank);
    u8 common_effect = 0;
    void* script_ptr;
    u16 adder = 0;
    bool is_umbrella = get_item_effect(bank, 1) == ITEM_EFFECT_UTILITYUMBRELLA;
    switch (switch_id)
	{
        case 0: //switch-in ability activator
            if (special_cases_argument == 0xFF) 
			{
                if (!battle_flags.recorded_battle) 
				{
                    effect = load_weather_from_overworld();
                }
            } 
			else 
			{
				if(neutralizing_gas_leaving_field(1))
				{
					for(u8 i = 0; i < gBattlersCount; i++)
						if(!findability_in_table(battle_participants[i].ability_id, forbidenabilitiestable2))
							status3[i].switchinlock = 1;
				}
				else status3[bank].switchinlock = 1;
            }
            break;

        case 1: //end turn abilities
            if (!(battle_participants[bank].current_hp && has_ability_effect(bank, 0)))
                break;
            bank_attacker = bank;
            switch (gLastUsedAbility) 
			{
                case ABILITY_ICE_BODY:
                    if (weather_abilities_effect() && HAIL_WEATHER) 
					{
                        if (battle_participants[bank].current_hp < battle_participants[bank].max_hp &&
                            !new_battlestruct->bank_affecting[bank].heal_block) 
						{
                            bs_execute(BS_ABILITYHPCHANGE_END3);
                            damage_loc = get_1_16_of_max_hp(bank) * (-1);
                            effect = true;
                        }
                    }
                    break;
                case ABILITY_RAIN_DISH:
                    if (weather_abilities_effect() && RAIN_WEATHER && !is_umbrella) 
					{
                        if (battle_participants[bank].current_hp < battle_participants[bank].max_hp &&
                            !new_battlestruct->bank_affecting[bank].heal_block) 
						{
                            bs_execute(BS_ABILITYHPCHANGE_END3);
                            damage_loc = get_1_16_of_max_hp(bank) * (-1);
                            effect = true;
                        }
                    }

                    break;
                case ABILITY_DRY_SKIN:
                    if (weather_abilities_effect() && !is_umbrella) 
					{
                        if (RAIN_WEATHER) 
						{
                            if (battle_participants[bank].current_hp < battle_participants[bank].max_hp &&
                                !new_battlestruct->bank_affecting[bank].heal_block) 
							{
                                bs_execute(BS_ABILITYHPCHANGE_END3);
                                damage_loc = get_1_8_of_max_hp(bank) * (-1);
                                effect = true;
                            }
                        } 
						else if (SUN_WEATHER) 
						{
                            damage_loc = get_1_8_of_max_hp(bank);
                            bs_execute(BS_ABILITYHPCHANGE_END3);
                            effect = true;
                        }
                    }
                    break;
                case ABILITY_SOLAR_POWER:
                    if (weather_abilities_effect() && SUN_WEATHER && !is_umbrella) 
					{
                        damage_loc = get_1_8_of_max_hp(bank);
                        bs_execute(BS_ABILITYHPCHANGE_END3);
                        effect = true;
                    }
                    break;
                case ABILITY_HARVEST:
                    if (get_item_pocket_id(battle_stuff_ptr->used_held_items[bank]) == 4 &&
                        !battle_participants[bank].held_item) 
					{
                        if ((weather_abilities_effect() && SUN_WEATHER && !is_umbrella) || (rng() & 1)) 
						{
                            effect = true;
                            bs_execute(BS_HARVEST);
                        }
                    }
                    break;
                case ABILITY_HEALER: 
				{
                    u8 ally = bank ^2;
                    if (is_bank_present(ally) && battle_participants[ally].status.int_status && percent_chance(30)) 
					{
                        effect = true;
                        copy_status_condition_text(ally, 0);
                        bs_execute(BS_HEALER);
                        battle_scripting.active_bank = active_bank = ally;
                        battle_participants[ally].status.int_status = 0;
                        bb2_setattributes_in_battle(0, REQUEST_STATUS_BATTLE, 0, 4, &battle_participants[ally].status);
                        mark_buffer_bank_for_execution(ally);
                    }
                }
                    break;
                case ABILITY_PASTEL_VEIL:
                    if (is_bank_present(bank ^ 2) && (battle_participants[bank ^ 2].status.flags.poison || battle_participants[bank ^ 2].status.flags.toxic_poison)) 
                    {
                        effect = 1;
                        copy_status_condition_text(bank ^ 2, 0);
                        bs_execute(BS_PASTELVEIL_HEAL);
                        battle_scripting.active_bank = active_bank = bank ^ 2;
                        battle_participants[bank ^ 2].status.flags.poison = 0;
                        battle_participants[bank ^ 2].status.flags.toxic_poison = 0;						
                        bb2_setattributes_in_battle(0, REQUEST_STATUS_BATTLE, 0, 4, &battle_participants[bank ^ 2].status);
                        mark_buffer_bank_for_execution(bank ^ 2);	
                    }
                    break;
                case ABILITY_HYDRATION:
                    if (RAIN_WEATHER && weather_abilities_effect() && !is_umbrella)
                        common_effect = 1;
                    break;
                case ABILITY_SHED_SKIN:
                    if (__umodsi3(rng(), 3) == 0)
                        common_effect = 1;
                    break;
                case ABILITY_PICKUP:
                    if (!battle_participants[bank].held_item) 
					{
                        for (u8 i = 0; i < gBattlersCount; i++) 
						{
                            u16* used_held_item = &battle_stuff_ptr->used_held_items[i];
                            if (i != bank && *used_held_item &&
                                new_battlestruct->various.recently_used_item == *used_held_item) 
							{
                                effect = true;
                                bs_execute(BS_PICKUP);
                                battle_participants[bank].held_item = *used_held_item;
                                last_used_item = *used_held_item;
                                active_bank = bank;
                                bb2_setattributes_in_battle(0, 2, 0, 2, &battle_participants[bank].held_item);
                                mark_buffer_bank_for_execution(bank);
                                new_battlestruct->various.recently_used_item = 0;
                                *used_held_item = 0;
                                break;
                            }
                        }
                    }
                    break;
				case ABILITY_HONEY_GATHER:
				{
					u8 level = battle_participants[bank].level;
					u8 honey_chance;

					//Ajusta a chance de coleta de mel baseado no nível do Pokémon
					if (level < 10)
						honey_chance = 8;//2 chances em 32 (~6.25%)
					else if (level < 20)
						honey_chance = 4;//4 chances em 32 (~12.5%)
					else if (level < 30)
						honey_chance = 6;//6 chances em 32 (~18.75%)
					else if (level < 40)
						honey_chance = 8;//8 chances em 32 (~25%)
					else if (level < 50)
						honey_chance = 10;//10 chances em 32 (~31.25%)
					else
						honey_chance = 12;//12 chances em 32 (~37.5%)

					 //Verifica se a chance é suficiente para coletar mel
					if (honey_chance >= (rng() % 32))
					{
						effect = true;
						add_bag_item(104, 1);//Adiciona o item Mel diretamente à bolsa
						last_used_item = 104;
						bs_execute(BS_HONEY);//Executa o script de coleta
					}
				}
				break;
                case ABILITY_BAD_DREAMS:
                    effect = true;
                    battle_stuff_ptr->intimidate_user = bank;
                    bs_execute(BAD_DREAMS_BS);
                    break;

                case ABILITY_SPEED_BOOST:
                    if (battle_participants[bank].spd_buff != 0xC && disable_structs[bank].is_first_turn != 2) 
					{
                        effect = 1;
                        battle_scripting.stat_changer = 0x10 | STAT_SPD;
                        bs_execute(BS_ATK_ABILITY_CHANGES_ATK_STAT_END3);
                    }
                    break;
                case ABILITY_TRUANT:
                    disable_structs[bank].truant_counter ^= 0x80;
                    break;				
                case ABILITY_MOODY: 
				{
                    u8 raiseable_stats = 0;
                    u8 lowerable_stats = 0;
                    u8* stat_ptr = &battle_participants[bank].atk_buff;
                    for (u8 i = 0; i < 7; i++) 
					{
                        if (*(stat_ptr + i) != 0xC)
                            raiseable_stats |= BIT_GET(i);
                        if (*(stat_ptr + i) != 0)
                            lowerable_stats |= BIT_GET(i);
                    }
                    if (raiseable_stats || lowerable_stats) 
					{
                        effect = true;
                        bs_execute(BS_MOODY);
                        new_battlestruct->various.var1 = 0;
                        new_battlestruct->various.var2 = 0;
                        while (raiseable_stats != 0) 
						{
                            u8 rand_stat = __umodsi3(rng(), 7);
                            if (raiseable_stats & BIT_GET(rand_stat)) 
							{
                                new_battlestruct->various.var1 = 0x21 + rand_stat;
                                lowerable_stats = BIC(lowerable_stats, BIT_GET(rand_stat));
                                break;
                            }
                        }
                        while (lowerable_stats != 0) 
						{
                            u8 rand_stat = __umodsi3(rng(), 7);
                            if (lowerable_stats & BIT_GET(rand_stat)) 
							{
                                new_battlestruct->various.var2 = 0x91 + rand_stat;
                                break;
                            }
                        }
                    }
                }
                    break;
            }
            if (common_effect && battle_participants[bank].status.int_status) 
			{
                battle_participants[bank].status2.nightmare = 0;
                effect = true;
                copy_status_condition_text(bank, 0);
                script_ptr = (void*) 0x082DB484;
                bs_execute(script_ptr);
                active_bank = bank;
                battle_scripting.active_bank = bank;
                battle_participants[bank].status.int_status = 0;
                bb2_setattributes_in_battle(0, 0x28, 0, 4, &battle_participants[bank].status);
                mark_buffer_bank_for_execution(bank);
            }
            break;
        case 2: //abilities that affect certain moves
            if (!has_ability_effect(bank, 1))
                break;
            const u16* table_ptr = NULL;
            switch (gLastUsedAbility) 
			{
                case ABILITY_SOUNDPROOF:
                    table_ptr = sound_moves;
                    break;
                case ABILITY_BULLETPROOF:
                    table_ptr = ball_bomb_moves;
                    break;
                case ABILITY_OVERCOAT:
                    table_ptr = powder_moves;
                    break;
            }
            if (table_ptr != NULL && find_move_in_table(current_move, table_ptr)) 
			{
                effect = true;
                move_outcome.not_affected = 1;
                battlescripts_curr_instruction = (void*) 0x082DB61F;
                if (battle_participants[bank_attacker].status2.multiple_turn_move) 
				{
                    hitmarker |= 0x800;
                }
            }
            break;
        case 3: //abilities that affect type except telepathy
            if (curr_move && bank != bank_attacker && has_ability_effect(bank, 1)) 
			{
                if (protect_structs[bank_attacker].flag2_notfirststrike)
                    adder = 1;
                u8 stat = 0;

                switch (gLastUsedAbility) 
				{
                    case ABILITY_TELEPATHY:
                        if ((bank == (bank_attacker ^ 2)) && is_bank_present(bank) && DAMAGING_MOVE(curr_move)) 
						{
                            effect = true;
                            battlescripts_curr_instruction = (BS_TELEPATHY) + adder;
                        }
                        break;
                    case ABILITY_WATER_ABSORB:
                    case ABILITY_DRY_SKIN:
                        if (move_type == TYPE_WATER)
                            common_effect = 1;
                        break;
                    case ABILITY_VOLT_ABSORB:
                        if (move_type == TYPE_ELECTRIC)
                            common_effect = 1;
                        break;
                    case ABILITY_FLASH_FIRE:
                        if (move_type == TYPE_FIRE) 
						{
                            effect = 1;
                            battle_resources->ability_flags_ptr->flags_ability[bank].flag1_flashfire = 1;
                            script_ptr = (void*) 0x082DB5A7;
                            script_ptr += adder;
                            battlescripts_curr_instruction = script_ptr;
                        }
                        break;
                    case ABILITY_LIGHTNING_ROD:
                        if (move_type == TYPE_ELECTRIC) 
						{
                            common_effect = 2;
                            stat = STAT_SP_ATK;
                        }
                        break;
                    case ABILITY_STORM_DRAIN:
                        if (move_type == TYPE_WATER) 
						{
                            common_effect = 2;
                            stat = STAT_SP_ATK;
                        }
                        break;
                    case ABILITY_SAP_SIPPER:
                        if (move_type == TYPE_GRASS) 
						{
                            common_effect = 2;
                            stat = STAT_ATTACK;
                        }
                        break;
                    case ABILITY_MOTOR_DRIVE:
                        if (move_type == TYPE_ELECTRIC) 
						{
                            common_effect = 2;
                            stat = STAT_SPD;
                        }
                        break;
                }
                if (common_effect == 1) 
				{
                    if (FULL_HP(bank) || new_battlestruct->bank_affecting[bank].heal_block)
                        script_ptr = (void*) 0x082DB591;
                    else 
					{
                        script_ptr = (void*) 0x082DB56E;
                        damage_loc = get_1_4_of_max_hp(bank) * (-1);
                    }
                    script_ptr += adder;
                    battlescripts_curr_instruction = script_ptr;
                    effect = true;
                } 
				else if (common_effect == 2) 
				{
                    if (can_change_stat(bank, 1, 0x10 + stat))
                        script_ptr = BS_IMMUNESTATRAISE_ABILITY;
                    else
                        script_ptr = BS_IMMUNE_ABILITY;
                    effect = true;
                    battlescripts_curr_instruction = script_ptr + adder;
                }
            }
            break;
        case 4: //move end turn abilities
            if (has_ability_effect(bank, 0) && MOVE_WORKED && (special_statuses[bank_target].moveturn_losthp) &&
                battle_participants[bank_attacker].current_hp) 
				{
                u16 curr_hp = battle_participants[bank].current_hp;
                u8 contact = does_move_make_contact(curr_move, bank_attacker);
                switch (gLastUsedAbility) 
				{
                    case ABILITY_STATIC:
                    ENDTURN_PARALYZE:
                        if (!cant_become_paralyzed(bank_attacker, 0))
                            effect = ability_try_status_effect(MOVEEFFECT_PRLZ | MOVEEFFECT_AFFECTSUSER, contact);
                        break;
                    case ABILITY_FLAME_BODY:
                        if (!cant_become_burned(bank_attacker, 0))
                            effect = ability_try_status_effect(MOVEEFFECT_BRN | MOVEEFFECT_AFFECTSUSER, contact);
                        break;
                    case ABILITY_POISON_POINT:
                    ENDTURN_PSN:
                        if (!cant_poison(bank_target, bank_attacker, 0))
                            effect = ability_try_status_effect(MOVEEFFECT_PSN | MOVEEFFECT_AFFECTSUSER, contact);
                        break;
                    case ABILITY_EFFECT_SPORE:
                        if (!is_of_type(bank_attacker, TYPE_GRASS) && !check_ability(bank_attacker, ABILITY_OVERCOAT) &&
                            get_item_effect(bank_attacker, 1) != ITEM_EFFECT_SAFETYGOOGLES) //add safety goggles check
                        {
                            switch (__umodsi3(rng(), 3)) 
							{
                                case 0:
                                    goto ENDTURN_PARALYZE;
                                case 1:
                                    goto ENDTURN_PSN;
                                default:
                                    if (!cant_fall_asleep(bank_attacker, 0))
                                        effect = ability_try_status_effect(MOVEEFFECT_SLP | MOVEEFFECT_AFFECTSUSER,
                                                contact);
                            }
                        }
                        break;
                    case ABILITY_AFTERMATH:
                        if (battle_participants[bank_attacker].current_hp && curr_hp == 0 && contact &&
                            !(ability_battle_effects(0x13, 0, ABILITY_DAMP, 0, 0)) && !check_ability(bank_attacker, ABILITY_MAGIC_GUARD)) 
						{
                            damage_loc = get_1_4_of_max_hp(bank_attacker);
                            effect = true;
                            bs_push_current(BS_AFTERMATH);
                        }
                        break;					
                    case ABILITY_INNARDS_OUT:
                        if (curr_hp == 0 && not_magicguard(bank_attacker)) 
						{
                            damage_loc = hp_dealt;
                            effect = true;
                            bs_push_current(BS_AFTERMATH);
                        }
                        break;
					case ABILITY_MUMMY:
						{
							u8 ability = battle_participants[bank_attacker].ability_id;
							if (contact)
							{
								switch(ability)
								{
								case ABILITY_MUMMY:
								case ABILITY_STANCE_CHANGE:
								case ABILITY_MULTITYPE:
								case ABILITY_SCHOOLING:
								case ABILITY_BATTLE_BOND:
								case ABILITY_SHIELDS_DOWN:
								case ABILITY_RKS_SYSTEM:
									break;
								case ABILITY_DISGUISE:
									if(battle_participants[bank_attacker].species == POKE_MIMIKYU)
										break;
									default:
										effect = true;
										battle_participants[bank_attacker].ability_id = ABILITY_MUMMY;
										new_battlestruct->various.active_bank = bank_attacker;
										check_weather_trio(); //Weather Trio
										bs_push_current(BS_MUMMY);
								}
							}
						}
						break;
                    case ABILITY_WANDERING_SPIRIT: 
					{
                        u8 ability = battle_participants[bank_attacker].ability_id;
                        if (contact) 
						{
                            switch (ability) 
							{
								case ABILITY_BATTLE_BOND:
								case ABILITY_COMATOSE:
								case ABILITY_FLOWER_GIFT:
								case ABILITY_FORECAST:
								case ABILITY_ILLUSION:
								case ABILITY_MULTITYPE:
								case ABILITY_NEUTRALIZING_GAS:
								case ABILITY_POWER_OF_ALCHEMY:
								case ABILITY_RECEIVER:
								case ABILITY_RKS_SYSTEM:
								case ABILITY_SCHOOLING:
								case ABILITY_SHIELDS_DOWN:
								case ABILITY_STANCE_CHANGE:
								case ABILITY_WONDER_GUARD:
								case ABILITY_ZEN_MODE:
                                    break;
                                case ABILITY_DISGUISE:
                                    if (battle_participants[bank_attacker].species == POKE_MIMIKYU)
                                        break;
                                default:
                                    effect = true;
                                    battle_participants[bank].ability_id = ability;										
                                    battle_participants[bank_attacker].ability_id = ABILITY_WANDERING_SPIRIT;		
									check_weather_trio(); //Weather Trio
									new_battlestruct->various.abilityswitch_atkbank = bank_attacker;
									new_battlestruct->various.abilityswitch_defbank = bank_target;
                                    bs_push_current(BS_WANDERING_SPIRIT);									
                            }
                        }
                    }
                        break;
                    case ABILITY_CURSED_BODY:
                        if (!disable_structs[bank_attacker].disabled_move && percent_chance(30) &&
                            !check_field_for_ability(ABILITY_AROMA_VEIL, bank_side, 0)) 
						{
                            disable_structs[bank_attacker].disabled_move = curr_move;
                            disable_structs[bank_attacker].disable_timer = 3;
                            bs_push_current(BS_CURSEDBODY);
                            effect = true;
                        }
                        break;
                    case ABILITY_PERISH_BODY:	
                        if (contact && !disable_structs[bank_attacker].perishsong_timer) 
						{
                            bs_push_current(BS_PERISHBODY);
                            effect = true;
                        }
                        break;						
                    case ABILITY_ROUGH_SKIN:
                    case ABILITY_IRON_BARBS:
                        if (contact && not_magicguard(bank_attacker)) 
						{
                            damage_loc = get_1_8_of_max_hp(bank_attacker);
                            effect = true;
                            bs_push_current(BS_ROUGHSKIN);
                        }
                        break;
                    case ABILITY_GOOEY:
                    case ABILITY_TANGLING_HAIR:
                        if (contact && battle_participants[bank_attacker].spd_buff != 0) 
						{
                            effect = true;
                            bs_push_current(BS_DEF_ABILITY_CHANGES_ATK_STAT);
                            battle_scripting.stat_changer = 0x93;
                        }
                        break;				
                    case ABILITY_RATTLED:
                        if (curr_hp && battle_participants[bank].spd_buff != 0xC &&
                            (move_type == TYPE_BUG || move_type == TYPE_DARK || move_type == TYPE_GHOST)) 
						{
                            effect = true;
                            bs_push_current(BS_DEF_ABILITY_CHANGES_DEF_STAT);
                            battle_scripting.stat_changer = 0x13;
                        }
                        break;
                    case ABILITY_JUSTIFIED:
                        if (curr_hp && battle_participants[bank].atk_buff != 0xC && move_type == TYPE_DARK) 
						{
                            effect = true;
                            bs_push_current(BS_DEF_ABILITY_CHANGES_DEF_STAT);
                            battle_scripting.stat_changer = 0x11;
                        }
                        break;
                    case ABILITY_STEADFAST:
                        if (curr_hp && battle_participants[bank].spd_buff != 0xC &&
                            battle_participants[bank].status2.flinched) 
						{
                            effect = true;
                            bs_push_current(BS_DEF_ABILITY_CHANGES_DEF_STAT);
                            battle_scripting.stat_changer = 0x13;
                        }
                        break;
                    case ABILITY_ANGER_POINT:
                        if (curr_hp && crit_loc == 2 && special_statuses[bank].moveturn_losthp &&
                            battle_participants[bank].atk_buff != 0xC) 
						{
                            effect = true;
                            bs_push_current(BS_ANGERPOINT);
                            battle_participants[bank].atk_buff = 0xC;
                        }
                        break;
                    case ABILITY_WEAK_ARMOR:
                        if (curr_hp && special_statuses[bank].moveturn_losthp_physical &&
                            (battle_participants[bank].def_buff > 0 || battle_participants[bank].spd_buff != 0xC)) 
						{
                            effect = true;
                            bs_push_current(BS_WEAK_ARMOR);
                            new_battlestruct->various.active_bank = bank;
                        }
                        break;
                    case ABILITY_CUTE_CHARM:
                        if (curr_hp && !check_ability(bank_attacker, ABILITY_OBLIVIOUS) && percent_chance(30) &&
                            contact && !check_field_for_ability(ABILITY_AROMA_VEIL, bank_side, 0)) 
						{
                            u8 target_gender = gender_from_pid(battle_participants[bank].species,
                                    battle_participants[bank].pid);
                            u8 attacker_gender = gender_from_pid(battle_participants[bank_attacker].species,
                                    battle_participants[bank_attacker].pid);
                            if (target_gender != attacker_gender && target_gender != 0xFF && attacker_gender != 0xFF &&
                                ((battle_participants[bank_attacker].status2.in_love & bits_table[bank_target]) == 0)) 
							{
                                effect = true;
                                battle_participants[bank_attacker].status2.in_love |= bits_table[bank];
                                bs_push_current(BS_CUTECHARM);
                            }
                        }
                        break;
                    case ABILITY_STAMINA:
                        if (curr_hp && battle_participants[bank].def_buff != 0xC) 
						{
                            effect = true;
                            bs_push_current(BS_DEF_ABILITY_CHANGES_DEF_STAT);
                            battle_scripting.stat_changer = 0x12;
                        }
                        break;
                    case ABILITY_WATER_COMPACTION:
                        if (curr_hp && battle_participants[bank].def_buff != 0xC && move_type == TYPE_WATER) 
						{
                            effect = true;
                            bs_push_current(BS_DEF_ABILITY_CHANGES_DEF_STAT);
                            battle_scripting.stat_changer = 0x22;
                        }
                        break;												
                    case ABILITY_BERSERK:
                        if (curr_hp && battle_participants[bank].sp_atk_buff != 0xC && HP_half_drop(bank) &&
                            !new_battlestruct->various.sheerforce_bonus
                            && multihit_counter <= 1) 
						{
                            effect = true;
                            bs_push_current(BS_DEF_ABILITY_CHANGES_DEF_STAT);
                            battle_scripting.stat_changer = 0x14;
                        }
                        break;
                }			
            }
            break;
        case 5: //status immunities
            for (u8 i = 0; i < gBattlersCount; i++) 
			{
                if (has_ability_effect(i, 0)) 
				{
                    switch (battle_participants[i].ability_id) 
					{
                        case ABILITY_LIMBER:
                            if (battle_participants[i].status.flags.paralysis)
                                common_effect = 1;
                            break;
                        case ABILITY_MAGMA_ARMOR:
                            if (battle_participants[i].status.flags.freeze)
                                common_effect = 1;
                            break;
                        case ABILITY_PASTEL_VEIL:
						case ABILITY_IMMUNITY:
                            if (battle_participants[i].status.flags.poison ||
                                battle_participants[i].status.flags.toxic_poison)
                                common_effect = 1;
                            break;
                        case ABILITY_WATER_VEIL:
                        case ABILITY_WATER_BUBBLE:
                            if (battle_participants[i].status.flags.burn)
                                common_effect = 1;
                            break;
                        case ABILITY_INSOMNIA:
                        case ABILITY_VITAL_SPIRIT:
                            if (battle_participants[i].status.flags.sleep) 
							{
                                common_effect = 1;
                                battle_participants[i].status2.nightmare = 0;
                            }
                            break;
                        case ABILITY_OBLIVIOUS:
                            if (battle_participants[i].status2.in_love) 
							{
                                battle_participants[i].status2.in_love = 0;
                                strcpy_xFF_terminated_0(battle_text_buff1, (const u8*) 0x0831BCA0);
                                effect = true;
                            }
                            break;
                        case ABILITY_OWN_TEMPO:
                            if (battle_participants[i].status2.confusion) 
							{
                                battle_participants[i].status2.confusion = 0;
                                strcpy_xFF_terminated_0(battle_text_buff1, (const u8*) 0x0831BC98);
                                effect = true;
                            }
                            break;
                    }
                    if (common_effect) 
					{
                        copy_status_condition_text(i, 0);
                        battle_participants[i].status.int_status = 0;
                        effect = true;
                        bs_push_current((void*) 0x082DB68C);
                        battle_scripting.active_bank = active_bank = i;
                        bb2_setattributes_in_battle(0, REQUEST_STATUS_BATTLE, 0, 4, &battle_participants[i].status);
                        mark_buffer_bank_for_execution(active_bank);
                        break;
                    }
                    if (effect)
                        break;
                }
            }
            break;
        case 6: //check weather trio, castform and cherrim
			check_weather_trio();
            for (u8 i = 0; i < gBattlersCount; i++) 
			{
                if ((effect = exec_castform_script(i, 1)))
                    break;
                else if ((effect = exec_cherrim_script(i, 1)))
                    break;
            }
            break;
        case 7: //target's synchronize
            adder = MOVEEFFECT_AFFECTSUSER;
        case 8: //attacker's synchronize after static etc.
        {
            struct move_effects* Synchro = &new_battlestruct->move_effect;
            if (check_ability(bank, ABILITY_SYNCHRONIZE) && Synchro->synchro_effect[bank]) 
			{
                effect = true;
                hitmarker &= 0xFFFFBFFF;
                Synchro->effect1 = Synchro->synchro_effect[bank] | adder;
                Synchro->synchro_effect[bank] = 0;
                battle_scripting.active_bank = bank;
                bs_push_current(BS_SYNCHRONIZE);
                hitmarker |= 0x2000;
            }
        }
            break;
        case 9: // switch-in abilities executor
            for (u8 k = 0; k < gBattlersCount; k++) 
			{
                if (status3[turn_order[k]].switchinlock) 
				{
                    status3[turn_order[k]].switchinlock = 0;
                    if (handle_primal_reversion(turn_order[k])) 
					{
                        effect = 1;
                        break;
                    }
                    status3[turn_order[k]].innerswitchinlock = 1;
                    effect = ability_battle_effects(24, turn_order[k], 0, 0, 0);
                    if (effect) 
					{
                        break;
                    }
                }
            }
            break;
        case 10:
            if (has_ability_effect(bank, 0) && MOVE_WORKED
                && battle_participants[bank_attacker].current_hp && (special_statuses[bank_target].moveturn_losthp)) 
			{
                u8 contact = does_move_make_contact(curr_move, bank_attacker);
                switch (gLastUsedAbility) 
				{
                    case ABILITY_MAGICIAN:
                        if (current_move == MOVE_DOOM_DESIRE || current_move == MOVE_FUTURE_SIGHT
                            || check_ability(bank_target, ABILITY_STICKY_HOLD))
                            break;
                        if (can_lose_item(bank_target, 1, 0) && try_stealing_bank_item(bank_attacker, bank_target)) 
						{
                            bs_push_current(BS_MAGICIAN);
                            effect = true;
                            bank_partner_def = bank_target; //for animation
                        }
                        break;
                    case ABILITY_POISON_TOUCH:
                        if (battle_participants[bank_target].current_hp && contact &&
                            !cant_poison(bank, bank_target, 0) && percent_chance(30)) 
						{
                            new_battlestruct->move_effect.effect1 = MOVEEFFECT_PSN;
                            bs_push_current(BS_ATK_ABILITY_STATUS);
                            effect = true;
                        }
                        break;
                    case ABILITY_STENCH:
                        if (contact && percent_chance(10)) //todo later
                        {
                        }
                        break;
                }
            }
            break;
        case 12: //check opposing field for ability
            effect = check_field_for_ability(ability_to_check, bank_side, special_cases_argument);
            break;
        case 13: //check bank field for ability
            effect = check_field_for_ability(ability_to_check, bank_side ^ 1, special_cases_argument);
            break;
        case 14: //check whole field for ability
        case 19:
            effect = check_field_for_ability(ability_to_check, 3, special_cases_argument);
            break;
        case 15: //check field except the bank
            for (u8 i = 0; i < gBattlersCount; i++) 
			{
                if (battle_participants[i].ability_id == ability_to_check && i != bank &&
                    has_ability_effect(i, special_cases_argument)) 
				{
                    effect = i + 1;
                    gLastUsedAbility = ability_to_check;
                    break;
                }
            }
            break;
        case 16: //count instances of ability in the opponent field
            for (u8 i = 0; i < gBattlersCount; i++) 
			{
                if (get_bank_side(i) != bank_side && battle_participants[i].ability_id == ability_to_check &&
                    has_ability_effect(i, special_cases_argument)) 
				{
                    effect++;
                    gLastUsedAbility = ability_to_check;
                }
            }
            break;
        case 17: //count instances of ability in the banks field
            for (u8 i = 0; i < gBattlersCount; i++) 
			{
                if (get_bank_side(i) == bank_side && battle_participants[i].ability_id == ability_to_check &&
                    has_ability_effect(i, special_cases_argument)) 
				{
                    effect++;
                    gLastUsedAbility = ability_to_check;
                }
            }
            break;
        case 18: //count instances of ability except bank
            for (u8 i = 0; i < gBattlersCount; i++) 
			{
                if (i != bank_side && battle_participants[i].ability_id == ability_to_check &&
                    has_ability_effect(i, special_cases_argument)) 
				{
                    effect++;
                    gLastUsedAbility = ability_to_check;
                }
            }
            break;
        case 20: //check ally
            if (get_ally_ability(bank, special_cases_argument) == ability_to_check) 
			{
                effect = (bank ^ 2);
                gLastUsedAbility = ability_to_check;
            }
            break;
        case 21: // color change
            if (check_ability(bank, ABILITY_COLOR_CHANGE) && curr_move != MOVE_STRUGGLE &&
                battle_participants[bank].current_hp && MOVE_WORKED && TARGET_TURN_DAMAGED &&
                !new_battlestruct->various.sheerforce_bonus && !is_of_type(bank, move_type)) 
			{
                battle_text_buff1[0] = 0xFD;
                battle_text_buff1[1] = 0x3;
                battle_text_buff1[2] = move_type;
                battle_text_buff1[3] = 0xFF;
                effect = true;
                bs_push_current((void*) 0x082DB64D);
                set_type(bank, move_type);
            }
            break;
        case 22:
            if (check_ability(bank, ABILITY_PICKPOCKET) && MOVE_WORKED && TARGET_TURN_DAMAGED &&
                battle_participants[bank].current_hp) 
			{
                if (!does_move_make_contact(curr_move, bank_attacker) || (new_battlestruct->various.sheerforce_bonus))
                    break;
                if (can_lose_item(bank_attacker, 1, 0) && try_stealing_bank_item(bank, bank_attacker)) 
				{
                    bs_push_current(BS_PICKPOCKET);
                    effect = true;
                }
            }
            break;
        case 23: //emergency exit, wimp out
            if ((gLastUsedAbility == ABILITY_WIMP_OUT || gLastUsedAbility == ABILITY_EMERGENCY_EXIT) &&
                HP_half_drop(bank) && !new_battlestruct->various.sheerforce_bonus && multihit_counter <= 1 &&
                special_statuses[bank].moveturn_losthp && !protect_structs[bank].flag1_confusion_self_damage)
                effect = item_force_switching(bank, BS_WIMPOUT,0);
            break;
        case 24: //switch ability per bank

            if (status3[bank].innerswitchinlock && has_ability_effect(bank, 0)) 
			{
                switch (gLastUsedAbility) 
				{                    
					case ABILITY_MOLD_BREAKER:
                        battle_communication_struct.multistring_chooser = 0;
                    MOLDBREAKER_MSG:
                        script_ptr = BS_MOLDBREAKER;
                        common_effect = 1;
                        break;
                    case ABILITY_TURBOBLAZE:
                        battle_communication_struct.multistring_chooser = 1;
                        goto MOLDBREAKER_MSG;
                    case ABILITY_TERAVOLT:
                        battle_communication_struct.multistring_chooser = 2;
                        goto MOLDBREAKER_MSG;
                    case ABILITY_PRESSURE:
                        script_ptr = BS_PRESSURE;
                        common_effect = 1;
                        break;
                    case ABILITY_AURA_BREAK:
                        script_ptr = BS_AURABREAK;
                        common_effect = 1;
                        break;
                    case ABILITY_FAIRY_AURA:
                        script_ptr = BS_FAIRYAURA;
                        common_effect = 1;
                        break;
                    case ABILITY_DARK_AURA:
                        script_ptr = BS_DARKAURA;
                        common_effect = 1;
                        break;
                    case ABILITY_UNNERVE:
                        bank_attacker = bank;
                        bank_target = bank ^ 1;
                        bs_execute(BS_UNNERVE);
                        effect = 1;
                        break;
					case ABILITY_SCREEN_CLEANER:
				        effect = 1;	
						bank_attacker = bank;
                        bs_execute(BS_SCREEN_ClEANER);
						break;							
                    case ABILITY_DOWNLOAD: 
					{
                        u16 def_sum = 0;
                        u16 spdef_sum = 0;
                        for (u8 i = 0; i < gBattlersCount; i++) 
						{
                            if (i != bank && bank_side != get_bank_side(i) && is_bank_present(i)) 
							{
                                def_sum += battle_participants[i].def;
                                spdef_sum += battle_participants[i].sp_def;
                            }
                        }
                        if (spdef_sum == def_sum) def_sum += rng() & 1;
                        if (spdef_sum >= def_sum)
                            battle_scripting.stat_changer = 0x11;
                        else
                            battle_scripting.stat_changer = 0x14;
                        if (spdef_sum || def_sum) 
						{
                            effect = 1;
                            bank_attacker = bank;
                            bs_execute(BS_DOWNLOAD);
                        }

                    }
                        break;
                    case ABILITY_DROUGHT:
                        if (!(SUN_WEATHER || battle_weather.flags.heavy_rain || battle_weather.flags.air_current)) 
						{
                            effect = true;
                            battle_weather.int_bw = weather_sun;
                            if (get_item_effect(bank, true) == ITEM_EFFECT_HEATROCK)
                                battle_effects_duration.weather_dur = 8;
                            else
                            battle_effects_duration.weather_dur = 5;
                            bs_execute(BS_DROUGHT);
                            battle_scripting.active_bank = bank;
                        }
                        break;
                    case ABILITY_DRIZZLE:
                        if (!(RAIN_WEATHER || battle_weather.flags.harsh_sun || battle_weather.flags.air_current)) 
						{
                            effect = true;
                            battle_weather.int_bw = weather_rain;
                            if (get_item_effect(bank, true) == ITEM_EFFECT_DAMPROCK)
                                battle_effects_duration.weather_dur = 8;
                            else
                                battle_effects_duration.weather_dur = 5;

                            bs_execute(BS_DRIZZLE);
                            battle_scripting.active_bank = bank;
                        }
                        break;
                    case ABILITY_SAND_STREAM:
                        if (!(SANDSTORM_WEATHER || battle_weather.flags.harsh_sun || battle_weather.flags.heavy_rain || battle_weather.flags.air_current)) 
						{
                            effect = true;
                            battle_weather.int_bw = weather_sandstorm;
                            if (get_item_effect(bank, true) == ITEM_EFFECT_SMOOTHROCK)
                                battle_effects_duration.weather_dur = 8;
                            else
                                battle_effects_duration.weather_dur = 5;

                            bs_execute(BS_SANDSTREAM);
                            battle_scripting.active_bank = bank;
                        }
                        break;
                    case ABILITY_SNOW_WARNING:
                        if (!(HAIL_WEATHER || battle_weather.flags.harsh_sun || battle_weather.flags.heavy_rain || battle_weather.flags.air_current)) 
						{
                            effect = true;
                            battle_weather.int_bw = weather_hail;
                            if (get_item_effect(bank, true) == ITEM_EFFECT_ICYROCK)
                                battle_effects_duration.weather_dur = 8;
                            else
                                battle_effects_duration.weather_dur = 5;

                            bs_execute(BS_SNOWWARNING);
                            battle_scripting.active_bank = bank;
                        }
                        break;
                    case ABILITY_DESOLATE_LAND:
                        if (!(battle_weather.flags.harsh_sun)) 
						{
                            effect = true;
                            battle_weather.int_bw = weather_harsh_sun; //| weather_permament_sun;
                            bs_execute(BS_DESOLATELAND);
                            battle_scripting.active_bank = bank;
                        }
                        break;
                    case ABILITY_PRIMORDIAL_SEA:
                        if (!(battle_weather.flags.heavy_rain)) 
						{
                            effect = true;
                            battle_weather.int_bw = weather_heavy_rain; //| weather_permament_rain;
                            bs_execute(BS_PRIMORDIALSEA);
                            battle_scripting.active_bank = bank;
                        }
                        break;
                    case ABILITY_DELTA_STREAM:
                        if (!(battle_weather.flags.air_current)) 
						{
                            effect = true;
                            battle_weather.int_bw = weather_air_current;
                            bs_execute(BS_DELTASTREAM);
                            battle_scripting.active_bank = bank;
                        }
                        break;
                    case ABILITY_FRISK: 
					{
                        effect = true;
                        battle_stuff_ptr->intimidate_user = bank;
                        bs_execute(FRISK_BS);
                    }
                        break;
                    case ABILITY_FOREWARN: 
					{
                        u16 best_move = get_forewarn_move(bank);
                        if (best_move) 
						{
                            effect = true;
                            u8 forewarn_bank = bank ^1;
                            if (get_move_position(forewarn_bank, best_move) == -1)
                                forewarn_bank ^= 2;
                            record_usage_of_move(forewarn_bank, best_move);
                            battle_scripting.active_bank = bank;
                            bank_partner_def = forewarn_bank;
                            bs_execute(BS_FOREWARN);
                            move_to_buff1(best_move);
                        }
                    }
                        break;
                    case ABILITY_ANTICIPATION:
                        if (anticipation_shudder(bank)) 
						{
                            effect = true;
                            battle_scripting.active_bank = bank;
                            bs_execute(BS_ANTICIPATION);
                        }
                        break;
                    case ABILITY_IMPOSTER: 
					{
                        u8 opposing_bank = bank ^1;
                        if (is_bank_present(opposing_bank) && !battle_participants[opposing_bank].status2.transformed &&
                            !battle_participants[bank].status2.transformed) 
						{
                            effect = 1;
                            bs_execute(BS_IMPOSTER);
                            new_battlestruct->various.active_bank = bank;
                            current_move = MOVE_TRANSFORM;
                            bank_attacker = bank;
                            bank_target = opposing_bank;
                        }
                    }
                        break;
                    case ABILITY_INTIMIDATE:
                        bs_execute(BS_INTIMIDATE);
                        battle_stuff_ptr->intimidate_user = bank_attacker = bank;
                        effect = true;
                        break;
                    case ABILITY_TRACE: 
					{
                        active_bank = bank ^ 1;
                        bool bank1exists = is_bank_present(active_bank) && !findability_in_table(battle_participants[active_bank].ability_id, forbidenabilitiestable3);
                        if (battle_flags.double_battle) 
						{
                            bool bank2exists = is_bank_present(active_bank ^ 2) && !findability_in_table(battle_participants[active_bank ^ 2].ability_id, forbidenabilitiestable3);
                            if (!bank1exists && !bank2exists)
                                break;
                            else if (!bank1exists && bank2exists)
                                active_bank = active_bank ^ 2;
							else if (bank1exists && !bank2exists)
								active_bank = active_bank;
							else if (COIN_FLIP(0, 1))
								active_bank = active_bank ^ 2;
                        }
						else if (!bank1exists)
                            break;
                        gLastUsedAbility = battle_participants[active_bank].ability_id;
                        if (!gLastUsedAbility || gLastUsedAbility == ABILITY_TRACE)
                            break;
                        script_ptr = BS_TRACE;
                        bs_execute(script_ptr);
                        battle_participants[bank].ability_id = gLastUsedAbility;
                        battle_scripting.active_bank = bank;
                        new_battlestruct->various.active_bank = bank;
						new_battlestruct->various.trace_activating = 1;//avoiding loop in neutralizing_gas leaving
                        battle_stuff_ptr->intimidate_user = bank;
                        battle_text_buff1[0] = 0xFD;
                        battle_text_buff1[1] = 0x4;
                        battle_text_buff1[2] = active_bank;
                        battle_text_buff1[3] = battle_team_id_by_side[active_bank];
                        battle_text_buff1[4] = 0xFF;
                        battle_text_buff2[0] = 0xFD;
                        battle_text_buff2[1] = 0x9;
                        battle_text_buff2[2] = gLastUsedAbility;
                        battle_text_buff2[3] = 0xFF;
                        effect = true;
                        break;
                    }
                    case ABILITY_AIR_LOCK:
                    case ABILITY_CLOUD_NINE:
                        effect = 1;
                        bank_attacker = bank;
                        bs_execute(BS_AIRLOCK);
                        break;
                    case ABILITY_FLOWER_GIFT:
                        effect = exec_cherrim_script(bank, 1);
                        break;
                    case ABILITY_FORECAST:
                        effect = exec_castform_script(bank, 1);
                        break;
                    case ABILITY_SLOW_START:
                        new_battlestruct->bank_affecting[bank].slowstart_duration = 5;
                        common_effect = 1;
                        script_ptr = BS_SLOWSTART_MSG1;
                        break;						
                    case ABILITY_ELECTRIC_SURGE:
                        if (!new_battlestruct->field_affecting.electic_terrain) 
						{
                            common_effect = 1;
                            reset_terrains(&new_battlestruct->field_affecting);
                            new_battlestruct->field_affecting.electic_terrain = terrains_get_turns(bank);
							mimicry_change(gBattlersCount,0);
                            script_ptr = BS_ELECTRIC_SURGE;
                        }
                        break;
                    case ABILITY_MISTY_SURGE:
                        if (!new_battlestruct->field_affecting.misty_terrain) 
						{
                            common_effect = 1;
                            reset_terrains(&new_battlestruct->field_affecting);
                            new_battlestruct->field_affecting.misty_terrain = terrains_get_turns(bank);
							mimicry_change(gBattlersCount,0);
                            script_ptr = BS_MISTY_SURGE;
                        }
                        break;
                    case ABILITY_GRASSY_SURGE:
                        if (!new_battlestruct->field_affecting.grassy_terrain) 
						{
                            common_effect = 1;
                            reset_terrains(&new_battlestruct->field_affecting);
                            new_battlestruct->field_affecting.grassy_terrain = terrains_get_turns(bank);
							mimicry_change(gBattlersCount,0);
                            script_ptr = BS_GRASSY_SURGE;
                        }
                        break;
                    case ABILITY_PSYCHIC_SURGE:
                        if (!new_battlestruct->field_affecting.psychic_terrain) 
						{
                            common_effect = 1;
                            reset_terrains(&new_battlestruct->field_affecting);
                            new_battlestruct->field_affecting.psychic_terrain = terrains_get_turns(bank);
							mimicry_change(gBattlersCount,0);
                            script_ptr = BS_PSYCHIC_SURGE;
                        }
                        break;
					case ABILITY_SHIELDS_DOWN:
						if (battle_participants[bank].species==POKE_MINIOR_CORE &&
                            battle_participants[bank].current_hp >= (battle_participants[bank].max_hp >> 1) && !battle_participants[bank].status2.transformed)
						{
							common_effect = 1;
							new_battlestruct->various.var1 = POKE_MINIOR_METEOR;
							new_battlestruct->various.var2 = 0x242;
							script_ptr = BS_STAT_ONLY_FORMCHANGE_END3;
                            break;
						}
					case ABILITY_SCHOOLING:
						if (battle_participants[bank].species==POKE_WISHIWASHI && battle_participants[bank].level >= SCHOOLING_LEVEL
						   && (battle_participants[bank].current_hp >= (battle_participants[bank].max_hp >> 2)) && !battle_participants[bank].status2.transformed)
						{
                            common_effect = 1;
							new_battlestruct->various.var1 = POKE_WISHIWASHI_SCHOOL;
							new_battlestruct->various.var2 = 0x244;
							script_ptr = BS_STAT_ONLY_FORMCHANGE_END3;
						}
						break;
					case ABILITY_COMATOSE:
						battle_participants[bank].status.flags.sleep = 1;	
						break;
					case ABILITY_PASTEL_VEIL:	
                    if (is_bank_present(bank ^2) && (battle_participants[bank ^2].status.flags.poison || battle_participants[bank ^2].status.flags.toxic_poison)) 
					{
                        effect = 1;
                        copy_status_condition_text(bank ^2, 0);
                        bs_execute(BS_PASTELVEIL_HEAL);
                        battle_scripting.active_bank = active_bank = bank ^2;
                        battle_participants[bank ^2].status.flags.poison = 0;
                        battle_participants[bank ^2].status.flags.toxic_poison = 0;						
                        bb2_setattributes_in_battle(0, REQUEST_STATUS_BATTLE, 0, 4, &battle_participants[bank ^2].status);
                        mark_buffer_bank_for_execution(bank ^2);	
					}
						break;		
					case ABILITY_NEUTRALIZING_GAS:	
                        effect = 1;
                        bank_attacker = bank;
                        new_battlestruct->various.neutralizing_gas_in_force = 1;
                        bs_execute(BS_NEUTRALIZING_GAS);
						break;		
					case ABILITY_CURIOUS_MEDICINE:
					{
						// @ Verifica se a batalha é dupla, se não for, a habilidade não ativa
						if (!battle_flags.double_battle)
							break;
						u8 side = get_bank_side(bank); // @ Obtém o lado do usuário
						effect = 1; // @ Marca que a habilidade ativou
						// @ Itera por todos os bancos e reseta apenas os aliados presentes
						for (u8 i = 0; i < gBattlersCount; i++)
						{
							if (is_bank_present(i) && get_bank_side(i) == side && i != bank)
							{
								battle_participants[i].hp_buff      = 6;
								battle_participants[i].atk_buff     = 6;
								battle_participants[i].def_buff     = 6;
								battle_participants[i].spd_buff     = 6;
								battle_participants[i].sp_atk_buff  = 6;
								battle_participants[i].sp_def_buff  = 6;
								battle_participants[i].acc_buff     = 6;
								battle_participants[i].evasion_buff = 6;
							}
						}
						bank_attacker = bank; // @ Define quem ativou a habilidade
						bs_execute(BS_CURIOUS_MEDICINE); // @ Executa o BattleScript associado
						break;
					}
                }			
                if (common_effect) 
				{
                    effect = true;
                    battle_scripting.active_bank = bank;
                    bs_execute(script_ptr);
                }
            }
            status3[bank].innerswitchinlock = 0;	
            break;				
    }
    if (effect && gLastUsedAbility != 0xFF && (switch_id <= 12 || switch_id >= 21) && switch_id != 9)
        record_usage_of_ability(bank, gLastUsedAbility);
    return effect;
}
