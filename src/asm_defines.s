.text
.thumb

@battle flags
.equ BATTLE_DOUBLE,						0x1
.equ BATTLE_LINK,							0x2
.equ BATTLE_TRAINER, 						0x8
.equ BATTLE_PARTER, 						0x40
.equ BATTLE_FRONTIER_GENERAL,		0x100
.equ BATTLE_MULTI, 							0x8000
.equ BATTLE_DOME, 							0x10000
.equ BATTLE_PALACE,						0x20000
.equ BATTLE_ARENA,							0x40000
.equ BATTLE_FACTORY,						0x80000
.equ BATTLE_FLAG_x100000,				0x100000
.equ BATTLE_PYRAMID,						0x200000
.equ BATTLE_INGAME_PARTNER, 		0x400000
.equ BATTLE_FLAG_x2000000, 			0x2000000

@move effects
.equ MOVEEFFECT_SLP,     		0x7
.equ MOVEEFFECT_PSN,			0x8
.equ MOVEEFFECT_BRN,			0x10
.equ MOVEEFFECT_FRZ,			0x20
.equ MOVEEFFECT_PRLZ,		0x40
.equ MOVEEFFECT_TOXIC,		0x80
.equ MOVEEFFECT_CONFUSE,	0x100
.equ MOVEEFFECT_FLINCH,		0x200
.equ MOVEEFFECT_STATCHANGE,	0x400
.equ MOVEEFFECT_MULTIPLESTATS, 0x800

.equ MOVEEFFECT_AFFECTSUSER, 0x4000
.equ MOVEEFFECT_ONECALC, 0x8000

@move battlescript IDs
.equ MOVEBS_PUT_TO_SLEEP, 12
.equ MOVEBS_POISONING, 13
.equ MOVEBS_TOXIC, 14
.equ MOVEBS_PARALYZE, 15
.equ MOVEBS_BURN, 16
.equ MOVEBS_PERISHSONG, 65
.equ MOVEBS_DISABLE, 75
.equ MOVEBS_ENCORE, 76
.equ MOVEBS_YAWN, 131

@hitmarker
.equ HITMARKER_NOATTACKSTRING, 0x200
.equ HITMARKER_HITSSUBSTITUTE, 0x100

@defines for moves that raise multiple stats
.equ MLTS_ATK, 0x1
.equ MLTS_DEF, 0x2
.equ MLTS_SPD, 0x4
.equ MLTS_SPATK, 0x8
.equ MLTS_SPDEF, 0x10
.equ MLTS_ACC, 0x20
.equ MLTS_EVS, 0x40

@types
.equ TYPE_NORMAL, 0x0
.equ TYPE_FIGHTING, 0x1
.equ TYPE_FLYING, 0x2
.equ TYPE_POISON, 0x3
.equ TYPE_GROUND, 0x4
.equ TYPE_ROCK, 0x5
.equ TYPE_BUG, 0x6
.equ TYPE_GHOST, 0x7
.equ TYPE_STEEL, 0x8
.equ TYPE_EGG, 0x9
.equ TYPE_FIRE, 0xA
.equ TYPE_WATER, 0xB
.equ TYPE_GRASS, 0xC
.equ TYPE_ELECTRIC, 0xD
.equ TYPE_PSYCHIC, 0xE
.equ TYPE_ICE, 0xF
.equ TYPE_DRAGON, 0x10
.equ TYPE_DARK, 0x11
.equ TYPE_FAIRY, 0x17

//poke
.equ POKE_DIGLETT, 50
.equ POKE_DUGTRIO, 51
.equ POKE_SHEDINJA, 303
.equ POKE_GIRATINA, 540
.equ POKE_DARKRAI, 544
.equ POKE_SANDYGAST, 822
.equ POKE_PALOSSAND, 823
.equ POKE_DIGLETT_ALOLA, 870
.equ POKE_DUGTRIO_ALOLA, 871
.equ POKE_MINIOR_CORE, 1076

//item
.equ ITEM_PERSIMBERRY, 0x8C

