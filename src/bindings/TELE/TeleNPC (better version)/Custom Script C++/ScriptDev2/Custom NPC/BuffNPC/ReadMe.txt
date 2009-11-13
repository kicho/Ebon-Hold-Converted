Original made by Klark20 on Trinity Forum!I updated the script and made some clean in code!Add new menu, add configs!

###### Patch ######

1. Apply the .patch file to your ScriptDev2 folder and recompile

NOTE: If you're updating from a previous revision, make sure to 
      delete your old "buffnpc.cpp" file in the ScriptDev2/scripts/custom/ folder or you will get compiling errors.

2. Copy the new scriptdev2.conf to your server folder 


###### CPP ######

How to manually apply the buffnpc.cpp file:
Quote:Copy buffnpc.cpp from the "CPP file only" folder to your "ScriptDev2/scripts/custom/" folder.
[Linux only]Open makefile.am in your ScriptDev2 folder and find: scripts/eastern_kingdoms/alterac_mountains.cpp \ Above that, paste scripts/custom/buffnpc.cpp \ so it looks like this:

include/sc_instance.h \
scripts/custom/buffnpc.cpp \
scripts/eastern_kingdoms/alterac_mountains.cpp \
scripts/eastern_kingdoms/arathi_highlands.cpp \

Now open the ScriptLoader.cpp file from your ScriptDev2/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_buffnpc(); so it looks like this:

//custom
extern void AddSC_buffnpc();

Now search for: "//custom" again (without quotes). Paste AddSC_buffnpc(); under it so it looks like this:

//custom
AddSC_buffnpc();

New open the SD2 solution (I use "scriptVC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the buffnpc.cpp file

Compile SD2 as usual


###### SQL ######

Use BuffNPC.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP
* Set ScriptName to "buffnpc"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228


###### BuffNPC ACID Setup ######

If you put X(1 Gold (10000 Copper),2 Gold (20000 Copper),3 Gold (30000 Copper),etc) on BuffGoldCost Option then execute BuffNPC ACID.sql from Sql in your DB but first you need to edit sql file.
But if you put 0 Gold on TeleGoldCost you dont need to execute BuffNPC ACID.sql in your DB.

1 Open BuffNPC ACID.sql and change xxxx with the ID of your BuffNPC

2 Open BuffNPC ACID.sql and change OwnerServerName with the name of the owner server Example: SlashX :P

3 Open BuffNPC ACID.sql and modify line where is 2 Gold (20000 Copper) and put with your gold cost Example: If you put in conf on BuffGoldCost 3 Gold (30000 Copper) then edit sql and put 3 Gold :P

4 New You are now ready to use :P Have Fun