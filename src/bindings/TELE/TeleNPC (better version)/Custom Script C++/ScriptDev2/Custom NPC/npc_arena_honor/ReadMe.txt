Original made by loosingar!I updated the script and made some clean in code!

###### CPP ######

How to manually apply the npc_arena_honor.cpp file:
Quote:Copy npc_arena_honor.cpp from the "CPP file only" folder to your "ScriptDev2/scripts/custom/" folder.
[Linux only]Open makefile.am in your ScriptDev2 folder and find: scripts/eastern_kingdoms/alterac_mountains.cpp \ Above that, paste scripts/custom/npc_arena_honor.cpp \ so it looks like this:

include/sc_instance.h \
scripts/custom/npc_arena_honor.cpp \
scripts/eastern_kingdoms/alterac_mountains.cpp \
scripts/eastern_kingdoms/arathi_highlands.cpp \

Now open the ScriptLoader.cpp file from your ScriptDev2/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_npc_arena_honor(); so it looks like this:

//custom
extern void AddSC_npc_arena_honor();

Now search for: "//custom" again (without quotes). Paste AddSC_npc_arena_honor(); under it so it looks like this:

//custom
AddSC_npc_arena_honor();

New open the SD2 solution (I use "scriptVC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the npc_arena_honor.cpp file

Compile SD2 as usual


###### SQL ######

Use npc_arena_honor.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP
* Set ScriptName to "npc_arena_honor"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228