@abilities
.equ ABILITY_NO_ABILITY, 0
.equ ABILITY_STENCH, 1
.equ ABILITY_DRIZZLE, 2
.equ ABILITY_SPEED_BOOST, 3
.equ ABILITY_BATTLE_ARMOR, 4
.equ ABILITY_STURDY, 5
.equ ABILITY_DAMP, 6
.equ ABILITY_LIMBER, 7
.equ ABILITY_SAND_VEIL, 8
.equ ABILITY_STATIC, 9
.equ ABILITY_VOLT_ABSORB, 10
.equ ABILITY_WATER_ABSORB, 11
.equ ABILITY_OBLIVIOUS, 12
.equ ABILITY_CLOUD_NINE, 13
.equ ABILITY_COMPOUND_EYES, 14
.equ ABILITY_INSOMNIA, 15
.equ ABILITY_COLOR_CHANGE, 16
.equ ABILITY_IMMUNITY, 17
.equ ABILITY_FLASH_FIRE, 18
.equ ABILITY_SHIELD_DUST, 19
.equ ABILITY_OWN_TEMPO, 20
.equ ABILITY_SUCTION_CUPS, 21
.equ ABILITY_INTIMIDATE, 22
.equ ABILITY_SHADOW_TAG, 23
.equ ABILITY_ROUGH_SKIN, 24
.equ ABILITY_WONDER_GUARD, 25
.equ ABILITY_LEVITATE, 26
.equ ABILITY_EFFECT_SPORE, 27
.equ ABILITY_SYNCHRONIZE, 28
.equ ABILITY_CLEAR_BODY, 29
.equ ABILITY_NATURAL_CURE, 30
.equ ABILITY_LIGHTNING_ROD, 31
.equ ABILITY_SERENE_GRACE, 32
.equ ABILITY_SWIFT_SWIM, 33
.equ ABILITY_CHLOROPHYLL, 34
.equ ABILITY_ILLUMINATE, 35
.equ ABILITY_TRACE, 36
.equ ABILITY_HUGE_POWER, 37
.equ ABILITY_POISON_POINT, 38
.equ ABILITY_INNER_FOCUS, 39
.equ ABILITY_MAGMA_ARMOR, 40
.equ ABILITY_WATER_VEIL, 41
.equ ABILITY_MAGNET_PULL, 42
.equ ABILITY_SOUNDPROOF, 43
.equ ABILITY_RAIN_DISH, 44
.equ ABILITY_SAND_STREAM, 45
.equ ABILITY_PRESSURE, 46
.equ ABILITY_THICK_FAT, 47
.equ ABILITY_EARLY_BIRD, 48
.equ ABILITY_FLAME_BODY, 49
.equ ABILITY_RUN_AWAY, 50
.equ ABILITY_KEEN_EYE, 51
.equ ABILITY_HYPER_CUTTER, 52
.equ ABILITY_PICKUP, 53
.equ ABILITY_TRUANT, 54
.equ ABILITY_HUSTLE, 55
.equ ABILITY_CUTE_CHARM, 56
.equ ABILITY_PLUS, 57
.equ ABILITY_MINUS, 58
.equ ABILITY_FORECAST, 59
.equ ABILITY_STICKY_HOLD, 60
.equ ABILITY_SHED_SKIN, 61
.equ ABILITY_GUTS, 62
.equ ABILITY_MARVEL_SCALE, 63
.equ ABILITY_LIQUID_OOZE, 64
.equ ABILITY_OVERGROW, 65
.equ ABILITY_BLAZE, 66
.equ ABILITY_TORRENT, 67
.equ ABILITY_SWARM, 68
.equ ABILITY_ROCK_HEAD, 69
.equ ABILITY_DROUGHT, 70
.equ ABILITY_ARENA_TRAP, 71
.equ ABILITY_VITAL_SPIRIT, 72
.equ ABILITY_WHITE_SMOKE, 73
.equ ABILITY_PURE_POWER, 74
.equ ABILITY_SHELL_ARMOR, 75
.equ ABILITY_AIR_LOCK, 76
.equ ABILITY_TANGLED_FEET, 77
.equ ABILITY_MOTOR_DRIVE, 78
.equ ABILITY_RIVALRY, 79
.equ ABILITY_STEADFAST, 80
.equ ABILITY_SNOW_CLOAK, 81
.equ ABILITY_GLUTTONY, 82
.equ ABILITY_ANGER_POINT, 83
.equ ABILITY_UNBURDEN, 84
.equ ABILITY_HEATPROOF, 85
.equ ABILITY_SIMPLE, 86
.equ ABILITY_DRY_SKIN, 87
.equ ABILITY_DOWNLOAD, 88
.equ ABILITY_IRON_FIST, 89
.equ ABILITY_POISON_HEAL, 90
.equ ABILITY_ADAPTABILITY, 91
.equ ABILITY_SKILL_LINK, 92
.equ ABILITY_HYDRATION, 93
.equ ABILITY_SOLAR_POWER, 94
.equ ABILITY_QUICK_FEET, 95
.equ ABILITY_NORMALIZE, 96
.equ ABILITY_SNIPER, 97
.equ ABILITY_MAGIC_GUARD, 98
.equ ABILITY_NO_GUARD, 99
.equ ABILITY_STALL, 100
.equ ABILITY_TECHNICIAN, 101
.equ ABILITY_LEAF_GUARD, 102
.equ ABILITY_KLUTZ, 103
.equ ABILITY_MOLD_BREAKER, 104
.equ ABILITY_SUPER_LUCK, 105
.equ ABILITY_AFTERMATH, 106
.equ ABILITY_ANTICIPATION, 107
.equ ABILITY_FOREWARN, 108
.equ ABILITY_UNAWARE, 109
.equ ABILITY_TINTED_LENS, 110
.equ ABILITY_FILTER, 111
.equ ABILITY_SLOW_START, 112
.equ ABILITY_SCRAPPY, 113
.equ ABILITY_STORM_DRAIN, 114
.equ ABILITY_ICE_BODY, 115
.equ ABILITY_SOLID_ROCK, 116
.equ ABILITY_SNOW_WARNING, 117
.equ ABILITY_HONEY_GATHER, 118
.equ ABILITY_FRISK, 119
.equ ABILITY_RECKLESS, 120
.equ ABILITY_MULTITYPE, 121
.equ ABILITY_FLOWER_GIFT, 122
.equ ABILITY_BAD_DREAMS, 123
.equ ABILITY_PICKPOCKET, 124
.equ ABILITY_SHEER_FORCE, 125
.equ ABILITY_CONTRARY, 126
.equ ABILITY_UNNERVE, 127
.equ ABILITY_DEFIANT, 128
.equ ABILITY_DEFEATIST, 129
.equ ABILITY_CURSED_BODY, 130
.equ ABILITY_HEALER, 131
.equ ABILITY_FRIEND_GUARD, 132
.equ ABILITY_WEAK_ARMOR, 133
.equ ABILITY_HEAVY_METAL, 134
.equ ABILITY_LIGHT_METAL, 135
.equ ABILITY_MULTISCALE, 136
.equ ABILITY_TOXIC_BOOST, 137
.equ ABILITY_FLARE_BOOST, 138
.equ ABILITY_HARVEST, 139
.equ ABILITY_TELEPATHY, 140
.equ ABILITY_MOODY, 141
.equ ABILITY_OVERCOAT, 142
.equ ABILITY_POISON_TOUCH, 143
.equ ABILITY_REGENERATOR, 144
.equ ABILITY_BIG_PECKS, 145
.equ ABILITY_SAND_RUSH, 146
.equ ABILITY_WONDER_SKIN, 147
.equ ABILITY_ANALYTIC, 148
.equ ABILITY_ILLUSION, 149
.equ ABILITY_IMPOSTER, 150
.equ ABILITY_INFILTRATOR, 151
.equ ABILITY_MUMMY, 152
.equ ABILITY_MOXIE, 153
.equ ABILITY_JUSTIFIED, 154
.equ ABILITY_RATTLED, 155
.equ ABILITY_MAGIC_BOUNCE, 156
.equ ABILITY_SAP_SIPPER, 157
.equ ABILITY_PRANKSTER, 158
.equ ABILITY_SAND_FORCE, 159
.equ ABILITY_IRON_BARBS, 160
.equ ABILITY_ZEN_MODE, 161
.equ ABILITY_VICTORY_STAR, 162
.equ ABILITY_TURBOBLAZE, 163
.equ ABILITY_TERAVOLT, 164
.equ ABILITY_AROMA_VEIL, 165
.equ ABILITY_FLOWER_VEIL, 166
.equ ABILITY_CHEEK_POUCH, 167
.equ ABILITY_PROTEAN, 168
.equ ABILITY_FUR_COAT, 169
.equ ABILITY_MAGICIAN, 170
.equ ABILITY_BULLETPROOF, 171
.equ ABILITY_COMPETITIVE, 172
.equ ABILITY_STRONG_JAW, 173
.equ ABILITY_REFRIGERATE, 174
.equ ABILITY_SWEET_VEIL, 175
.equ ABILITY_STANCE_CHANGE, 176
.equ ABILITY_GALE_WINGS, 177
.equ ABILITY_MEGA_LAUNCHER, 178
.equ ABILITY_GRASS_PELT, 179
.equ ABILITY_SYMBIOSIS, 180
.equ ABILITY_TOUGH_CLAWS, 181
.equ ABILITY_PIXILATE, 182
.equ ABILITY_GOOEY, 183
.equ ABILITY_AERILATE, 184
.equ ABILITY_PARENTAL_BOND, 185
.equ ABILITY_DARK_AURA, 186
.equ ABILITY_FAIRY_AURA, 187
.equ ABILITY_AURA_BREAK, 188
.equ ABILITY_PRIMORDIAL_SEA, 189
.equ ABILITY_DESOLATE_LAND, 190
.equ ABILITY_DELTA_STREAM, 191
.equ ABILITY_STAMINA, 192
.equ ABILITY_WIMP_OUT, 193
.equ ABILITY_EMERGENCY_EXIT, 194
.equ ABILITY_WATER_COMPACTION, 195
.equ ABILITY_MERCILESS, 196
.equ ABILITY_SHIELDS_DOWN, 197
.equ ABILITY_STAKEOUT, 198
.equ ABILITY_WATER_BUBBLE, 199
.equ ABILITY_STEELWORKER, 200
.equ ABILITY_BERSERK, 201
.equ ABILITY_SLUSH_RUSH, 202
.equ ABILITY_LONG_REACH, 203
.equ ABILITY_LIQUID_VOICE, 204
.equ ABILITY_TRIAGE, 205
.equ ABILITY_GALVANIZE, 206
.equ ABILITY_SURGE_SURFER, 207
.equ ABILITY_SCHOOLING, 208
.equ ABILITY_DISGUISE, 209
.equ ABILITY_BATTLE_BOND, 210
.equ ABILITY_POWER_CONSTRUCT, 211
.equ ABILITY_CORROSION, 212
.equ ABILITY_COMATOSE, 213
.equ ABILITY_QUEENLY_MAJESTY, 214
.equ ABILITY_INNARDS_OUT, 215
.equ ABILITY_DANCER, 216
.equ ABILITY_BATTERY, 217
.equ ABILITY_FLUFFY, 218
.equ ABILITY_DAZZLING, 219
.equ ABILITY_SOUL_HEART, 220
.equ ABILITY_TANGLING_HAIR, 221
.equ ABILITY_RECEIVER, 222
.equ ABILITY_POWER_OF_ALCHEMY, 223
.equ ABILITY_BEAST_BOOST, 224
.equ ABILITY_RKS_SYSTEM, 225
.equ ABILITY_ELECTRIC_SURGE, 226
.equ ABILITY_PSYCHIC_SURGE, 227
.equ ABILITY_MISTY_SURGE, 228
.equ ABILITY_GRASSY_SURGE, 229
.equ ABILITY_FULL_METAL_BODY, 230
.equ ABILITY_SHADOW_SHIELD, 231
.equ ABILITY_PRISM_ARMOR, 232
.equ ABILITY_NEUROFORCE, 233
.equ ABILITY_MIMICRY, 234
.equ ABILITY_SCREEN_CLEANER, 235
.equ ABILITY_STEELY_SPIRIT, 236
.equ ABILITY_PERISH_BODY, 237
.equ ABILITY_WANDERING_SPIRIT, 238
.equ ABILITY_GORILLA_TACTICS, 239
.equ ABILITY_NEUTRALIZING_GAS, 240
.equ ABILITY_PASTEL_VEIL, 241
.equ ABILITY_QUICK_DRAW, 242
.equ ABILITY_CURIOUS_MEDICINE, 243
.equ ABILITY_TRANSISTOR, 244
.equ ABILITY_DRAGONS_MAW, 245
.equ ABILITY_SHARPNESS, 246

