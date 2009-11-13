Original made by jomagom!I updated the script and made some clean in code!Add new menu, add configs!

###### Patch ######

1. Apply the .patch file to your ScriptDev2 folder and recompile

NOTE: If you're updating from a previous revision, make sure to 
      delete your old "professionnpc.cpp" file in the ScriptDev2/scripts/custom/ folder or you will get compiling errors.

2. Copy the new scriptdev2.conf to your server folder 


###### CPP ######

How to manually apply the professionnpc.cpp file:
Quote:Copy professionnpc.cpp from the "CPP file only" folder to your "ScriptDev2/scripts/custom/" folder.
[Linux only]Open makefile.am in your ScriptDev2 folder and find: scripts/eastern_kingdoms/alterac_mountains.cpp \ Above that, paste scripts/custom/professionnpc.cpp \ so it looks like this:

include/sc_instance.h \
scripts/custom/professionnpc.cpp \
scripts/eastern_kingdoms/alterac_mountains.cpp \
scripts/eastern_kingdoms/arathi_highlands.cpp \

Now open the ScriptLoader.cpp file from your ScriptDev2/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_professionnpc(); so it looks like this:

//custom
extern void AddSC_professionnpc();

Now search for: "//custom" again (without quotes). Paste AddSC_professionnpc(); under it so it looks like this:

//custom
AddSC_professionnpc();

New open the SD2 solution (I use "scriptVC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the professionnpc.cpp file

Compile SD2 as usual


###### SQL ######

Use ProfessionNPC.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP 
* Set ScriptName to "professionnpc"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228


###### ProfessionNPC ACID Setup ######

If you put X(1 Gold (10000 Copper),2 Gold (20000 Copper),3 Gold (30000 Copper),etc) on SkillGoldCost and
If you put X(1 SkillPoints,2 SkillPoints,3 SkillPoints,etc) on SkillPoints Option then execute ProfessionNPC ACID.sql from Sql in your DB but first you need to edit sql file.

1 Open ProfessionNPC ACID.sql and change xxxx with the ID of your ProfessionNPC

2 Open ProfessionNPC ACID.sql and change OwnerServerName with the name of the owner server Example: SlashX :P

3 Open ProfessionNPC ACID.sql and modify line where is 2 Points and put with your SkillPoints Example: If you put in conf on SkillPoints 3 Points then edit sql and put 3 Points :P

4 Open ProfessionNPC ACID.sql and modify line where is 2 Gold (20000 Copper) and put with your gold cost Example: If you put in conf on SkillGoldCost 3 Gold (30000 Copper) then edit sql and put 3 Gold :P

5 New You are now ready to use :P Have Fun