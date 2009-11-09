Original made by antonidas on Trinity Forum!I updated the script and made some clean in code!!

###### Patch ######

1. Apply the .patch file to your TrinityCore2 folder and recompile

NOTE: If you're updating from a previous revision, make sure to 
      delete your old "gmvendor.cpp" file in the TrinityCore2/src/bindings/scripts/scripts/custom/ folder or you will get compiling errors.

2. ADD the new conf.conf to your trinitycore.conf


###### CPP ######

How to manually apply the gmvendor.cpp file:
Quote:Copy gmvendor.cpp from the "CPP file only" folder to your "TrinityCore2/src/bindings/scripts/scripts/custom/" folder.
[Linux only]Open CMakeLists.txt in your Scripts folder and find: scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp Above that, paste scripts/custom/gmvendor.cpp so it looks like this:

   include/sc_instance.h
   scripts/custom/gmvendor.cpp
   scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp
   scripts/eastern_kingdoms/blackrock_depths/boss_ambassador_flamelash.cpp

Open makefile.am in your Scripts folder and find: scripts/examples/example_creature.cpp \ Above that, paste scripts/custom/gmvendor.cpp \ so it looks like this:

scripts/creature/simple_ai.h \
scripts/custom/gmvendor.cpp \
scripts/examples/example_creature.cpp \
scripts/examples/example_escort.cpp \

Now open the ScriptLoader.cpp file from your TrinityCore2/src/bindings/scripts/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_gmvendor(); so it looks like this:

//custom
extern void AddSC_gmvendor();

Now search for: "//custom" again (without quotes). Paste AddSC_gmvendor(); under it so it looks like this:

//custom
AddSC_gmvendor();

New open the TrinityCore&Script solution (I use "TrinityCore&Script VC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the gmvendor.cpp file

Compile TrinityCore2 as usual


###### SQL ######

Use gmvendor.sql from Sql to update your Custom Vendors

Make sure you change the xxxx with the id of your Custom Vendors:
* Set npcflag to +1 for GOSSIP
* Set ScriptName to "gmvendor"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228