@moves
.equ MOVE_ABSORB, 0x47
.equ MOVE_ACCELEROCK, 0x2C5
.equ MOVE_ACID, 0x33
.equ MOVE_ACID_ARMOR, 0x97
.equ MOVE_ACID_SPRAY, 0x1EB
.equ MOVE_ACROBATICS, 0x200
.equ MOVE_ACUPRESSURE, 0x16F
.equ MOVE_AERIAL_ACE, 0x14C
.equ MOVE_AEROBLAST, 0xB1
.equ MOVE_AFTER_YOU, 0x1EF
.equ MOVE_AGILITY, 0x61
.equ MOVE_AIR_CUTTER, 0x13A
.equ MOVE_AIR_SLASH, 0x193
.equ MOVE_ALLY_SWITCH, 0x1F6
.equ MOVE_AMNESIA, 0x85
.equ MOVE_ANCIENT_POWER, 0xF6
.equ MOVE_AQUA_JET, 0x1C5
.equ MOVE_AQUA_RING, 0x188
.equ MOVE_AQUA_TAIL, 0x191
.equ MOVE_ARM_THRUST, 0x124
.equ MOVE_AROMATHERAPY, 0x138
.equ MOVE_AROMATIC_MIST, 0x255
.equ MOVE_ASSIST, 0x112
.equ MOVE_ASSURANCE, 0x174
.equ MOVE_ASTONISH, 0x136
.equ MOVE_ATTACK_ORDER, 0x1C6
.equ MOVE_ATTRACT, 0xD5
.equ MOVE_AURA_SPHERE, 0x18C
.equ MOVE_AURORA_BEAM, 0x3E
.equ MOVE_AURORA_VEIL, 0x2B6
.equ MOVE_AUTOTOMIZE, 0x1DB
.equ MOVE_AVALANCHE, 0x1A3
.equ MOVE_BABYDOLL_EYES, 0x260
.equ MOVE_BANEFUL_BUNKER, 0x295
.equ MOVE_BARRAGE, 0x8C
.equ MOVE_BARRIER, 0x70
.equ MOVE_BATON_PASS, 0xE2
.equ MOVE_BEAT_UP, 0xFB
.equ MOVE_BEAK_BLAST, 0x2B2
.equ MOVE_BELCH, 0x232
.equ MOVE_BELLY_DRUM, 0xBB
.equ MOVE_BESTOW, 0x204
.equ MOVE_BIDE, 0x75
.equ MOVE_BIND, 0x14
.equ MOVE_BITE, 0x2C
.equ MOVE_BLAST_BURN, 0x133
.equ MOVE_BLAZE_KICK, 0x12B
.equ MOVE_BLIZZARD, 0x3B
.equ MOVE_BLOCK, 0x14F
.equ MOVE_BLUE_FLARE, 0x227
.equ MOVE_BODY_SLAM, 0x22
.equ MOVE_BOLT_STRIKE, 0x226
.equ MOVE_BONE_CLUB, 0x7D
.equ MOVE_BONE_RUSH, 0xC6
.equ MOVE_BONEMERANG, 0x9B
.equ MOVE_BOOMBURST, 0x24A
.equ MOVE_BOUNCE, 0x154
.equ MOVE_BRAVE_BIRD, 0x19D
.equ MOVE_BRICK_BREAK, 0x118
.equ MOVE_BRINE, 0x16A
.equ MOVE_BUBBLE, 0x91
.equ MOVE_BUBBLE_BEAM, 0x3D
.equ MOVE_BUG_BITE, 0x1C2
.equ MOVE_BUG_BUZZ, 0x195
.equ MOVE_BULK_UP, 0x153
.equ MOVE_BULLDOZE, 0x20B
.equ MOVE_BULLET_PUNCH, 0x1A2
.equ MOVE_BULLET_SEED, 0x14B
.equ MOVE_BRUTAL_SWING, 0x2B5
.equ MOVE_CALM_MIND, 0x15B
.equ MOVE_CAMOUFLAGE, 0x125
.equ MOVE_CAPTIVATE, 0x1BD
.equ MOVE_CELEBRATE, 0x25E
.equ MOVE_CHARGE, 0x10C
.equ MOVE_CHARGE_BEAM, 0x1C3
.equ MOVE_CHARM, 0xCC
.equ MOVE_CHATTER, 0x1C0
.equ MOVE_CHIP_AWAY, 0x1F2
.equ MOVE_CIRCLE_THROW, 0x1FD
.equ MOVE_CLAMP, 0x80
.equ MOVE_CLEAR_SMOG, 0x1F3
.equ MOVE_CLOSE_COMBAT, 0x172
.equ MOVE_COIL, 0x1E9
.equ MOVE_COMET_PUNCH, 0x4
.equ MOVE_CONFIDE, 0x24E
.equ MOVE_CONFUSE_RAY, 0x6D
.equ MOVE_CONFUSION, 0x5D
.equ MOVE_CONSTRICT, 0x84
.equ MOVE_CONVERSION, 0xA0
.equ MOVE_CONVERSION_2, 0xB0
.equ MOVE_COPYCAT, 0x17F
.equ MOVE_CORE_ENFORCER, 0x2AF
.equ MOVE_COSMIC_POWER, 0x142
.equ MOVE_COTTON_GUARD, 0x21A
.equ MOVE_COTTON_SPORE, 0xB2
.equ MOVE_COUNTER, 0x44
.equ MOVE_COVET, 0x157
.equ MOVE_CRABHAMMER, 0x98
.equ MOVE_CRAFTY_SHIELD, 0x242
.equ MOVE_CROSS_CHOP, 0xEE
.equ MOVE_CROSS_POISON, 0x1B8
.equ MOVE_CRUNCH, 0xF2
.equ MOVE_CRUSH_CLAW, 0x132
.equ MOVE_CRUSH_GRIP, 0x1CE
.equ MOVE_CURSE, 0xAE
.equ MOVE_CUT, 0xF
.equ MOVE_DARKEST_LARIAT, 0x297
.equ MOVE_DARK_PULSE, 0x18F
.equ MOVE_DARK_VOID, 0x1D0
.equ MOVE_DAZZLING_GLEAM, 0x25D
.equ MOVE_DEFEND_ORDER, 0x1C7
.equ MOVE_DEFENSE_CURL, 0x6F
.equ MOVE_DEFOG, 0x1B0
.equ MOVE_DESTINY_BOND, 0xC2
.equ MOVE_DETECT, 0xC5
.equ MOVE_DIAMOND_STORM, 0x24F
.equ MOVE_DIG, 0x5B
.equ MOVE_DISABLE, 0x32
.equ MOVE_DISARMING_VOICE, 0x23E
.equ MOVE_DISCHARGE, 0x1B3
.equ MOVE_DIVE, 0x123
.equ MOVE_DIZZY_PUNCH, 0x92
.equ MOVE_DOOM_DESIRE, 0x161
.equ MOVE_DOUBLEEDGE, 0x26
.equ MOVE_DOUBLE_HIT, 0x1CA
.equ MOVE_DOUBLE_KICK, 0x18
.equ MOVE_DOUBLE_SLAP, 0x3
.equ MOVE_DOUBLE_TEAM, 0x68
.equ MOVE_DRACO_METEOR, 0x1B2
.equ MOVE_DRAGON_ASCENT, 0x26C
.equ MOVE_DRAGON_BREATH, 0xE1
.equ MOVE_DRAGON_CLAW, 0x151
.equ MOVE_DRAGON_DANCE, 0x15D
.equ MOVE_DRAGON_HAMMER, 0x2B4
.equ MOVE_DRAGON_PULSE, 0x196
.equ MOVE_DRAGON_RAGE, 0x52
.equ MOVE_DRAGON_RUSH, 0x197
.equ MOVE_DRAGON_TAIL, 0x20D
.equ MOVE_DRAINING_KISS, 0x241
.equ MOVE_DRAIN_PUNCH, 0x199
.equ MOVE_DREAM_EATER, 0x8A
.equ MOVE_DRILL_PECK, 0x41
.equ MOVE_DRILL_RUN, 0x211
.equ MOVE_DUAL_CHOP, 0x212
.equ MOVE_DYNAMIC_PUNCH, 0xDF
.equ MOVE_EARTH_POWER, 0x19E
.equ MOVE_EARTHQUAKE, 0x59
.equ MOVE_ECHOED_VOICE, 0x1F1
.equ MOVE_EERIE_IMPULSE, 0x256
.equ MOVE_EGG_BOMB, 0x79
.equ MOVE_ELECTRIC_TERRAIN, 0x25C
.equ MOVE_ELECTRIFY, 0x246
.equ MOVE_ELECTRO_BALL, 0x1E6
.equ MOVE_ELECTROWEB, 0x20F
.equ MOVE_EMBARGO, 0x175
.equ MOVE_EMBER, 0x34
.equ MOVE_ENCORE, 0xE3
.equ MOVE_ENDEAVOR, 0x11B
.equ MOVE_ENDURE, 0xCB
.equ MOVE_ENERGY_BALL, 0x19C
.equ MOVE_ENTRAINMENT, 0x1EE
.equ MOVE_ERUPTION, 0x11C
.equ MOVE_EXPLOSION, 0x99
.equ MOVE_EXTRASENSORY, 0x146
.equ MOVE_EXTREME_SPEED, 0xF5
.equ MOVE_FACADE, 0x107
.equ MOVE_FEINT_ATTACK, 0xB9
.equ MOVE_FAIRY_LOCK, 0x24B
.equ MOVE_FAIRY_WIND, 0x248
.equ MOVE_FAKE_OUT, 0xFC
.equ MOVE_FAKE_TEARS, 0x139
.equ MOVE_FALSE_SWIPE, 0xCE
.equ MOVE_FEATHER_DANCE, 0x129
.equ MOVE_FEINT, 0x16C
.equ MOVE_FELL_STINGER, 0x235
.equ MOVE_FIERY_DANCE, 0x228
.equ MOVE_FINAL_GAMBIT, 0x203
.equ MOVE_FIRE_BLAST, 0x7E
.equ MOVE_FIRE_FANG, 0x1A8
.equ MOVE_FIRE_LASH, 0x2A8
.equ MOVE_LIQUIDATION, 0x2C6
.equ MOVE_FIRE_PLEDGE, 0x207
.equ MOVE_FIRE_PUNCH, 0x7
.equ MOVE_FIRE_SPIN, 0x53
.equ MOVE_FISSURE, 0x5A
.equ MOVE_FLAIL, 0xAF
.equ MOVE_FLAME_BURST, 0x1E1
.equ MOVE_FLAME_CHARGE, 0x1E8
.equ MOVE_FLAME_WHEEL, 0xAC
.equ MOVE_FLAMETHROWER, 0x35
.equ MOVE_FLARE_BLITZ, 0x18A
.equ MOVE_FLASH, 0x94
.equ MOVE_FLASH_CANNON, 0x1AE
.equ MOVE_FLATTER, 0x104
.equ MOVE_FLING, 0x176
.equ MOVE_FLOWER_SHIELD, 0x243
.equ MOVE_FLY, 0x13
.equ MOVE_FLYING_PRESS, 0x230
.equ MOVE_FOCUS_BLAST, 0x19B
.equ MOVE_FOCUS_ENERGY, 0x74
.equ MOVE_FOCUS_PUNCH, 0x108
.equ MOVE_FOLLOW_ME, 0x10A
.equ MOVE_FORCE_PALM, 0x18B
.equ MOVE_FORESIGHT, 0xC1
.equ MOVE_FORESTS_CURSE, 0x23B
.equ MOVE_FOUL_PLAY, 0x1EC
.equ MOVE_FREEZEDRY, 0x23D
.equ MOVE_FREEZE_SHOCK, 0x229
.equ MOVE_FRENZY_PLANT, 0x152
.equ MOVE_FROST_BREATH, 0x20C
.equ MOVE_FRUSTRATION, 0xDA
.equ MOVE_FURY_ATTACK, 0x1F
.equ MOVE_FURY_CUTTER, 0xD2
.equ MOVE_FURY_SWIPES, 0x9A
.equ MOVE_FUSION_BOLT, 0x22F
.equ MOVE_FUSION_FLARE, 0x22E
.equ MOVE_FUTURE_SIGHT, 0xF8
.equ MOVE_GASTRO_ACID, 0x17C
.equ MOVE_GEAR_GRIND, 0x220
.equ MOVE_GEAR_UP, 0x2A2
.equ MOVE_GEOMANCY, 0x259
.equ MOVE_GIGA_DRAIN, 0xCA
.equ MOVE_GIGA_IMPACT, 0x1A0
.equ MOVE_GLACIATE, 0x225
.equ MOVE_GLARE, 0x89
.equ MOVE_GRASS_KNOT, 0x1BF
.equ MOVE_GRASS_PLEDGE, 0x208
.equ MOVE_GRASS_WHISTLE, 0x140
.equ MOVE_GRASSY_TERRAIN, 0x244
.equ MOVE_GRAVITY, 0x164
.equ MOVE_GROWL, 0x2D
.equ MOVE_GROWTH, 0x4A
.equ MOVE_GRUDGE, 0x120
.equ MOVE_GUARD_SPLIT, 0x1D6
.equ MOVE_GUARD_SWAP, 0x181
.equ MOVE_GUILLOTINE, 0xC
.equ MOVE_GUNK_SHOT, 0x1B9
.equ MOVE_GUST, 0x10
.equ MOVE_GYRO_BALL, 0x168
.equ MOVE_HAIL, 0x102
.equ MOVE_HAMMER_ARM, 0x167
.equ MOVE_HAPPY_HOUR, 0x25B
.equ MOVE_HARDEN, 0x6A
.equ MOVE_HAZE, 0x72
.equ MOVE_HEAD_CHARGE, 0x21F
.equ MOVE_HEAD_SMASH, 0x1C9
.equ MOVE_HEADBUTT, 0x1D
.equ MOVE_HEAL_BELL, 0xD7
.equ MOVE_HEAL_BLOCK, 0x179
.equ MOVE_HEAL_ORDER, 0x1C8
.equ MOVE_HEAL_PULSE, 0x1F9
.equ MOVE_HEALING_WISH, 0x169
.equ MOVE_HEART_STAMP, 0x213
.equ MOVE_HEART_SWAP, 0x187
.equ MOVE_HEAT_CRASH, 0x217
.equ MOVE_HEAT_WAVE, 0x101
.equ MOVE_HEAVY_SLAM, 0x1E4
.equ MOVE_HELPING_HAND, 0x10E
.equ MOVE_HEX, 0x1FA
.equ MOVE_HIDDEN_POWER, 0xED
.equ MOVE_HIGH_JUMP_KICK, 0x88
.equ MOVE_HIGH_HORSEPOWER, 0x29B
.equ MOVE_HOLD_BACK, 0x262
.equ MOVE_HOLD_HANDS, 0x25F
.equ MOVE_HONE_CLAWS, 0x1D4
.equ MOVE_HORN_ATTACK, 0x1E
.equ MOVE_HORN_DRILL, 0x20
.equ MOVE_HORN_LEECH, 0x214
.equ MOVE_HOWL, 0x150
.equ MOVE_HURRICANE, 0x21E
.equ MOVE_HYDRO_CANNON, 0x134
.equ MOVE_HYDRO_PUMP, 0x38
.equ MOVE_HYPER_BEAM, 0x3F
.equ MOVE_HYPER_FANG, 0x9E
.equ MOVE_HYPERSPACE_FURY, 0x26D
.equ MOVE_HYPERSPACE_HOLE, 0x251
.equ MOVE_HYPER_VOICE, 0x130
.equ MOVE_HYPNOSIS, 0x5F
.equ MOVE_ICE_BALL, 0x12D
.equ MOVE_ICE_BEAM, 0x3A
.equ MOVE_ICE_BURN, 0x22A
.equ MOVE_ICE_FANG, 0x1A7
.equ MOVE_ICE_HAMMER, 0x299
.equ MOVE_ICE_PUNCH, 0x8
.equ MOVE_ICE_SHARD, 0x1A4
.equ MOVE_ICICLE_CRASH, 0x22C
.equ MOVE_ICICLE_SPEAR, 0x14D
.equ MOVE_ICY_WIND, 0xC4
.equ MOVE_IMPRISON, 0x11E
.equ MOVE_INCINERATE, 0x1FE
.equ MOVE_INFERNO, 0x205
.equ MOVE_INFESTATION, 0x263
.equ MOVE_INGRAIN, 0x113
.equ MOVE_INSTRUCT, 0x2B1
.equ MOVE_ION_DELUGE, 0x239
.equ MOVE_IRON_DEFENSE, 0x14E
.equ MOVE_IRON_HEAD, 0x1BA
.equ MOVE_IRON_TAIL, 0xE7
.equ MOVE_JUDGMENT, 0x1C1
.equ MOVE_JUMP_KICK, 0x1A
.equ MOVE_KARATE_CHOP, 0x2
.equ MOVE_KINESIS, 0x86
.equ MOVE_KINGS_SHIELD, 0x24C
.equ MOVE_KNOCK_OFF, 0x11A
.equ MOVE_LANDS_WRATH, 0x268
.equ MOVE_LAST_RESORT, 0x183
.equ MOVE_LAVA_PLUME, 0x1B4
.equ MOVE_LEAF_BLADE, 0x15C
.equ MOVE_LEAF_STORM, 0x1B5
.equ MOVE_LEAF_TORNADO, 0x218
.equ MOVE_LEAFAGE, 0x29E
.equ MOVE_LEECH_LIFE, 0x8D
.equ MOVE_LEECH_SEED, 0x49
.equ MOVE_LEER, 0x2B
.equ MOVE_LICK, 0x7A
.equ MOVE_LIGHT_OF_RUIN, 0x269
.equ MOVE_LIGHT_SCREEN, 0x71
.equ MOVE_LIQUIDATION, 0x2C6
.equ MOVE_LOCKON, 0xC7
.equ MOVE_LOVELY_KISS, 0x8E
.equ MOVE_LOW_KICK, 0x43
.equ MOVE_LOW_SWEEP, 0x1EA
.equ MOVE_LUCKY_CHANT, 0x17D
.equ MOVE_LUNAR_DANCE, 0x1CD
.equ MOVE_LUNGE, 0x2A7
.equ MOVE_LUSTER_PURGE, 0x127
.equ MOVE_MACH_PUNCH, 0xB7
.equ MOVE_MAGIC_COAT, 0x115
.equ MOVE_MAGIC_ROOM, 0x1DE
.equ MOVE_MAGICAL_LEAF, 0x159
.equ MOVE_MAGMA_STORM, 0x1CF
.equ MOVE_MAGNET_BOMB, 0x1BB
.equ MOVE_MAGNETIC_FLUX, 0x25A
.equ MOVE_MAGNET_RISE, 0x189
.equ MOVE_MAGNITUDE, 0xDE
.equ MOVE_MAT_BLOCK, 0x231
.equ MOVE_ME_FIRST, 0x17E
.equ MOVE_MEAN_LOOK, 0xD4
.equ MOVE_MEDITATE, 0x60
.equ MOVE_MEGA_DRAIN, 0x48
.equ MOVE_MEGA_KICK, 0x19
.equ MOVE_MEGA_PUNCH, 0x5
.equ MOVE_MEGAHORN, 0xE0
.equ MOVE_MEMENTO, 0x106
.equ MOVE_METAL_BURST, 0x170
.equ MOVE_METAL_CLAW, 0xE8
.equ MOVE_METAL_SOUND, 0x13F
.equ MOVE_METEOR_MASH, 0x135
.equ MOVE_METRONOME, 0x76
.equ MOVE_MILK_DRINK, 0xD0
.equ MOVE_MIMIC, 0x66
.equ MOVE_MIND_READER, 0xAA
.equ MOVE_MINIMIZE, 0x6B
.equ MOVE_MIRACLE_EYE, 0x165
.equ MOVE_MIRROR_COAT, 0xF3
.equ MOVE_MIRROR_MOVE, 0x77
.equ MOVE_MIRROR_SHOT, 0x1AD
.equ MOVE_MIST, 0x36
.equ MOVE_MIST_BALL, 0x128
.equ MOVE_MISTY_TERRAIN, 0x245
.equ MOVE_MOONBLAST, 0x249
.equ MOVE_MOONGEIST_BEAM, 0x2CA
.equ MOVE_MOONLIGHT, 0xEC
.equ MOVE_MORNING_SUN, 0xEA
.equ MOVE_MUDSLAP, 0xBD
.equ MOVE_MUD_BOMB, 0x1AA
.equ MOVE_MUD_SHOT, 0x155
.equ MOVE_MUD_SPORT, 0x12C
.equ MOVE_MUDDY_WATER, 0x14A
.equ MOVE_MULTI_ATTACK, 0x2CE
.equ MOVE_MYSTICAL_FIRE, 0x253
.equ MOVE_NASTY_PLOT, 0x1A1
.equ MOVE_NATURAL_GIFT, 0x16B
.equ MOVE_NATURE_POWER, 0x10B
.equ MOVE_NEEDLE_ARM, 0x12E
.equ MOVE_NIGHT_DAZE, 0x21B
.equ MOVE_NIGHT_SHADE, 0x65
.equ MOVE_NIGHT_SLASH, 0x190
.equ MOVE_NIGHTMARE, 0xAB
.equ MOVE_NOBLE_ROAR, 0x238
.equ MOVE_NUZZLE, 0x261
.equ MOVE_OBLIVION_WING, 0x265
.equ MOVE_OCTAZOOKA, 0xBE
.equ MOVE_ODOR_SLEUTH, 0x13C
.equ MOVE_OMINOUS_WIND, 0x1D2
.equ MOVE_ORIGIN_PULSE, 0x26A
.equ MOVE_OUTRAGE, 0xC8
.equ MOVE_OVERHEAT, 0x13B
.equ MOVE_PAIN_SPLIT, 0xDC
.equ MOVE_PARABOLIC_CHARGE, 0x23A
.equ MOVE_PARTING_SHOT, 0x23F
.equ MOVE_PAY_DAY, 0x6
.equ MOVE_PAYBACK, 0x173
.equ MOVE_PECK, 0x40
.equ MOVE_PERISH_SONG, 0xC3
.equ MOVE_PETAL_BLIZZARD, 0x23C
.equ MOVE_PETAL_DANCE, 0x50
.equ MOVE_PHANTOM_FORCE, 0x236
.equ MOVE_PIN_MISSILE, 0x2A
.equ MOVE_PLAY_NICE, 0x24D
.equ MOVE_PLAY_ROUGH, 0x247
.equ MOVE_PLUCK, 0x16D
.equ MOVE_POISON_FANG, 0x131
.equ MOVE_POISON_GAS, 0x8B
.equ MOVE_POISON_JAB, 0x18E
.equ MOVE_POISON_POWDER, 0x4D
.equ MOVE_POISON_STING, 0x28
.equ MOVE_POISON_TAIL, 0x156
.equ MOVE_POLLEN_PUFF, 0x2A4
.equ MOVE_POUND, 0x1
.equ MOVE_POWDER, 0x258
.equ MOVE_POWDER_SNOW, 0xB5
.equ MOVE_POWER_GEM, 0x198
.equ MOVE_POWER_SPLIT, 0x1D7
.equ MOVE_POWER_SWAP, 0x180
.equ MOVE_POWER_TRICK, 0x17B
.equ MOVE_POWER_TRIP, 0x2A9
.equ MOVE_POWERUP_PUNCH, 0x264
.equ MOVE_POWER_WHIP, 0x1B6
.equ MOVE_PRECIPICE_BLADES, 0x26B
.equ MOVE_PRESENT, 0xD9
.equ MOVE_PRISMATIC_LASER, 0x2C7
.equ MOVE_PROTECT, 0xB6
.equ MOVE_PSYBEAM, 0x3C
.equ MOVE_PSYCH_UP, 0xF4
.equ MOVE_PSYCHIC, 0x5E
.equ MOVE_PSYCHO_BOOST, 0x162
.equ MOVE_PSYCHO_CUT, 0x1AB
.equ MOVE_PSYCHIC_FANGS, 0x2C2
.equ MOVE_PSYCHO_SHIFT, 0x177
.equ MOVE_PSYSHOCK, 0x1D9
.equ MOVE_PSYSTRIKE, 0x21C
.equ MOVE_PSYWAVE, 0x95
.equ MOVE_PUNISHMENT, 0x182
.equ MOVE_PURSUIT, 0xE4
.equ MOVE_QUASH, 0x1FF
.equ MOVE_QUICK_ATTACK, 0x62
.equ MOVE_QUICK_GUARD, 0x1F5
.equ MOVE_QUIVER_DANCE, 0x1E3
.equ MOVE_RAGE, 0x63
.equ MOVE_RAGE_POWDER, 0x1DC
.equ MOVE_RAIN_DANCE, 0xF0
.equ MOVE_RAPID_SPIN, 0xE5
.equ MOVE_RAZOR_LEAF, 0x4B
.equ MOVE_RAZOR_SHELL, 0x216
.equ MOVE_RAZOR_WIND, 0xD
.equ MOVE_RECOVER, 0x69
.equ MOVE_RECYCLE, 0x116
.equ MOVE_REFLECT, 0x73
.equ MOVE_REFLECT_TYPE, 0x201
.equ MOVE_REFRESH, 0x11F
.equ MOVE_RELIC_SONG, 0x223
.equ MOVE_REST, 0x9C
.equ MOVE_RETALIATE, 0x202
.equ MOVE_RETURN, 0xD8
.equ MOVE_REVELATION_DANCE, 0x2AE
.equ MOVE_REVENGE, 0x117
.equ MOVE_REVERSAL, 0xB3
.equ MOVE_ROAR, 0x2E
.equ MOVE_ROAR_OF_TIME, 0x1CB
.equ MOVE_ROCK_BLAST, 0x15E
.equ MOVE_ROCK_CLIMB, 0x1AF
.equ MOVE_ROCK_POLISH, 0x18D
.equ MOVE_ROCK_SLIDE, 0x9D
.equ MOVE_ROCK_SMASH, 0xF9
.equ MOVE_ROCK_THROW, 0x58
.equ MOVE_ROCK_TOMB, 0x13D
.equ MOVE_ROCK_WRECKER, 0x1B7
.equ MOVE_ROLE_PLAY, 0x110
.equ MOVE_ROLLING_KICK, 0x1B
.equ MOVE_ROLLOUT, 0xCD
.equ MOVE_ROOST, 0x163
.equ MOVE_ROTOTILLER, 0x233
.equ MOVE_ROUND, 0x1F0
.equ MOVE_SACRED_FIRE, 0xDD
.equ MOVE_SACRED_SWORD, 0x215
.equ MOVE_SAFEGUARD, 0xDB
.equ MOVE_SAND_ATTACK, 0x1C
.equ MOVE_SAND_TOMB, 0x148
.equ MOVE_SANDSTORM, 0xC9
.equ MOVE_SCALD, 0x1F7
.equ MOVE_SCARY_FACE, 0xB8
.equ MOVE_SCRATCH, 0xA
.equ MOVE_SCREECH, 0x67
.equ MOVE_SEARING_SHOT, 0x221
.equ MOVE_SECRET_POWER, 0x122
.equ MOVE_SECRET_SWORD, 0x224
.equ MOVE_SEED_BOMB, 0x192
.equ MOVE_SEED_FLARE, 0x1D1
.equ MOVE_SEISMIC_TOSS, 0x45
.equ MOVE_SELFDESTRUCT, 0x78
.equ MOVE_SHADOW_BALL, 0xF7
.equ MOVE_SHADOW_BONE, 0x2C4
.equ MOVE_SHADOW_CLAW, 0x1A5
.equ MOVE_SHADOW_FORCE, 0x1D3
.equ MOVE_SHADOW_PUNCH, 0x145
.equ MOVE_SHADOW_SNEAK, 0x1A9
.equ MOVE_SHARPEN, 0x9F
.equ MOVE_SHEER_COLD, 0x149
.equ MOVE_SHELL_SMASH, 0x1F8
.equ MOVE_SHELL_TRAP, 0x2C0
.equ MOVE_SHIFT_GEAR, 0x1FC
.equ MOVE_SHOCK_WAVE, 0x15F
.equ MOVE_SIGNAL_BEAM, 0x144
.equ MOVE_SILVER_WIND, 0x13E
.equ MOVE_SIMPLE_BEAM, 0x1ED
.equ MOVE_SING, 0x2F
.equ MOVE_SKETCH, 0xA6
.equ MOVE_SKILL_SWAP, 0x11D
.equ MOVE_SKULL_BASH, 0x82
.equ MOVE_SKY_ATTACK, 0x8F
.equ MOVE_SKY_DROP, 0x1FB
.equ MOVE_SKY_UPPERCUT, 0x147
.equ MOVE_SLACK_OFF, 0x12F
.equ MOVE_SLAM, 0x15
.equ MOVE_SLASH, 0xA3
.equ MOVE_SLEEP_POWDER, 0x4F
.equ MOVE_SLEEP_TALK, 0xD6
.equ MOVE_SLUDGE, 0x7C
.equ MOVE_SLUDGE_BOMB, 0xBC
.equ MOVE_SLUDGE_WAVE, 0x1E2
.equ MOVE_SMACK_DOWN, 0x1DF
.equ MOVE_SMART_STRIKE, 0x2AC
.equ MOVE_SMELLING_SALTS, 0x109
.equ MOVE_SMOG, 0x7B
.equ MOVE_SMOKESCREEN, 0x6C
.equ MOVE_SNARL, 0x22B
.equ MOVE_SNATCH, 0x121
.equ MOVE_SNORE, 0xAD
.equ MOVE_SPIKY_SHIELD, 0x254
.equ MOVE_SOAK, 0x1E7
.equ MOVE_SOFTBOILED, 0x87
.equ MOVE_SOLAR_BEAM, 0x4C
.equ MOVE_SONIC_BOOM, 0x31
.equ MOVE_SPACIAL_REND, 0x1CC
.equ MOVE_SPARK, 0xD1
.equ MOVE_SPARKLING_ARIA, 0x298
.equ MOVE_SPECTRAL_THIEF, 0x2C8
.equ MOVE_SPIDER_WEB, 0xA9
.equ MOVE_SPIKE_CANNON, 0x83
.equ MOVE_SPIKES, 0xBF
.equ MOVE_SPIT_UP, 0xFF
.equ MOVE_SPITE, 0xB4
.equ MOVE_SPLASH, 0x96
.equ MOVE_SPORE, 0x93
.equ MOVE_STEALTH_ROCK, 0x1BE
.equ MOVE_STEAM_ERUPTION, 0x250
.equ MOVE_STEEL_WING, 0xD3
.equ MOVE_STICKY_WEB, 0x234
.equ MOVE_STOCKPILE, 0xFE
.equ MOVE_STOMP, 0x17
.equ MOVE_STOMPING_TANTRUM, 0x2C3
.equ MOVE_STONE_EDGE, 0x1BC
.equ MOVE_STORED_POWER, 0x1F4
.equ MOVE_STORM_THROW, 0x1E0
.equ MOVE_STEAMROLLER, 0x219
.equ MOVE_STRENGTH, 0x46
.equ MOVE_STRING_SHOT, 0x51
.equ MOVE_STRUGGLE, 0xA5
.equ MOVE_STRUGGLE_BUG, 0x20A
.equ MOVE_STUN_SPORE, 0x4E
.equ MOVE_SUBMISSION, 0x42
.equ MOVE_SUBSTITUTE, 0xA4
.equ MOVE_SUCKER_PUNCH, 0x185
.equ MOVE_SUNNY_DAY, 0xF1
.equ MOVE_SUNSTEEL_STRIKE, 0x2C9
.equ MOVE_SUPER_FANG, 0xA2
.equ MOVE_SUPERPOWER, 0x114
.equ MOVE_SUPERSONIC, 0x30
.equ MOVE_SURF, 0x39
.equ MOVE_SWAGGER, 0xCF
.equ MOVE_SWALLOW, 0x100
.equ MOVE_SWEET_KISS, 0xBA
.equ MOVE_SWEET_SCENT, 0xE6
.equ MOVE_SWIFT, 0x81
.equ MOVE_SWITCHEROO, 0x19F
.equ MOVE_SWORDS_DANCE, 0xE
.equ MOVE_SYNCHRONOISE, 0x1E5
.equ MOVE_SYNTHESIS, 0xEB
.equ MOVE_TACKLE, 0x21
.equ MOVE_TAIL_GLOW, 0x126
.equ MOVE_TAIL_SLAP, 0x21D
.equ MOVE_TAIL_WHIP, 0x27
.equ MOVE_TAILWIND, 0x16E
.equ MOVE_TAKE_DOWN, 0x24
.equ MOVE_TAUNT, 0x10D
.equ MOVE_TEARFUL_LOOK, 0x2CB
.equ MOVE_TECHNO_BLAST, 0x222
.equ MOVE_TEETER_DANCE, 0x12A
.equ MOVE_TELEKINESIS, 0x1DD
.equ MOVE_TELEPORT, 0x64
.equ MOVE_THIEF, 0xA8
.equ MOVE_THOUSAND_ARROWS, 0x266
.equ MOVE_THOUSAND_WAVES, 0x267
.equ MOVE_THRASH, 0x25
.equ MOVE_THUNDER, 0x57
.equ MOVE_THUNDER_FANG, 0x1A6
.equ MOVE_THUNDER_PUNCH, 0x9
.equ MOVE_THUNDER_SHOCK, 0x54
.equ MOVE_THUNDER_WAVE, 0x56
.equ MOVE_THUNDERBOLT, 0x55
.equ MOVE_TICKLE, 0x141
.equ MOVE_TOPSYTURVY, 0x240
.equ MOVE_TORMENT, 0x103
.equ MOVE_TOXIC, 0x5C
.equ MOVE_TOXIC_SPIKES, 0x186
.equ MOVE_TRANSFORM, 0x90
.equ MOVE_TRI_ATTACK, 0xA1
.equ MOVE_TRICK, 0x10F
.equ MOVE_TRICKORTREAT, 0x237
.equ MOVE_TRICK_ROOM, 0x1B1
.equ MOVE_TRIPLE_KICK, 0xA7
.equ MOVE_TROP_KICK, 0x2B0
.equ MOVE_TRUMP_CARD, 0x178
.equ MOVE_TWINEEDLE, 0x29
.equ MOVE_TWISTER, 0xEF
.equ MOVE_UTURN, 0x171
.equ MOVE_UPROAR, 0xFD
.equ MOVE_VCREATE, 0x22D
.equ MOVE_VACUUM_WAVE, 0x19A
.equ MOVE_VENOM_DRENCH, 0x257
.equ MOVE_VENOSHOCK, 0x1DA
.equ MOVE_VICE_GRIP, 0xB
.equ MOVE_VINE_WHIP, 0x16
.equ MOVE_VITAL_THROW, 0xE9
.equ MOVE_VOLT_SWITCH, 0x209
.equ MOVE_VOLT_TACKLE, 0x158
.equ MOVE_WAKEUP_SLAP, 0x166
.equ MOVE_WATER_GUN, 0x37
.equ MOVE_WATER_PLEDGE, 0x206
.equ MOVE_WATER_PULSE, 0x160
.equ MOVE_WATER_SPORT, 0x15A
.equ MOVE_WATER_SPOUT, 0x143
.equ MOVE_WATERFALL, 0x7F
.equ MOVE_WATER_SHURIKEN, 0x252
.equ MOVE_WEATHER_BALL, 0x137
.equ MOVE_WHIRLPOOL, 0xFA
.equ MOVE_WHIRLWIND, 0x12
.equ MOVE_WIDE_GUARD, 0x1D5
.equ MOVE_WILD_CHARGE, 0x210
.equ MOVE_WILLOWISP, 0x105
.equ MOVE_WING_ATTACK, 0x11
.equ MOVE_WISH, 0x111
.equ MOVE_WITHDRAW, 0x6E
.equ MOVE_WONDER_ROOM, 0x1D8
.equ MOVE_WOOD_HAMMER, 0x1C4
.equ MOVE_WORK_UP, 0x20E
.equ MOVE_WORRY_SEED, 0x184
.equ MOVE_WRAP, 0x23
.equ MOVE_WRING_OUT, 0x17A
.equ MOVE_XSCISSOR, 0x194
.equ MOVE_YAWN, 0x119
.equ MOVE_ZAP_CANNON, 0xC0
.equ MOVE_ZEN_HEADBUTT, 0x1AC
.equ MOVE_FLEUR_CANNON, 0x2C1
.equ MOVE_BODY_PRESS, 0x2D0
.equ MOVE_SNAP_TRAP, 0x2D1
.equ MOVE_SHELL_SIDE_ARM, 0x2D2
.equ MOVE_FREEZING_GLARE, 0x2D3
.equ MOVE_THUNDEROUS_KICK, 0x2D4
.equ MOVE_FIERY_WRATH, 0x2D5
.equ MOVE_STRANGE_STEAM, 0x2D6
.equ MOVE_EERIE_SPELL, 0x2D7
.equ MOVE_CHILLY_RECEPTION, 0x2D8
.equ MOVE_ZIPPY_ZAP, 0x2D9
.equ MOVE_ZING_ZAP, 0x2CC
.equ MOVE_CHLOROBLAST, 0x2DA
.equ MOVE_INFERNAL_PARADE, 0x2DB
.equ MOVE_BARB_BARRAGE, 0x2DC
.equ MOVE_PSYSHIELD_BASH, 0x2DD
.equ MOVE_CEASELESS_EDGE, 0x2DE
.equ MOVE_ESPER_WING, 0x2DF
.equ MOVE_TRIPLE_ARROW, 0x2E0
.equ MOVE_SHELL_SIDE_ARM_PHYSICAL, 0x2E1
.equ MOVE_EXPANDING_FORCE, 0x2E2
.equ MOVE_PHOTON_GEYSER, 0x2E3
.equ MOVE_CLANGOROUS_SOUL, 0x2E4
.equ MOVE_MIND_BLOW, 0x2E5
.equ MOVE_PLASMA_FISTS, 0x2E6
.equ MOVE_DOUBLE_IRON_BASH, 0x2E7
.equ MOVE_THUNDER_CAGE, 0x2E8
.equ MOVE_DRAGON_ENERGY, 0x2E9
.equ MOVE_COACHING, 0x2EA
.equ MOVE_MISTY_EXPLOSION, 0x2EB
.equ MOVE_METEOR_ASSAULT, 0x2EC
.equ MOVE_OBSTRUCT, 0x2ED
.equ MOVE_RAGING_FURY, 0x2Ee
.equ MOVE_DIRE_CLAW, 0x2EF
.equ MOVE_VICTORY_DANCE, 0x2F0
.equ MOVE_BITTER_MALICE, 0x2F1
.equ MOVE_SHELTER, 0x2F2
.equ MOVE_MOUNTAIN_GALE, 0x2F3

