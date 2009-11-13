Original made by pdy!I update the script!

###### CPP ######

How to manually apply the item_levelplayer.cpp file:
Quote:Copy item_levelplayer.cpp from the "CPP file only" folder to your "TrinityCore2/src/bindings/scripts/scripts/custom/" folder.
[Linux only]Open CMakeLists.txt in your Scripts folder and find: scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp Above that, paste scripts/custom/item_levelplayer.cpp so it looks like this:

   include/sc_instance.h
   scripts/custom/item_levelplayer.cpp
   scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp
   scripts/eastern_kingdoms/blackrock_depths/boss_ambassador_flamelash.cpp

Open makefile.am in your Scripts folder and find: scripts/examples/example_creature.cpp \ Above that, paste scripts/custom/item_levelplayer.cpp \ so it looks like this:

scripts/creature/simple_ai.h \
scripts/custom/item_levelplayer.cpp \
scripts/examples/example_creature.cpp \
scripts/examples/example_escort.cpp \

Now open the ScriptLoader.cpp file from your TrinityCore2/src/bindings/scripts/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_item_levelplayer(); so it looks like this:

//custom
extern void AddSC_item_levelplayer();

Now search for: "//custom" again (without quotes). Paste AddSC_item_levelplayer(); under it so it looks like this:

//custom
AddSC_item_levelplayer();

New open the TrinityCore&Script solution (I use "TrinityCore&Script VC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the item_levelplayer.cpp file

Compile TrinityCore2 as usual


###### SQL ######

Use item_levelplayer.sql from Sql if you don't want to create your own Item

If you create your own make sure to:
* Set ScriptName to "item_levelplayer"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228