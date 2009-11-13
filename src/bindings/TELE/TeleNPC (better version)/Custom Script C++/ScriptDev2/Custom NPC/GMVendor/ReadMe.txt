Original made by antonidas on Trinity Forum!I updated the script and made some clean in code!!

###### Patch ######

1. Apply the .patch file to your ScriptDev2 folder and recompile

NOTE: If you're updating from a previous revision, make sure to 
      delete your old "gmvendor.cpp" file in the ScriptDev2/scripts/custom/ folder or you will get compiling errors.

2. Copy the new scriptdev2.conf to your server folder


###### CPP ######

How to manually apply the gmvendor.cpp file:
Quote:Copy gmvendor.cpp from the "CPP file only" folder to your "ScriptDev2/scripts/custom/" folder.
[Linux only]Open makefile.am in your ScriptDev2 folder and find: scripts/eastern_kingdoms/alterac_mountains.cpp \ Above that, paste scripts/custom/gmvendor.cpp \ so it looks like this:

include/sc_instance.h \
scripts/custom/gmvendor.cpp \
scripts/eastern_kingdoms/alterac_mountains.cpp \
scripts/eastern_kingdoms/arathi_highlands.cpp \

Now open the ScriptLoader.cpp file from your ScriptDev2/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_gmvendor(); so it looks like this:

//custom
extern void AddSC_gmvendor();

Now search for: "//custom" again (without quotes). Paste AddSC_gmvendor(); under it so it looks like this:

//custom
AddSC_gmvendor();

New open the SD2 solution (I use "scriptVC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the gmvendor.cpp file

Compile SD2 as usual


###### SQL ######

Use gmvendor.sql from Sql to update your Custom Vendors

Make sure you change the xxxx with the id of your Custom Vendors:
* Set npcflag to +1 for GOSSIP
* Set ScriptName to "gmvendor"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228