@weather
.equ weather_rain, 0x1
.equ weather_downpour, 0x2
.equ weather_permament_rain, 0x4
.equ weather_sandstorm, 0x8
.equ weather_permament_sandstorm, 0x10
.equ weather_sun, 0x20
.equ weather_permament_sun, 0x40
.equ weather_hail, 0x80
.equ weather_permament_hail, 0x100
.equ weather_fog, 0x200
.equ weather_permament_fog, 0x400
.equ weather_harsh_sun, 0x800
.equ weather_heavy_rain, 0x1000
.equ weather_air_current, 0x2000
.equ chilly_reception_hail, 0x4000

@split
.equ SPLIT_PHYSICAL, 0
.equ SPLIT_SPECIAL, 1
.equ SPLIT_STATUS, 2

@stats
.equ STAT_HP, 0
.equ STAT_ATK, 1
.equ STAT_DEF, 2
.equ STAT_SPD, 3
.equ STAT_SP_ATK, 4
.equ STAT_SP_DEF, 5
.equ STAT_ACC, 6
.equ STAT_EVASION, 7

@main status
.equ STATUS_SLEEP, 7
.equ STATUS_POISON, 8
.equ STATUS_BURN, 0x10
.equ STATUS_FREEZE, 0x20
.equ STATUS_PARALYSIS, 0x40
.equ STATUS_BAD_POISON, 0x80
.equ STATUS_CONFUSION, 0x1

