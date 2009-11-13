Original made by DarkMessiah!I update the script with the SD2 style code and corected some typo!!

###### CPP ######

How to manually apply the item_custom_stone.cpp file:
Quote:Copy item_custom_stone.cpp from the "CPP file only" folder to your "ScriptDev2/scripts/custom/" folder.
[Linux only]Open makefile.am in your ScriptDev2 folder and find: scripts/eastern_kingdoms/alterac_mountains.cpp \ Above that, paste scripts/custom/item_custom_stone.cpp \ so it looks like this:

include/sc_instance.h \
scripts/custom/item_custom_stone.cpp \
scripts/eastern_kingdoms/alterac_mountains.cpp \
scripts/eastern_kingdoms/arathi_highlands.cpp \

Now open the ScriptLoader.cpp file from your ScriptDev2/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_item_custom_stone(); so it looks like this:

//custom
extern void AddSC_item_custom_stone();

Now search for: "//custom" again (without quotes). Paste AddSC_item_custom_stone(); under it so it looks like this:

//custom
AddSC_item_custom_stone();

New open the SD2 solution (I use "scriptVC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the item_custom_stone.cpp file

Compile SD2 as usual


###### SQL ######

Use item_custom_stone.sql from Sql if you don't want to create your own Item

If you create your own make sure to:
* Set ScriptName to "item_custom_stone"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228


###### Item Custom Stone Setup ######

In order to have custom item_custom_stone full working you will need to modify the item_custom_stone.cpp file.


Open the item_custom_stone.cpp. As you can see there, you need to change SetFreeTalentPoints(5) with the talent points you want your player to get from this item:

   pPlayer->SetFreeTalentPoints(5);
   You need to replace (5) with the talent points you want your player to get from this item

Exemple:

Lets say that I want the player to get 10 TP from this item I well put as here:

pPlayer->SetFreeTalentPoints(10);

10 = NR of TP that a player well get from this item