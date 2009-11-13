Original made by loosingar!I updated the script and made some clean in code!
###### Patch ######

1. Apply the .patch file to your TrinityCore2 folder and recompile

NOTE: If you're updating from a previous revision, make sure to 
      delete your old "npc_arena_honor.cpp" file in the TrinityCore2/src/bindings/scripts/scripts/custom/ folder or you will get compiling errors.

2. ADD the new conf.conf to your trinitycore.conf 


###### CPP ######

How to manually apply the npc_arena_honor.cpp file:
Quote:Copy npc_arena_honor.cpp from the "CPP file only" folder to your "TrinityCore2/src/bindings/scripts/scripts/custom/" folder.
[Linux only]Open CMakeLists.txt in your Scripts folder and find: scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp Above that, paste scripts/custom/npc_arena_honor.cpp so it looks like this:

   include/sc_instance.h
   scripts/custom/npc_arena_honor.cpp
   scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp
   scripts/eastern_kingdoms/blackrock_depths/boss_ambassador_flamelash.cpp

Open makefile.am in your Scripts folder and find: scripts/examples/example_creature.cpp \ Above that, paste scripts/custom/npc_arena_honor.cpp \ so it looks like this:

scripts/creature/simple_ai.h \
scripts/custom/npc_arena_honor.cpp \
scripts/examples/example_creature.cpp \
scripts/examples/example_escort.cpp \

Now open the ScriptLoader.cpp file from your TrinityCore2/src/bindings/scripts/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_npc_arena_honor(); so it looks like this:

//custom
extern void AddSC_npc_arena_honor();

Now search for: "//custom" again (without quotes). Paste AddSC_npc_arena_honor(); under it so it looks like this:

//custom
AddSC_npc_arena_honor();

New open the TrinityCore&Script solution (I use "TrinityCore&Script VC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the npc_arena_honor.cpp file

Compile TrinityCore2 as usual


###### SQL ######

Use NPCArenaHonor.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP
* Set ScriptName to "npc_arena_honor"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228


###### NPCArenaHonor ACID Setup ######

If you put X(1 ArenaPoints (200) and HonorPoints (1000)) on ArenaPoints and HonorPoints Option then execute NPCArenaHonor ACID.sql from Sql in your DB but first you need to edit sql file.
But if you put 0 Arena and Honor Points on ArenaPoints and HonorPoints you dont need to execute NPCArenaHonor ACID.sql in your DB.

1 Open NPCArenaHonor ACID.sql and change xxxx with the ID of your NPCArenaHonor

2 Open NPCArenaHonor ACID.sql and change OwnerServerName with the name of the owner server Example: SlashX :P

3 Open NPCArenaHonor ACID.sql and modify line where is 200 ArenaPoints to 1000 HonorPoints and 1000 HonorPoints to 200 ArenaPoints and put with what you put on conf Example: If you put in conf on TeleGoldCost 400 ArenaPoints and 2000 HonorPoints then edit sql and put 400 whare is ArenaPoints and 2000 where is HonorPoints :P

4 New You are now ready to use :P Have Fun