@secondary status
.equ STATUS2_CONFUSION,        0x7
.equ STATUS2_FLINCHED,         0x8
.equ STATUS2_UPROAR,           0x70
.equ STATUS2_FLAG_X80,         0x80
.equ STATUS2_BIDE,             0x300
.equ STATUS2_LOCKED_AND_CONFUSE, 0xC00
.equ STATUS2_MULTIPLETURNS,    0x1000
.equ STATUS2_WRAPPED,          0xE000
.equ STATUS2_INLOVE,           0xF0000
.equ STATUS2_PUMPEDUP,         0x100000
.equ STATUS2_TRANSFORMED,      0x200000
.equ STATUS2_RECHARGE,         0x400000
.equ STATUS2_RAGED,            0x800000
.equ STATUS2_SUBSTITUTE,       0x1000000
.equ STATUS2_DESTINNY_BOND,    0x2000000
.equ STATUS2_TRAPPED,          0x4000000
.equ STATUS2_NIGHTMARE,        0x8000000
.equ STATUS2_CURSED,           0x10000000
.equ STATUS2_IDENTIFIED,       0x20000000
.equ STATUS2_CURLED,           0x40000000
.equ STATUS2_TORMENTED,        0x80000000

@status 3
.equ STATUS3_SEEDED, 			0x4
.equ STATUS3_ALWAYS_HITS,       0xC //2 bits
.equ STATUS3_LOCKON,	 		0x10
.equ STATUS3_PERISHSONG, 		0x20
.equ STATUS3_ONAIR, 			0x40
.equ STATUS3_UNDERGROUND, 		0x80
.equ STATUS3_MINIMIZED,         0x100 //1 bit
.equ STATUS3_CHARGED, 			0x200
.equ STATUS3_ROOTED, 			0x400
.equ STATUS3_YAWN, 				0x1800
.equ STATUS3_IMPRISONED, 		0x2000
.equ STATUS3_GRUDGE,            0x4000 //1 bit
.equ STATUS3_ATK_CANT_CRT,      0x8000 //1 bit
.equ STATUS3_MUDSPORT, 			0x10000
.equ STATUS3_WATERSPORT, 		0x20000
.equ STATUS3_UNDERWATER, 		0x40000
.equ STATUS3_SWITCHINLOCK,      0x80000 //1 bit
.equ STATUS3_UNBURDEN,          0x100000 //1 bit
.equ STATUS3_DISAPPEARED, 		0x200000
.equ STATUS3_FOCUS_PUNCH_CHARGE,0x400000 //1 bit
.equ STATUS3_INNERSWITCHINLOCK, 0x800000 //1 bit

