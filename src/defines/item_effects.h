#ifndef ITEM_BATTLE_EFFECTS_H
#define ITEM_BATTLE_EFFECTS_H

enum item_effects
{
      ITEM_EFFECT_NOEFFECT , //0
      ITEM_EFFECT_ORANBERRY, //1
      ITEM_EFFECT_CHERIBERRY , //2
      ITEM_EFFECT_CHESTOBERRY , //3
      ITEM_EFFECT_PECHABERRY , //4
      ITEM_EFFECT_RAWSTBERRY , //5
      ITEM_EFFECT_ASPEARBERRY , //6
      ITEM_EFFECT_LEPPABERRY , //7
      ITEM_EFFECT_PERSIMBERRY , //8
      ITEM_EFFECT_LUMBERRY , //9
      ITEM_EFFECT_FIGYBERRY , //10
      ITEM_EFFECT_WIKIBERRY , //11
      ITEM_EFFECT_MAGOBERRY , //12
      ITEM_EFFECT_AGUAVBERRY , //13
      ITEM_EFFECT_IAPAPABERRY , //14
      ITEM_EFFECT_LIECHIBERRY , //15
      ITEM_EFFECT_GANLONBERRY , //16
      ITEM_EFFECT_SALACBERRY , //17
      ITEM_EFFECT_PETAYABERRY , //18
      ITEM_EFFECT_APICOTBERRY , //19
      ITEM_EFFECT_LANSATBERRY , //20
      ITEM_EFFECT_STARFBERRY , //21
      ITEM_EFFECT_BRIGHTPOWDER , //22
      ITEM_EFFECT_WHITEHERB , //23
      ITEM_EFFECT_MACHOBRACE , //24
      ITEM_EFFECT_EXPSHARE , //25
      ITEM_EFFECT_QUICKCLAW , //26
      ITEM_EFFECT_SOOTHEBELL , //27
      ITEM_EFFECT_MENTALHERB , //28
      ITEM_EFFECT_CHOICEBAND , //29
      ITEM_EFFECT_KINGSROCK , //30
      ITEM_EFFECT_SILVERPOWDER , //31
      ITEM_EFFECT_AMULETCOIN , //32
      ITEM_EFFECT_CLENSEATAG , //33
      ITEM_EFFECT_SOULDEW , //34
      ITEM_EFFECT_DEEPSEATOOTH , //35
      ITEM_EFFECT_DEEPSEASCALE , //36
      ITEM_EFFECT_SMOKEBALL , //37
      ITEM_EFFECT_EVERSTONE , //38
      ITEM_EFFECT_FOCUSBAND , //39
      ITEM_EFFECT_LUCKYEGG , //40
      ITEM_EFFECT_SCOPELENS , //41
      ITEM_EFFECT_METALCOAT , //42
      ITEM_EFFECT_LEFTOVERS , //43
      ITEM_EFFECT_DRAGONSCALE , //44
      ITEM_EFFECT_LIGHTBALL , //45
      ITEM_EFFECT_SOFTSAND , //46
      ITEM_EFFECT_HARDSTONE , //47
      ITEM_EFFECT_MIRACLESEED , //48
      ITEM_EFFECT_BLACKGLASSES , //49
      ITEM_EFFECT_BLACKBELT , //50
      ITEM_EFFECT_MAGNET , //51
      ITEM_EFFECT_MYSTICWATER , //52
      ITEM_EFFECT_SHARPBEAK , //53
      ITEM_EFFECT_POISONBARB , //54
      ITEM_EFFECT_NEVERMELTICE , //55
      ITEM_EFFECT_SPELLTAG , //56
      ITEM_EFFECT_TWISTEDSPOON , //57
      ITEM_EFFECT_CHARCOAL , //58
      ITEM_EFFECT_DRAGONFANG , //59
      ITEM_EFFECT_SILKSCARF , //60
      ITEM_EFFECT_UPGRADE , //61
      ITEM_EFFECT_SHELLBELL , //62
      ITEM_EFFECT_LUCKYPUNCH , //63
      ITEM_EFFECT_METALPOWDER , //64
      ITEM_EFFECT_THICKCLUB , //65
      ITEM_EFFECT_STICK , //66
      ITEM_EFFECT_CHOICESPECS = 71, //71
      ITEM_EFFECT_ADAMANTORB , //72
      ITEM_EFFECT_GRISEOUSORB , //73
      ITEM_EFFECT_LIFEORB , //74
      ITEM_EFFECT_LUSTROUSORB , //75
      ITEM_EFFECT_EVIOLITE , //76
      ITEM_EFFECT_ASSAULTVEST , //77
      ITEM_EFFECT_MUSCLEBAND , //78
      ITEM_EFFECT_WISEGLASSES , //79
      ITEM_EFFECT_PINKRIBBON , //80
      ITEM_EFFECT_RINGTARGET = 84, //84
      ITEM_EFFECT_EXPERTBELT , //85
      ITEM_EFFECT_WIDELENS  = 104, //104
      ITEM_EFFECT_ZOOMLENS , //105
      ITEM_EFFECT_FOCUSSASH , //106
      ITEM_EFFECT_SAFETYGOOGLES , //107
      ITEM_EFFECT_CHOICESCARF , //108
      ITEM_EFFECT_LAGGINGTAIL , //109
      ITEM_EFFECT_FLOATSTONE , //110
      ITEM_EFFECT_METRONOME , //111
      ITEM_EFFECT_IRONBALL , //112
      ITEM_EFFECT_AIRBALLOON , //113
      ITEM_EFFECT_HEATROCK , //114
      ITEM_EFFECT_DAMPROCK , //115
      ITEM_EFFECT_SMOOTHROCK , //116
      ITEM_EFFECT_ICYROCK , //117
      ITEM_EFFECT_SITRUSBERRY , //118
      ITEM_EFFECT_BLACKSLUDGE , //119
      ITEM_EFFECT_STICKYBARB , //120
      ITEM_EFFECT_FLAMEORB , //121
      ITEM_EFFECT_TOXICORB , //122
      ITEM_EFFECT_WEAKNESSPOLICY , //123
      ITEM_EFFECT_EJECTBUTTON , //124
      ITEM_EFFECT_REDCARD , //125
      ITEM_EFFECT_ROCKYHELMET , //126
      ITEM_EFFECT_LIGHTCLAY , //127
      ITEM_EFFECT_DESTINYKNOT , //128
      ITEM_EFFECT_LUMINOUSMOSS , //129
      ITEM_EFFECT_CELLBATTERY , //130
      ITEM_EFFECT_SNOWBALL , //131
      ITEM_EFFECT_ABSORBBULB , //132
      ITEM_EFFECT_QUICKPOWDER , //133
      ITEM_EFFECT_BIGROOT , //134
      ITEM_EFFECT_BINDINGBAND , //135
      ITEM_EFFECT_GRIPCLAW , //136
      ITEM_EFFECT_CUSTAPBERRY , //137
      ITEM_EFFECT_POWERHERB , //138
      ITEM_EFFECT_MEGASTONE , //139
      ITEM_EFFECT_DRIVES , //140
      ITEM_EFFECT_PRIMALORB , //141
      ITEM_EFFECT_SHEDSHELL , //142
      ITEM_EFFECT_GEM , //143
      ITEM_EFFECT_DAM_REDUX_BERRY , //144
      ITEM_EFFECT_PLATES , //145
      ITEM_EFFECT_MEMORIES, //146
      ITEM_EFFECT_TERRAINEXPANDER, //147
      ITEM_EFFECT_PROTECTIVEPADS, //148
      ITEM_EFFECT_ELECTRICSEED, //149
      ITEM_EFFECT_GRASSYSEED, //150
      ITEM_EFFECT_MISTYSEED, //151
      ITEM_EFFECT_PSYCHICSEED, //152
      ITEM_EFFECT_KEEBERRY, //153
      ITEM_EFFECT_MARANGABERRY, //154
      ITEM_EFFECT_MICLEBERRY, //155
      ITEM_EFFECT_JABOCABERRY, //156
      ITEM_EFFECT_ROWAPBERRY, //157
      ITEM_EFFECT_THROATSPRAY, //158
      ITEM_EFFECT_BLUNDERPOLICY, //159
      ITEM_EFFECT_EJECTPACK, //160
      ITEM_EFFECT_ADRENALINE_ORB, //161
	  ITEM_EFFECT_LUCK_INCENSE, //162
	  ITEM_EFFECT_FULL_INCENSE, //163
	  ITEM_EFFECT_ODD_INCENSE, //164
	  ITEM_EFFECT_ROCK_INCENSE, //165
	  ITEM_EFFECT_ROSE_INCENSE, //166
	  ITEM_EFFECT_WAVE_INCENSE, //167
	  ITEM_EFFECT_RAZOR_CLAW, //168
	  ITEM_EFFECT_ROOMSERVICE, //169
	  ITEM_EFFECT_HEAVYDUTYBOOTS, //170
	  ITEM_EFFECT_UTILITYUMBRELLA, //171
	  ITEM_EFFECT_SEAINCENSE, //172
};

#endif /* ITEM_BATTLE_EFFECTS_H_H */
