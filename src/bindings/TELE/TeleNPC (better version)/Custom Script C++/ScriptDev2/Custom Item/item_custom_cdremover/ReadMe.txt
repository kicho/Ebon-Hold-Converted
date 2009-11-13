Original made by Filo!I update the script with the SD2 style!

###### CPP ######

How to manually apply the item_custom_cdremover.cpp file:
Quote:Copy item_custom_cdremover.cpp from the "CPP file only" folder to your "ScriptDev2/scripts/custom/" folder.
[Linux only]Open makefile.am in your ScriptDev2 folder and find: scripts/eastern_kingdoms/alterac_mountains.cpp \ Above that, paste scripts/custom/item_custom_cdremover.cpp \ so it looks like this:

include/sc_instance.h \
scripts/custom/item_custom_cdremover.cpp \
scripts/eastern_kingdoms/alterac_mountains.cpp \
scripts/eastern_kingdoms/arathi_highlands.cpp \

Now open the ScriptLoader.cpp file from your ScriptDev2/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_item_custom_cdremover(); so it looks like this:

//custom
extern void AddSC_item_custom_cdremover();

Now search for: "//custom" again (without quotes). Paste AddSC_item_custom_cdremover(); under it so it looks like this:

//custom
AddSC_item_custom_cdremover();

New open the SD2 solution (I use "scriptVC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the item_custom_cdremover.cpp file

Compile SD2 as usual


###### SQL ######

Use item_custom_cdremover.sql from Sql if you don't want to create your own Item

If you create your own make sure to:
* Set ScriptName to "item_custom_cdremover"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228