@side affecting
.equ SIDE_REFLECT, 0x1
.equ SIDE_LIGHTSCREEN, 0x2
.equ SIDE_SPIKES, 0x10
.equ SIDE_SAFEGUARD, 0x20
.equ SIDE_FUTUREATTACK, 0x40
.equ SIDE_MIST, 0x100

@item effects
.equ ITEM_EFFECT_ORANBERRY, 1
.equ ITEM_EFFECT_CHERIBERRY, 2
.equ ITEM_EFFECT_CHESTOBERRY, 3
.equ ITEM_EFFECT_PECHABERRY, 4
.equ ITEM_EFFECT_RAWSTBERRY, 5
.equ ITEM_EFFECT_ASPEARBERRY, 6
.equ ITEM_EFFECT_LEPPABERRY, 7
.equ ITEM_EFFECT_PERSIMBERRY, 8
.equ ITEM_EFFECT_LUMBERRY, 9
.equ ITEM_EFFECT_FIGYBERRY, 0xA
.equ ITEM_EFFECT_WIKIBERRY, 0xB
.equ ITEM_EFFECT_MAGOBERRY, 0xC
.equ ITEM_EFFECT_AGUAVBERRY, 0xD
.equ ITEM_EFFECT_IAPAPABERRY, 0xE
.equ ITEM_EFFECT_LIECHIBERRY, 0xF
.equ ITEM_EFFECT_GANLONBERRY, 0x10
.equ ITEM_EFFECT_SALACBERRY, 0x11
.equ ITEM_EFFECT_PETAYABERRY, 0x12
.equ ITEM_EFFECT_APICOTBERRY, 0x13
.equ ITEM_EFFECT_LANSATBERRY, 0x14
.equ ITEM_EFFECT_STARFBERRY, 0x15
.equ ITEM_EFFECT_BRIGHTPOWDER, 0x16
.equ ITEM_EFFECT_WHITEHERB, 0x17
.equ ITEM_EFFECT_MACHOBRACE, 0x18
.equ ITEM_EFFECT_EXPSHARE, 0x19
.equ ITEM_EFFECT_QUICKCLAW, 0x1A
.equ ITEM_EFFECT_SOOTHEBELL, 0x1B
.equ ITEM_EFFECT_MENTALHERB, 0x1C
.equ ITEM_EFFECT_CHOICEBAND, 0x1D
.equ ITEM_EFFECT_KINGSROCK, 0x1E
.equ ITEM_EFFECT_SILVERPOWDER, 0x1F
.equ ITEM_EFFECT_AMULETCOIN, 0x20
.equ ITEM_EFFECT_CLENSEATAG, 0x21
.equ ITEM_EFFECT_SOULDEW, 0x22
.equ ITEM_EFFECT_DEEPSEATOOTH, 0x23
.equ ITEM_EFFECT_DEEPSEASCALE, 0x24
.equ ITEM_EFFECT_SMOKEBALL, 0x25
.equ ITEM_EFFECT_EVERSTONE, 0x26
.equ ITEM_EFFECT_FOCUSBAND, 0x27
.equ ITEM_EFFECT_LUCKYEGG, 0x28
.equ ITEM_EFFECT_SCOPELENS, 0x29
.equ ITEM_EFFECT_METALCOAT, 0x2A
.equ ITEM_EFFECT_LEFTOVERS, 0x2B
.equ ITEM_EFFECT_DRAGONSCALE, 0x2C
.equ ITEM_EFFECT_LIGHTBALL, 0x2D
.equ ITEM_EFFECT_SOFTSAND, 0x2E
.equ ITEM_EFFECT_HARDSTONE, 0x2F
.equ ITEM_EFFECT_MIRACLESEED, 0x30
.equ ITEM_EFFECT_BLACKGLASSES, 0x31
.equ ITEM_EFFECT_BLACKBELT, 0x32
.equ ITEM_EFFECT_MAGNET, 0x33
.equ ITEM_EFFECT_MYSTICWATER, 0x34
.equ ITEM_EFFECT_SHARPBEAK, 0x35
.equ ITEM_EFFECT_POISONBARB, 0x36
.equ ITEM_EFFECT_NEVERMELTICE, 0x37
.equ ITEM_EFFECT_SPELLTAG, 0x38
.equ ITEM_EFFECT_TWISTEDSPOON, 0x39
.equ ITEM_EFFECT_CHARCOAL, 0x3A
.equ ITEM_EFFECT_DRAGONFANG, 0x3B
.equ ITEM_EFFECT_SILKSCARF, 0x3C
.equ ITEM_EFFECT_UPGRADE, 0x3D
.equ ITEM_EFFECT_SHELLBELL, 0x3E
.equ ITEM_EFFECT_LUCKYPUNCH, 0x3F
.equ ITEM_EFFECT_METALPOWDER, 0x40
.equ ITEM_EFFECT_THICKCLUB, 0x41
.equ ITEM_EFFECT_STICK, 0x42
.equ ITEM_EFFECT_FAIRYPLATE, 0x46
.equ ITEM_EFFECT_CHOICESPECS, 0x47
.equ ITEM_EFFECT_ADAMANTORB, 0x48
.equ ITEM_EFFECT_GRISEOUSORB, 0x49
.equ ITEM_EFFECT_LIFEORB, 0x4A
.equ ITEM_EFFECT_LUSTROUSORB, 0x4B
.equ ITEM_EFFECT_EVIOLITE, 0x4C
.equ ITEM_EFFECT_ASSAULTVEST, 0x4D
.equ ITEM_EFFECT_MUSCLEBAND, 0x4E
.equ ITEM_EFFECT_WISEGLASSES, 0x4F
.equ ITEM_EFFECT_BURNDRIVE, 0x50
.equ ITEM_EFFECT_CHILLDRIVE, 0x51
.equ ITEM_EFFECT_DOUSEDRIVE, 0x52
.equ ITEM_EFFECT_SHOCKDRIVE, 0x53
.equ ITEM_EFFECT_RINGTARGET, 0x54
.equ ITEM_EFFECT_EXPERTBELT, 0x55
.equ ITEM_EFFECT_OCCABERRY, 0x56
.equ ITEM_EFFECT_PASSHOBERRY, 0x57
.equ ITEM_EFFECT_WACANBERRY, 0x58
.equ ITEM_EFFECT_RINDOBERRY, 0x59
.equ ITEM_EFFECT_YACHEBERRY, 0x5A
.equ ITEM_EFFECT_CHOPLEBERRY, 0x5B
.equ ITEM_EFFECT_KEBIABERRY, 0x5C
.equ ITEM_EFFECT_SHUCABERRY, 0x5D
.equ ITEM_EFFECT_COBABERRY, 0x5E
.equ ITEM_EFFECT_PAPAYABERRY, 0x5F
.equ ITEM_EFFECT_TANGABERRY, 0x60
.equ ITEM_EFFECT_CHARTIBERRY, 0x61
.equ ITEM_EFFECT_KASIBBERRY, 0x62
.equ ITEM_EFFECT_HABANBERRY, 0x63
.equ ITEM_EFFECT_COLBURBERRY, 0x64
.equ ITEM_EFFECT_BABIRIBERRY, 0x65
.equ ITEM_EFFECT_ROSELIBERRY, 0x66
.equ ITEM_EFFECT_CHILANBERRY, 0x67
.equ ITEM_EFFECT_WIDELENS, 0x68
.equ ITEM_EFFECT_ZOOMLENS, 0x69
.equ ITEM_EFFECT_FOCUSSASH, 0x6A
.equ ITEM_EFFECT_SAFETYGOOGLES, 0x6B
.equ ITEM_EFFECT_CHOICESCARF, 0x6C
.equ ITEM_EFFECT_LAGGINGTAIL, 0x6D
.equ ITEM_EFFECT_FLOATSTONE, 0x6E
.equ ITEM_EFFECT_METRONOME, 0x6F
.equ ITEM_EFFECT_IRONBALL, 0x70
.equ ITEM_EFFECT_AIRBALLOON, 0x71
.equ ITEM_EFFECT_HEATROCK, 0x72
.equ ITEM_EFFECT_DAMPROCK, 0x73
.equ ITEM_EFFECT_SMOOTHROCK, 0x74
.equ ITEM_EFFECT_ICYROCK, 0x75
.equ ITEM_EFFECT_SITRUSBERRY, 0x76
.equ ITEM_EFFECT_BLACKSLUDGE, 0x77
.equ ITEM_EFFECT_STICKYBARB, 0x78
.equ ITEM_EFFECT_FLAMEORB, 0x79
.equ ITEM_EFFECT_TOXICORB, 0x7A
.equ ITEM_EFFECT_WEAKNESSPOLICY, 0x7B
.equ ITEM_EFFECT_EJECTBUTTON, 0x7C
.equ ITEM_EFFECT_REDCARD, 0x7D
.equ ITEM_EFFECT_ROCKYHELMET, 0x7E
.equ ITEM_EFFECT_LIGHTCLAY, 0x7F
.equ ITEM_EFFECT_DESTINYKNOT, 0x80
.equ ITEM_EFFECT_LUMINOUSMOSS, 0x81
.equ ITEM_EFFECT_CELLBATTERY, 0x82
.equ ITEM_EFFECT_SNOWBALL, 0x83
.equ ITEM_EFFECT_ABSORBBULB, 0x84
.equ ITEM_EFFECT_QUICKPOWDER, 0x85
.equ ITEM_EFFECT_BIGROOT, 0x86
.equ ITEM_EFFECT_BINDINGBAND, 0x87
.equ ITEM_EFFECT_GRIPCLAW, 0x88
.equ ITEM_EFFECT_CUSTAPBERRY, 0x89
.equ ITEM_EFFECT_POWERHERB, 0x8A
.equ ITEM_EFFECT_MEGASTONE, 0x8B
.equ ITEM_EFFECT_DRIVES, 0x8C
.equ ITEM_EFFECT_PRIMALORB, 0x8D
.equ ITEM_EFFECT_SHEDSHELL, 0x8E
.equ ITEM_EFFECT_GEM, 0x8F
.equ ITEM_EFFECT_DAM_REDUX_BERRY, 0x90
.equ ITEM_EFFECT_PLATES, 0x91
.equ ITEM_EFFECT_KEEBERRY, 0x99
.equ ITEM_EFFECT_MARANGABERRY, 0x9A
.equ ITEM_EFFECT_MICLEBERRY, 0x9B
.equ ITEM_EFFECT_JABOCABERRY, 0x9C
.equ ITEM_EFFECT_ROWAPBERRY, 0x9D
.equ ITEM_EFFECT_THROATSPRAY, 0x9E
.equ ITEM_EFFECT_BLUNDERPOLICY, 0x9F
.equ ITEM_EFFECT_EJECTPACK, 0xA0
.equ ITEM_EFFECT_ADRENALINE_ORB, 0xA1
.equ ITEM_EFFECT_LUCK_INCENSE, 0xA2
.equ ITEM_EFFECT_FULL_INCENSE, 0xA3
.equ ITEM_EFFECT_ODD_INCENSE, 0xA4
.equ ITEM_EFFECT_ROCK_INCENSE, 0xA5
.equ ITEM_EFFECT_ROSE_INCENSE, 0xA6
.equ ITEM_EFFECT_WAVE_INCENSE, 0xA7
.equ ITEM_EFFECT_RAZOR_CLAW, 0xA8
.equ ITEM_EFFECT_ROOMSERVICE, 0xA9
.equ ITEM_EFFECT_HEAVYDUTYBOOTS, 0xAA
.equ ITEM_EFFECT_UTILITYUMBRELLA, 171
.equ ITEM_EFFECT_SEAINCENSE, 172

