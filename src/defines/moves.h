#ifndef MOVE_IDS_H
#define MOVE_IDS_H

#define move_target_selected 0
#define move_target_depends 1
#define move_target_random 4
#define move_target_both 8
#define move_target_user 0x10
#define move_target_foes_and_ally 0x20
#define move_target_opponent_field 0x40

#define MOVE_CONFUSION_DMG ((sizeof(move_table) / sizeof(struct move_info)))
#define MOVE_ABSORB 0x47
#define MOVE_ACID 0x33
#define MOVE_ACID_ARMOR 0x97
#define MOVE_ACID_SPRAY 0x1EB
#define MOVE_ACROBATICS 0x200
#define MOVE_ACUPRESSURE 0x16F
#define MOVE_AERIAL_ACE 0x14C
#define MOVE_AEROBLAST 0xB1
#define MOVE_AFTER_YOU 0x1EF
#define MOVE_AGILITY 0x61
#define MOVE_AIR_CUTTER 0x13A
#define MOVE_AIR_SLASH 0x193
#define MOVE_ALLY_SWITCH 0x1F6
#define MOVE_AMNESIA 0x85
#define MOVE_ANCIENT_POWER 0xF6
#define MOVE_AQUA_JET 0x1C5
#define MOVE_AQUA_RING 0x188
#define MOVE_AQUA_TAIL 0x191
#define MOVE_ARM_THRUST 0x124
#define MOVE_AROMATHERAPY 0x138
#define MOVE_AROMATIC_MIST 0x255
#define MOVE_ASSIST 0x112
#define MOVE_ASSURANCE 0x174
#define MOVE_ASTONISH 0x136
#define MOVE_ATTACK_ORDER 0x1C6
#define MOVE_ATTRACT 0xD5
#define MOVE_AURA_SPHERE 0x18C
#define MOVE_AURORA_BEAM 0x3E
#define MOVE_AUTOTOMIZE 0x1DB
#define MOVE_AVALANCHE 0x1A3
#define MOVE_BABYDOLL_EYES 0x260
#define MOVE_BARRAGE 0x8C
#define MOVE_BARRIER 0x70
#define MOVE_BATON_PASS 0xE2
#define MOVE_BEAT_UP 0xFB
#define MOVE_BELCH 0x232
#define MOVE_BELLY_DRUM 0xBB
#define MOVE_BESTOW 0x204
#define MOVE_BIDE 0x75
#define MOVE_BIND 0x14
#define MOVE_BITE 0x2C
#define MOVE_BLAST_BURN 0x133
#define MOVE_BLAZE_KICK 0x12B
#define MOVE_BLIZZARD 0x3B
#define MOVE_BLOCK 0x14F
#define MOVE_BLUE_FLARE 0x227
#define MOVE_BODY_SLAM 0x22
#define MOVE_BOLT_STRIKE 0x226
#define MOVE_BONE_CLUB 0x7D
#define MOVE_BONE_RUSH 0xC6
#define MOVE_BONEMERANG 0x9B
#define MOVE_BOOMBURST 0x24A
#define MOVE_BOUNCE 0x154
#define MOVE_BRAVE_BIRD 0x19D
#define MOVE_BRICK_BREAK 0x118
#define MOVE_BRINE 0x16A
#define MOVE_BUBBLE 0x91
#define MOVE_BUBBLE_BEAM 0x3D
#define MOVE_BUG_BITE 0x1C2
#define MOVE_BUG_BUZZ 0x195
#define MOVE_BULK_UP 0x153
#define MOVE_BULLDOZE 0x20B
#define MOVE_BULLET_PUNCH 0x1A2
#define MOVE_BULLET_SEED 0x14B
#define MOVE_CALM_MIND 0x15B
#define MOVE_CAMOUFLAGE 0x125
#define MOVE_CAPTIVATE 0x1BD
#define MOVE_CELEBRATE 0x25E
#define MOVE_CHARGE 0x10C
#define MOVE_CHARGE_BEAM 0x1C3
#define MOVE_CHARM 0xCC
#define MOVE_CHATTER 0x1C0
#define MOVE_CHIP_AWAY 0x1F2
#define MOVE_CIRCLE_THROW 0x1FD
#define MOVE_CLAMP 0x80
#define MOVE_CLEAR_SMOG 0x1F3
#define MOVE_CLOSE_COMBAT 0x172
#define MOVE_COIL 0x1E9
#define MOVE_COMET_PUNCH 0x4
#define MOVE_CONFIDE 0x24E
#define MOVE_CONFUSE_RAY 0x6D
#define MOVE_CONFUSION 0x5D
#define MOVE_CONSTRICT 0x84
#define MOVE_CONVERSION 0xA0
#define MOVE_CONVERSION_2 0xB0
#define MOVE_COPYCAT 0x17F
#define MOVE_COSMIC_POWER 0x142
#define MOVE_COTTON_GUARD 0x21A
#define MOVE_COTTON_SPORE 0xB2
#define MOVE_COUNTER 0x44
#define MOVE_COVET 0x157
#define MOVE_CRABHAMMER 0x98
#define MOVE_CRAFTY_SHIELD 0x242
#define MOVE_CROSS_CHOP 0xEE
#define MOVE_CROSS_POISON 0x1B8
#define MOVE_CRUNCH 0xF2
#define MOVE_CRUSH_CLAW 0x132
#define MOVE_CRUSH_GRIP 0x1CE
#define MOVE_CURSE 0xAE
#define MOVE_CUT 0xF
#define MOVE_DARK_PULSE 0x18F
#define MOVE_DARK_VOID 0x1D0
#define MOVE_DAZZLING_GLEAM 0x25D
#define MOVE_DEFEND_ORDER 0x1C7
#define MOVE_DEFENSE_CURL 0x6F
#define MOVE_DEFOG 0x1B0
#define MOVE_DESTINY_BOND 0xC2
#define MOVE_DETECT 0xC5
#define MOVE_DIAMOND_STORM 0x24F
#define MOVE_DIG 0x5B
#define MOVE_DISABLE 0x32
#define MOVE_DISARMING_VOICE 0x23E
#define MOVE_DISCHARGE 0x1B3
#define MOVE_DIVE 0x123
#define MOVE_DIZZY_PUNCH 0x92
#define MOVE_DOOM_DESIRE 0x161
#define MOVE_DOUBLEEDGE 0x26
#define MOVE_DOUBLE_HIT 0x1CA
#define MOVE_DOUBLE_KICK 0x18
#define MOVE_DOUBLE_SLAP 0x3
#define MOVE_DOUBLE_TEAM 0x68
#define MOVE_DRACO_METEOR 0x1B2
#define MOVE_DRAGON_ASCENT 0x26C
#define MOVE_DRAGON_BREATH 0xE1
#define MOVE_DRAGON_CLAW 0x151
#define MOVE_DRAGON_DANCE 0x15D
#define MOVE_DRAGON_PULSE 0x196
#define MOVE_DRAGON_RAGE 0x52
#define MOVE_DRAGON_RUSH 0x197
#define MOVE_DRAGON_TAIL 0x20D
#define MOVE_DRAINING_KISS 0x241
#define MOVE_DRAIN_PUNCH 0x199
#define MOVE_DREAM_EATER 0x8A
#define MOVE_DRILL_PECK 0x41
#define MOVE_DRILL_RUN 0x211
#define MOVE_DUAL_CHOP 0x212
#define MOVE_DYNAMIC_PUNCH 0xDF
#define MOVE_EARTH_POWER 0x19E
#define MOVE_EARTHQUAKE 0x59
#define MOVE_ECHOED_VOICE 0x1F1
#define MOVE_EERIE_IMPULSE 0x256
#define MOVE_EGG_BOMB 0x79
#define MOVE_ELECTRIC_TERRAIN 0x25C
#define MOVE_ELECTRIFY 0x246
#define MOVE_ELECTRO_BALL 0x1E6
#define MOVE_ELECTROWEB 0x20F
#define MOVE_EMBARGO 0x175
#define MOVE_EMBER 0x34
#define MOVE_ENCORE 0xE3
#define MOVE_ENDEAVOR 0x11B
#define MOVE_ENDURE 0xCB
#define MOVE_ENERGY_BALL 0x19C
#define MOVE_ENTRAINMENT 0x1EE
#define MOVE_ERUPTION 0x11C
#define MOVE_EXPLOSION 0x99
#define MOVE_EXTRASENSORY 0x146
#define MOVE_EXTREME_SPEED 0xF5
#define MOVE_FACADE 0x107
#define MOVE_FEINT_ATTACK 0xB9
#define MOVE_FAIRY_LOCK 0x24B
#define MOVE_FAIRY_WIND 0x248
#define MOVE_FAKE_OUT 0xFC
#define MOVE_FAKE_TEARS 0x139
#define MOVE_FALSE_SWIPE 0xCE
#define MOVE_FEATHER_DANCE 0x129
#define MOVE_FEINT 0x16C
#define MOVE_FELL_STINGER 0x235
#define MOVE_FIERY_DANCE 0x228
#define MOVE_FINAL_GAMBIT 0x203
#define MOVE_FIRE_BLAST 0x7E
#define MOVE_FIRE_FANG 0x1A8
#define MOVE_FIRE_PLEDGE 0x207
#define MOVE_FIRE_PUNCH 0x7
#define MOVE_FIRE_SPIN 0x53
#define MOVE_FISSURE 0x5A
#define MOVE_FLAIL 0xAF
#define MOVE_FLAME_BURST 0x1E1
#define MOVE_FLAME_CHARGE 0x1E8
#define MOVE_FLAME_WHEEL 0xAC
#define MOVE_FLAMETHROWER 0x35
#define MOVE_FLARE_BLITZ 0x18A
#define MOVE_FLASH 0x94
#define MOVE_FLASH_CANNON 0x1AE
#define MOVE_FLATTER 0x104
#define MOVE_FLING 0x176
#define MOVE_FLOWER_SHIELD 0x243
#define MOVE_FLY 0x13
#define MOVE_FLYING_PRESS 0x230
#define MOVE_FOCUS_BLAST 0x19B
#define MOVE_FOCUS_ENERGY 0x74
#define MOVE_FOCUS_PUNCH 0x108
#define MOVE_FOLLOW_ME 0x10A
#define MOVE_FORCE_PALM 0x18B
#define MOVE_FORESIGHT 0xC1
#define MOVE_FORESTS_CURSE 0x23B
#define MOVE_FOUL_PLAY 0x1EC
#define MOVE_FREEZEDRY 0x23D
#define MOVE_FREEZE_SHOCK 0x229
#define MOVE_FRENZY_PLANT 0x152
#define MOVE_FROST_BREATH 0x20C
#define MOVE_FRUSTRATION 0xDA
#define MOVE_FURY_ATTACK 0x1F
#define MOVE_FURY_CUTTER 0xD2
#define MOVE_FURY_SWIPES 0x9A
#define MOVE_FUSION_BOLT 0x22F
#define MOVE_FUSION_FLARE 0x22E
#define MOVE_FUTURE_SIGHT 0xF8
#define MOVE_GASTRO_ACID 0x17C
#define MOVE_GEAR_GRIND 0x220
#define MOVE_GEOMANCY 0x259
#define MOVE_GIGA_DRAIN 0xCA
#define MOVE_GIGA_IMPACT 0x1A0
#define MOVE_GLACIATE 0x225
#define MOVE_GLARE 0x89
#define MOVE_GRASS_KNOT 0x1BF
#define MOVE_GRASS_PLEDGE 0x208
#define MOVE_GRASS_WHISTLE 0x140
#define MOVE_GRASSY_TERRAIN 0x244
#define MOVE_GRAVITY 0x164
#define MOVE_GROWL 0x2D
#define MOVE_GROWTH 0x4A
#define MOVE_GRUDGE 0x120
#define MOVE_GUARD_SPLIT 0x1D6
#define MOVE_GUARD_SWAP 0x181
#define MOVE_GUILLOTINE 0xC
#define MOVE_GUNK_SHOT 0x1B9
#define MOVE_GUST 0x10
#define MOVE_GYRO_BALL 0x168
#define MOVE_HAIL 0x102
#define MOVE_HAMMER_ARM 0x167
#define MOVE_HAPPY_HOUR 0x25B
#define MOVE_HARDEN 0x6A
#define MOVE_HAZE 0x72
#define MOVE_HEAD_CHARGE 0x21F
#define MOVE_HEAD_SMASH 0x1C9
#define MOVE_HEADBUTT 0x1D
#define MOVE_HEAL_BELL 0xD7
#define MOVE_HEAL_BLOCK 0x179
#define MOVE_HEAL_ORDER 0x1C8
#define MOVE_HEAL_PULSE 0x1F9
#define MOVE_HEALING_WISH 0x169
#define MOVE_HEART_STAMP 0x213
#define MOVE_HEART_SWAP 0x187
#define MOVE_HEAT_CRASH 0x217
#define MOVE_HEAT_WAVE 0x101
#define MOVE_HEAVY_SLAM 0x1E4
#define MOVE_HELPING_HAND 0x10E
#define MOVE_HEX 0x1FA
#define MOVE_HIDDEN_POWER 0xED
#define MOVE_HIGH_JUMP_KICK 0x88
#define MOVE_HOLD_BACK 0x262
#define MOVE_HOLD_HANDS 0x267
#define MOVE_HONE_CLAWS 0x1D4
#define MOVE_HORN_ATTACK 0x1E
#define MOVE_HORN_DRILL 0x20
#define MOVE_HORN_LEECH 0x214
#define MOVE_HOWL 0x150
#define MOVE_HURRICANE 0x21E
#define MOVE_HYDRO_CANNON 0x134
#define MOVE_HYDRO_PUMP 0x38
#define MOVE_HYPER_BEAM 0x3F
#define MOVE_HYPER_FANG 0x9E
#define MOVE_HYPERSPACE_FURY 0x26D
#define MOVE_HYPERSPACE_HOLE 0x251
#define MOVE_HYPER_VOICE 0x130
#define MOVE_HYPNOSIS 0x5F
#define MOVE_ICE_BALL 0x12D
#define MOVE_ICE_BEAM 0x3A
#define MOVE_ICE_BURN 0x22A
#define MOVE_ICE_FANG 0x1A7
#define MOVE_ICE_PUNCH 0x8
#define MOVE_ICE_SHARD 0x1A4
#define MOVE_ICICLE_CRASH 0x22C
#define MOVE_ICICLE_SPEAR 0x14D
#define MOVE_ICY_WIND 0xC4
#define MOVE_IMPRISON 0x11E
#define MOVE_INCINERATE 0x1FE
#define MOVE_INFERNO 0x205
#define MOVE_INFESTATION 0x263
#define MOVE_INGRAIN 0x113
#define MOVE_ION_DELUGE 0x239
#define MOVE_IRON_DEFENSE 0x14E
#define MOVE_IRON_HEAD 0x1BA
#define MOVE_IRON_TAIL 0xE7
#define MOVE_JUDGMENT 0x1C1
#define MOVE_JUMP_KICK 0x1A
#define MOVE_KARATE_CHOP 0x2
#define MOVE_KINESIS 0x86
#define MOVE_KINGS_SHIELD 0x24C
#define MOVE_KNOCK_OFF 0x11A
#define MOVE_LANDS_WRATH 0x268
#define MOVE_LAST_RESORT 0x183
#define MOVE_LAVA_PLUME 0x1B4
#define MOVE_LEAF_BLADE 0x15C
#define MOVE_LEAF_STORM 0x1B5
#define MOVE_LEAF_TORNADO 0x218
#define MOVE_LEECH_LIFE 0x8D
#define MOVE_LEECH_SEED 0x49
#define MOVE_LEER 0x2B
#define MOVE_LICK 0x7A
#define MOVE_LIGHT_OF_RUIN 0x269
#define MOVE_LIGHT_SCREEN 0x71
#define MOVE_LOCKON 0xC7
#define MOVE_LOVELY_KISS 0x8E
#define MOVE_LOW_KICK 0x43
#define MOVE_LOW_SWEEP 0x1EA
#define MOVE_LUCKY_CHANT 0x17D
#define MOVE_LUNAR_DANCE 0x1CD
#define MOVE_LUSTER_PURGE 0x127
#define MOVE_MACH_PUNCH 0xB7
#define MOVE_MAGIC_COAT 0x115
#define MOVE_MAGIC_ROOM 0x1DE
#define MOVE_MAGICAL_LEAF 0x159
#define MOVE_MAGMA_STORM 0x1CF
#define MOVE_MAGNET_BOMB 0x1BB
#define MOVE_MAGNETIC_FLUX 0x25A
#define MOVE_MAGNET_RISE 0x189
#define MOVE_MAGNITUDE 0xDE
#define MOVE_MAT_BLOCK 0x231
#define MOVE_ME_FIRST 0x17E
#define MOVE_MEAN_LOOK 0xD4
#define MOVE_MEDITATE 0x60
#define MOVE_MEGA_DRAIN 0x48
#define MOVE_MEGA_KICK 0x19
#define MOVE_MEGA_PUNCH 0x5
#define MOVE_MEGAHORN 0xE0
#define MOVE_MEMENTO 0x106
#define MOVE_METAL_BURST 0x170
#define MOVE_METAL_CLAW 0xE8
#define MOVE_METAL_SOUND 0x13F
#define MOVE_METEOR_MASH 0x135
#define MOVE_METRONOME 0x76
#define MOVE_MILK_DRINK 0xD0
#define MOVE_MIMIC 0x66
#define MOVE_MIND_READER 0xAA
#define MOVE_MINIMIZE 0x6B
#define MOVE_MIRACLE_EYE 0x165
#define MOVE_MIRROR_COAT 0xF3
#define MOVE_MIRROR_MOVE 0x77
#define MOVE_MIRROR_SHOT 0x1AD
#define MOVE_MIST 0x36
#define MOVE_MIST_BALL 0x128
#define MOVE_MISTY_TERRAIN 0x245
#define MOVE_MOONBLAST 0x249
#define MOVE_MOONLIGHT 0xEC
#define MOVE_MORNING_SUN 0xEA
#define MOVE_MUDSLAP 0xBD
#define MOVE_MUD_BOMB 0x1AA
#define MOVE_MUD_SHOT 0x155
#define MOVE_MUD_SPORT 0x12C
#define MOVE_MUDDY_WATER 0x14A
#define MOVE_MYSTICAL_FIRE 0x253
#define MOVE_NASTY_PLOT 0x1A1
#define MOVE_NATURAL_GIFT 0x16B
#define MOVE_NATURE_POWER 0x10B
#define MOVE_NEEDLE_ARM 0x12E
#define MOVE_NIGHT_DAZE 0x21B
#define MOVE_NIGHT_SHADE 0x65
#define MOVE_NIGHT_SLASH 0x190
#define MOVE_NIGHTMARE 0xAB
#define MOVE_NOBLE_ROAR 0x238
#define MOVE_NUZZLE 0x261
#define MOVE_OBLIVION_WING 0x265
#define MOVE_OCTAZOOKA 0xBE
#define MOVE_ODOR_SLEUTH 0x13C
#define MOVE_OMINOUS_WIND 0x1D2
#define MOVE_ORIGIN_PULSE 0x26A
#define MOVE_OUTRAGE 0xC8
#define MOVE_OVERHEAT 0x13B
#define MOVE_PAIN_SPLIT 0xDC
#define MOVE_PARABOLIC_CHARGE 0x23A
#define MOVE_PARTING_SHOT 0x23F
#define MOVE_PAY_DAY 0x6
#define MOVE_PAYBACK 0x173
#define MOVE_PECK 0x40
#define MOVE_PERISH_SONG 0xC3
#define MOVE_PETAL_BLIZZARD 0x23C
#define MOVE_PETAL_DANCE 0x50
#define MOVE_PHANTOM_FORCE 0x236
#define MOVE_PIN_MISSILE 0x2A
#define MOVE_PLAY_NICE 0x24D
#define MOVE_PLAY_ROUGH 0x247
#define MOVE_PLUCK 0x16D
#define MOVE_POISON_FANG 0x131
#define MOVE_POISON_GAS 0x8B
#define MOVE_POISON_JAB 0x18E
#define MOVE_POISON_POWDER 0x4D
#define MOVE_POISON_STING 0x28
#define MOVE_POISON_TAIL 0x156
#define MOVE_POUND 0x1
#define MOVE_POWDER 0x258
#define MOVE_POWDER_SNOW 0xB5
#define MOVE_POWER_GEM 0x198
#define MOVE_POWER_SPLIT 0x1D7
#define MOVE_POWER_SWAP 0x180
#define MOVE_POWER_TRICK 0x17B
#define MOVE_POWERUP_PUNCH 0x264
#define MOVE_POWER_WHIP 0x1B6
#define MOVE_PRECIPICE_BLADES 0x26B
#define MOVE_PRESENT 0xD9
#define MOVE_PROTECT 0xB6
#define MOVE_PSYBEAM 0x3C
#define MOVE_PSYCH_UP 0xF4
#define MOVE_PSYCHIC 0x5E
#define MOVE_PSYCHO_BOOST 0x162
#define MOVE_PSYCHO_CUT 0x1AB
#define MOVE_PSYCHO_SHIFT 0x177
#define MOVE_PSYSHOCK 0x1D9
#define MOVE_PSYSTRIKE 0x21C
#define MOVE_PSYWAVE 0x95
#define MOVE_PUNISHMENT 0x182
#define MOVE_PURSUIT 0xE4
#define MOVE_QUASH 0x1FF
#define MOVE_QUICK_ATTACK 0x62
#define MOVE_QUICK_GUARD 0x1F5
#define MOVE_QUIVER_DANCE 0x1E3
#define MOVE_RAGE 0x63
#define MOVE_RAGE_POWDER 0x1DC
#define MOVE_RAIN_DANCE 0xF0
#define MOVE_RAPID_SPIN 0xE5
#define MOVE_RAZOR_LEAF 0x4B
#define MOVE_RAZOR_SHELL 0x216
#define MOVE_RAZOR_WIND 0xD
#define MOVE_RECOVER 0x69
#define MOVE_RECYCLE 0x116
#define MOVE_REFLECT 0x73
#define MOVE_REFLECT_TYPE 0x201
#define MOVE_REFRESH 0x11F
#define MOVE_RELIC_SONG 0x223
#define MOVE_REST 0x9C
#define MOVE_RETALIATE 0x202
#define MOVE_RETURN 0xD8
#define MOVE_REVENGE 0x117
#define MOVE_REVERSAL 0xB3
#define MOVE_ROAR 0x2E
#define MOVE_ROAR_OF_TIME 0x1CB
#define MOVE_ROCK_BLAST 0x15E
#define MOVE_ROCK_CLIMB 0x1AF
#define MOVE_ROCK_POLISH 0x18D
#define MOVE_ROCK_SLIDE 0x9D
#define MOVE_ROCK_SMASH 0xF9
#define MOVE_ROCK_THROW 0x58
#define MOVE_ROCK_TOMB 0x13D
#define MOVE_ROCK_WRECKER 0x1B7
#define MOVE_ROLE_PLAY 0x110
#define MOVE_ROLLING_KICK 0x1B
#define MOVE_ROLLOUT 0xCD
#define MOVE_ROOST 0x163
#define MOVE_ROTOTILLER 0x233
#define MOVE_ROUND 0x1F0
#define MOVE_SACRED_FIRE 0xDD
#define MOVE_SACRED_SWORD 0x215
#define MOVE_SAFEGUARD 0xDB
#define MOVE_SAND_ATTACK 0x1C
#define MOVE_SAND_TOMB 0x148
#define MOVE_SANDSTORM 0xC9
#define MOVE_SCALD 0x1F7
#define MOVE_SCARY_FACE 0xB8
#define MOVE_SCRATCH 0xA
#define MOVE_SCREECH 0x67
#define MOVE_SEARING_SHOT 0x221
#define MOVE_SECRET_POWER 0x122
#define MOVE_SECRET_SWORD 0x224
#define MOVE_SEED_BOMB 0x192
#define MOVE_SEED_FLARE 0x1D1
#define MOVE_SEISMIC_TOSS 0x45
#define MOVE_SELFDESTRUCT 0x78
#define MOVE_SHADOW_BALL 0xF7
#define MOVE_SHADOW_CLAW 0x1A5
#define MOVE_SHADOW_FORCE 0x1D3
#define MOVE_SHADOW_PUNCH 0x145
#define MOVE_SHADOW_SNEAK 0x1A9
#define MOVE_SHARPEN 0x9F
#define MOVE_SHEER_COLD 0x149
#define MOVE_SHELL_SMASH 0x1F8
#define MOVE_SHIFT_GEAR 0x1FC
#define MOVE_SHOCK_WAVE 0x15F
#define MOVE_SIGNAL_BEAM 0x144
#define MOVE_SILVER_WIND 0x13E
#define MOVE_SIMPLE_BEAM 0x1ED
#define MOVE_SING 0x2F
#define MOVE_SKETCH 0xA6
#define MOVE_SKILL_SWAP 0x11D
#define MOVE_SKULL_BASH 0x82
#define MOVE_SKY_ATTACK 0x8F
#define MOVE_SKY_DROP 0x1FB
#define MOVE_SKY_UPPERCUT 0x147
#define MOVE_SLACK_OFF 0x12F
#define MOVE_SLAM 0x15
#define MOVE_SLASH 0xA3
#define MOVE_SLEEP_POWDER 0x4F
#define MOVE_SLEEP_TALK 0xD6
#define MOVE_SLUDGE 0x7C
#define MOVE_SLUDGE_BOMB 0xBC
#define MOVE_SLUDGE_WAVE 0x1E2
#define MOVE_SMACK_DOWN 0x1DF
#define MOVE_SMELLING_SALTS 0x109
#define MOVE_SMOG 0x7B
#define MOVE_SMOKESCREEN 0x6C
#define MOVE_SNARL 0x22B
#define MOVE_SNATCH 0x121
#define MOVE_SNORE 0xAD
#define MOVE_SPIKY_SHIELD 0x254
#define MOVE_SOAK 0x1E7
#define MOVE_SOFTBOILED 0x87
#define MOVE_SOLAR_BEAM 0x4C
#define MOVE_SONIC_BOOM 0x31
#define MOVE_SPACIAL_REND 0x1CC
#define MOVE_SPARK 0xD1
#define MOVE_SPIDER_WEB 0xA9
#define MOVE_SPIKE_CANNON 0x83
#define MOVE_SPIKES 0xBF
#define MOVE_SPIT_UP 0xFF
#define MOVE_SPITE 0xB4
#define MOVE_SPLASH 0x96
#define MOVE_SPORE 0x93
#define MOVE_STEALTH_ROCK 0x1BE
#define MOVE_STEAM_ERUPTION 0x250
#define MOVE_STEEL_WING 0xD3
#define MOVE_STICKY_WEB 0x234
#define MOVE_STOCKPILE 0xFE
#define MOVE_STOMP 0x17
#define MOVE_STONE_EDGE 0x1BC
#define MOVE_STORED_POWER 0x1F4
#define MOVE_STORM_THROW 0x1E0
#define MOVE_STEAMROLLER 0x219
#define MOVE_STRENGTH 0x46
#define MOVE_STRING_SHOT 0x51
#define MOVE_STRUGGLE 0xA5
#define MOVE_STRUGGLE_BUG 0x20A
#define MOVE_STUN_SPORE 0x4E
#define MOVE_SUBMISSION 0x42
#define MOVE_SUBSTITUTE 0xA4
#define MOVE_SUCKER_PUNCH 0x185
#define MOVE_SUNNY_DAY 0xF1
#define MOVE_SUPER_FANG 0xA2
#define MOVE_SUPERPOWER 0x114
#define MOVE_SUPERSONIC 0x30
#define MOVE_SURF 0x39
#define MOVE_SWAGGER 0xCF
#define MOVE_SWALLOW 0x100
#define MOVE_SWEET_KISS 0xBA
#define MOVE_SWEET_SCENT 0xE6
#define MOVE_SWIFT 0x81
#define MOVE_SWITCHEROO 0x19F
#define MOVE_SWORDS_DANCE 0xE
#define MOVE_SYNCHRONOISE 0x1E5
#define MOVE_SYNTHESIS 0xEB
#define MOVE_TACKLE 0x21
#define MOVE_TAIL_GLOW 0x126
#define MOVE_TAIL_SLAP 0x21D
#define MOVE_TAIL_WHIP 0x27
#define MOVE_TAILWIND 0x16E
#define MOVE_TAKE_DOWN 0x24
#define MOVE_TAUNT 0x10D
#define MOVE_TECHNO_BLAST 0x222
#define MOVE_TEETER_DANCE 0x12A
#define MOVE_TELEKINESIS 0x1DD
#define MOVE_TELEPORT 0x64
#define MOVE_THIEF 0xA8
#define MOVE_THOUSAND_ARROWS 0x266
#define MOVE_THOUSAND_WAVES 0x267
#define MOVE_THRASH 0x25
#define MOVE_THUNDER 0x57
#define MOVE_THUNDER_FANG 0x1A6
#define MOVE_THUNDER_PUNCH 0x9
#define MOVE_THUNDER_SHOCK 0x54
#define MOVE_THUNDER_WAVE 0x56
#define MOVE_THUNDERBOLT 0x55
#define MOVE_TICKLE 0x141
#define MOVE_TOPSYTURVY 0x240
#define MOVE_TORMENT 0x103
#define MOVE_TOXIC 0x5C
#define MOVE_TOXIC_SPIKES 0x186
#define MOVE_TRANSFORM 0x90
#define MOVE_TRI_ATTACK 0xA1
#define MOVE_TRICK 0x10F
#define MOVE_TRICKORTREAT 0x237
#define MOVE_TRICK_ROOM 0x1B1
#define MOVE_TRIPLE_KICK 0xA7
#define MOVE_TRUMP_CARD 0x178
#define MOVE_TWINEEDLE 0x29
#define MOVE_TWISTER 0xEF
#define MOVE_UTURN 0x171
#define MOVE_UPROAR 0xFD
#define MOVE_VCREATE 0x22D
#define MOVE_VACUUM_WAVE 0x19A
#define MOVE_VENOM_DRENCH 0x257
#define MOVE_VENOSHOCK 0x1DA
#define MOVE_VICE_GRIP 0xB
#define MOVE_VINE_WHIP 0x16
#define MOVE_VITAL_THROW 0xE9
#define MOVE_VOLT_SWITCH 0x209
#define MOVE_VOLT_TACKLE 0x158
#define MOVE_WAKEUP_SLAP 0x166
#define MOVE_WATER_GUN 0x37
#define MOVE_WATER_PLEDGE 0x206
#define MOVE_WATER_PULSE 0x160
#define MOVE_WATER_SPORT 0x15A
#define MOVE_WATER_SPOUT 0x143
#define MOVE_WATERFALL 0x7F
#define MOVE_WATER_SHURIKEN 0x252
#define MOVE_WEATHER_BALL 0x137
#define MOVE_WHIRLPOOL 0xFA
#define MOVE_WHIRLWIND 0x12
#define MOVE_WIDE_GUARD 0x1D5
#define MOVE_WILD_CHARGE 0x210
#define MOVE_WILLOWISP 0x105
#define MOVE_WING_ATTACK 0x11
#define MOVE_WISH 0x111
#define MOVE_WITHDRAW 0x6E
#define MOVE_WONDER_ROOM 0x1D8
#define MOVE_WOOD_HAMMER 0x1C4
#define MOVE_WORK_UP 0x20E
#define MOVE_WORRY_SEED 0x184
#define MOVE_WRAP 0x23
#define MOVE_WRING_OUT 0x17A
#define MOVE_XSCISSOR 0x194
#define MOVE_YAWN 0x119
#define MOVE_ZAP_CANNON 0xC0
#define MOVE_ZEN_HEADBUTT 0x1AC
#define MOVE_Z_NORMAL_PHYS 0x26E
#define MOVE_Z_NORMAL_SPEC 0x26F
#define MOVE_Z_FIGHTING_PHYS 0x270
#define MOVE_Z_FIGHTING_SPEC 0x271
#define MOVE_Z_FLYING_PHYS 0x272
#define MOVE_Z_FLYING_SPEC 0x273
#define MOVE_Z_POISON_PHYS 0x274
#define MOVE_Z_POISON_SPEC 0x275
#define MOVE_Z_GROUND_PHYS 0x276
#define MOVE_Z_GROUND_SPEC 0x277
#define MOVE_Z_ROCK_PHYS 0x278
#define MOVE_Z_ROCK_SPEC 0x279
#define MOVE_Z_BUG_PHYS 0x27A
#define MOVE_Z_BUG_SPEC 0x27B
#define MOVE_Z_GHOST_PHYS 0x27C
#define MOVE_Z_GHOST_SPEC 0x27D
#define MOVE_Z_STEEL_PHYS 0x27E
#define MOVE_Z_STEEL_SPEC 0x27F
#define MOVE_Z_FIRE_PHYS 0x280
#define MOVE_Z_FIRE_SPEC 0x281
#define MOVE_Z_WATER_PHYS 0x282
#define MOVE_Z_WATER_SPEC 0x283
#define MOVE_Z_GRASS_PHYS 0x284
#define MOVE_Z_GRASS_SPEC 0x285
#define MOVE_Z_ELECTRIC_PHYS 0x286
#define MOVE_Z_ELECTRIC_SPEC 0x287
#define MOVE_Z_PSYCHIC_PHYS 0x288
#define MOVE_Z_PSYCHIC_SPEC 0x289
#define MOVE_Z_ICE_PHYS 0x28A
#define MOVE_Z_ICE_SPEC 0x28B
#define MOVE_Z_DRAGON_PHYS 0x28C
#define MOVE_Z_DRAGON_SPEC 0x28D
#define MOVE_Z_DARK_PHYS 0x28E
#define MOVE_Z_DARK_SPEC 0x28F
#define MOVE_Z_FAIRY_PHYS 0x290
#define MOVE_Z_FAIRY_SPEC 0x291
#define MOVE_Z_CATASTROPIKA 0x292
#define MOVE_SHORE_UP 0x293
#define MOVE_FIRST_IMPRESSION 0x294
#define MOVE_BANEFUL_BUNKER 0x295
#define MOVE_SPIRIT_SHACKLE 0x296
#define MOVE_DARKEST_LARIAT 0x297
#define MOVE_SPARKLING_ARIA 0x298
#define MOVE_ICE_HAMMER 0x299
#define MOVE_FLORAL_HEALING 0x29A
#define MOVE_HIGH_HORSEPOWER 0x29B
#define MOVE_STRENGTH_SAP 0x29C
#define MOVE_SOLAR_BLADE 0x29D
#define MOVE_LEAFAGE 0x29E
#define MOVE_SPOTLIGHT 0x29F
#define MOVE_TOXIC_THREAD 0x2A0
#define MOVE_LASER_FOCUS 0x2A1
#define MOVE_GEAR_UP 0x2A2
#define MOVE_THROAT_CHOP 0x2A3
#define MOVE_POLLEN_PUFF 0x2A4
#define MOVE_ANCHOR_SHOT 0x2A5
#define MOVE_PSYCHIC_TERRAIN 0x2A6
#define MOVE_LUNGE 0x2A7
#define MOVE_FIRE_LASH 0x2A8
#define MOVE_POWER_TRIP 0x2A9
#define MOVE_BURN_UP 0x2AA
#define MOVE_SPEED_SWAP 0x2AB
#define MOVE_SMART_STRIKE 0x2AC
#define MOVE_PURIFY 0x2AD
#define MOVE_REVELATION_DANCE 0x2AE
#define MOVE_CORE_ENFORCER 0x2AF
#define MOVE_TROP_KICK 0x2B0
#define MOVE_INSTRUCT 0x2B1
#define MOVE_BEAK_BLAST 0x2B2
#define MOVE_CLANGING_SCALES 0x2B3
#define MOVE_DRAGON_HAMMER 0x2B4
#define MOVE_BRUTAL_SWING 0x2B5
#define MOVE_AURORA_VEIL 0x2B6
#define MOVE_Z_DECIDUEYE 0x2B7
#define MOVE_Z_INCINEROAR 0x2B8
#define MOVE_Z_PRIMARINA 0x2B9
#define MOVE_Z_TAPU 0x2BA
#define MOVE_Z_MARSHADOW 0x2BB
#define MOVE_Z_ALOLAN_RAICHU 0x2BC
#define MOVE_Z_SNORLAX 0x2BD
#define MOVE_Z_EEVEE 0x2BE
#define MOVE_Z_MEW 0x2BF
#define MOVE_SHELL_TRAP 0x2C0
#define MOVE_FLEUR_CANNON 0x2C1
#define MOVE_PSYCHIC_FANGS 0x2C2
#define MOVE_STOMPING_TANTRUM 0x2C3
#define MOVE_SHADOW_BONE 0x2C4
#define MOVE_ACCELEROCK 0x2C5
#define MOVE_LIQUIDATION 0x2C6
#define MOVE_PRISMATIC_LASER 0x2C7
#define MOVE_SPECTRAL_THIEF 0x2C8
#define MOVE_SUNSTEEL_STRIKE 0x2C9
#define MOVE_MOONGEIST_BEAM 0x2CA
#define MOVE_TEARFUL_LOOK 0x2CB
#define MOVE_ZING_ZAP 0x2CC
#define MOVE_NATURES_MADNESS 0x2CD
#define MOVE_MULTI_ATTACK 0x2CE
#define MOVE_Z_ASH_PIKACHU 0x2CF
#define MOVE_BODY_PRESS 0x2D0
#define MOVE_SNAP_TRAP 0x2D1
#define MOVE_SHELL_SIDE_ARM 0x2D2
#define MOVE_FREEZING_GLARE 0x2D3
#define MOVE_THUNDEROUS_KICK 0x2D4
#define MOVE_FIERY_WRATH 0x2D5
#define MOVE_STRANGE_STEAM 0x2D6
#define MOVE_EERIE_SPELL 0x2D7
#define MOVE_CHILLY_RECEPTION 0x2D8
#define MOVE_ZIPPY_ZAP 0x2D9
#define MOVE_CHLOROBLAST 0x2DA
#define MOVE_INFERNAL_PARADE 0x2DB
#define MOVE_BARB_BARRAGE 0x2DC
#define MOVE_PSYSHIELD_BASH 0x2DD
#define MOVE_CEASELESS_EDGE 0x2DE
#define MOVE_ESPER_WING 0x2DF
#define MOVE_TRIPLE_ARROW 0x2E0
#define MOVE_SHELL_SIDE_ARM_PHYSICAL 0x2E1
#define MOVE_EXPANDING_FORCE 0x2E2
#define MOVE_PHOTON_GEYSER 0x2E3
#define MOVE_CLANGOROUS_SOUL 0x2E4
#define MOVE_MIND_BLOW 0x2E5
#define MOVE_PLASMA_FISTS 0x2E6
#define MOVE_DOUBLE_IRON_BASH 0x2E7
#define MOVE_THUNDER_CAGE 0x2E8
#define MOVE_DRAGON_ENERGY 0x2E9
#define MOVE_COACHING 0x2EA
#define MOVE_MISTY_EXPLOSION 0x2EB
#define MOVE_METEOR_ASSAULT 0x2EC
#define MOVE_OBSTRUCT 0x2ED
#define MOVE_RAGING_FURY 0x2EE
#define MOVE_DIRE_CLAW 0x2EF
#define MOVE_VICTORY_DANCE 0x2F0
#define MOVE_BITTER_MALICE 0x2F1
#define MOVE_SHELTER 0x2F2
#define MOVE_MOUNTAIN_GALE 0x2F3

#endif /* MOVE_IDS_H */
