###### CPP ######

How to manually apply the item_custom_summon.cpp file:
Quote:Copy item_custom_summon.cpp from the "CPP file only" folder to your "TrinityCore2/src/bindings/scripts/scripts/custom/" folder.
[Linux only]Open CMakeLists.txt in your Scripts folder and find: scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp Above that, paste scripts/custom/item_custom_summon.cpp so it looks like this:

   include/sc_instance.h
   scripts/custom/item_custom_summon.cpp
   scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp
   scripts/eastern_kingdoms/blackrock_depths/boss_ambassador_flamelash.cpp

Open makefile.am in your Scripts folder and find: scripts/examples/example_creature.cpp \ Above that, paste scripts/custom/item_custom_summon.cpp \ so it looks like this:

scripts/creature/simple_ai.h \
scripts/custom/item_custom_summon.cpp \
scripts/examples/example_creature.cpp \
scripts/examples/example_escort.cpp \

Now open the ScriptLoader.cpp file from your TrinityCore2/src/bindings/scripts/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_item_custom_summon(); so it looks like this:

//custom
extern void AddSC_item_custom_summon();

Now search for: "//custom" again (without quotes). Paste AddSC_item_custom_summon(); under it so it looks like this:

//custom
AddSC_item_custom_summon();

New open the TrinityCore&Script solution (I use "TrinityCore&Script VC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the item_custom_summon.cpp file

Compile TrinityCore2 as usual


###### SQL ######

Use item_custom_summon.sql from Sql if you don't want to create your own Item

If you create your own make sure to:
* Set ScriptName to "item_custom_summon"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228


###### Item Custom Summon Setup ######

In order to have item_custom_summon full working you will need to modify the item_custom_summon.cpp file.


Open the item_custom_summon.cpp. As you can see there, you need to change 90002 with the ID of NPC you want to summon from this item:

   pPlayer->SummonCreature(90002,pPlayer->GetPositionX() ,pPlayer->GetPositionY()+5, pPlayer->GetPositionZ(), 0,TEMPSUMMON_TIMED_DESPAWN,120000);
   You need to replace (90002) with the ID of your NPC that you want to summon from this item

Exemple:

Lets say that I want the player to Summon a TeleNPC the ID of TeleNPC is : 90002

pPlayer->SummonCreature(90002,pPlayer->GetPositionX() ,pPlayer->GetPositionY()+5, pPlayer->GetPositionZ(), 0,TEMPSUMMON_TIMED_DESPAWN,120000);

90002 = ID of NPC that is summoned by this item