@strings

.equ Space, 0x00
.equ JumpLine, 0xFE
.equ BuffCharac, 0xFD
.equ Apos, 0xB4
.equ Comma, 0xB8
.equ Dot, 0xAD
.equ Exclam, 0xAB
.equ Interro, 0xAC
.equ Termin, 0xFF
.equ Dash, 0xAE
.equ Slash, 0xBA

.equ Poke_e, 0x1B

.equ A_, 0xBB
.equ B_, 0xBC
.equ C_, 0xBD
.equ D_, 0xBE
.equ E_, 0xBF
.equ F_, 0xC0
.equ G_, 0xC1
.equ H_, 0xC2
.equ I_, 0xC3
.equ J_, 0xC4
.equ K_, 0xC5
.equ L_, 0xC6
.equ M_, 0xC7
.equ N_, 0xC8
.equ O_, 0xC9
.equ P_, 0xCA
.equ Q_, 0xCB
.equ R_, 0xCC
.equ S_, 0xCD
.equ T_, 0xCE
.equ U_, 0xCF
.equ V_, 0xD0
.equ W_, 0xD1
.equ X_, 0xD2
.equ Y_, 0xD3
.equ Z_, 0xD4

.equ a_, 0xD5
.equ b_, 0xD6
.equ c_, 0xD7
.equ d_, 0xD8
.equ e_, 0xD9
.equ f_, 0xDA
.equ g_, 0xDB
.equ h_, 0xDC
.equ i_, 0xDD
.equ j_, 0xDE
.equ k_, 0xDF
.equ l_, 0xE0
.equ m_, 0xE1
.equ n_, 0xE2
.equ o_, 0xE3
.equ p_, 0xE4
.equ q_, 0xE5
.equ r_, 0xE6
.equ s_, 0xE7
.equ t_, 0xE8
.equ u_, 0xE9
.equ v_, 0xEA
.equ w_, 0xEB
.equ x_, 0xEC
.equ y_, 0xED
.equ z_, 0xEE
