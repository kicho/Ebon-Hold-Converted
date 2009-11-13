###### Patch ######

1. Apply the .patch file to your TrinityCore2 folder and recompile

NOTE: If you're updating from a previous revision, make sure to 
      delete your old "telenpc.cpp" file in the TrinityCore2/src/bindings/scripts/scripts/custom/ folder or you will get compiling errors.

2. ADD the new conf.conf to your trinitycore.conf 


###### CPP ######

How to manually apply the telenpc.cpp file:
Quote:Copy telenpc.cpp from the "CPP file only" folder to your "TrinityCore2/src/bindings/scripts/scripts/custom/" folder.
[Linux only]Open CMakeLists.txt in your Scripts folder and find: scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp Above that, paste scripts/custom/telenpc.cpp so it looks like this:

   include/sc_instance.h
   scripts/custom/telenpc.cpp
   scripts/eastern_kingdoms/blackrock_depths/blackrock_depths.cpp
   scripts/eastern_kingdoms/blackrock_depths/boss_ambassador_flamelash.cpp

Open makefile.am in your Scripts folder and find: scripts/examples/example_creature.cpp \ Above that, paste scripts/custom/telenpc.cpp \ so it looks like this:

scripts/creature/simple_ai.h \
scripts/custom/telenpc.cpp \
scripts/examples/example_creature.cpp \
scripts/examples/example_escort.cpp \

Now open the ScriptLoader.cpp file from your TrinityCore2/src/bindings/scripts/system/ folder and find: "//custom" (without quotes). Under that, paste extern void AddSC_telenpc(); so it looks like this:

//custom
extern void AddSC_telenpc();

Now search for: "//custom" again (without quotes). Paste AddSC_telenpc(); under it so it looks like this:

//custom
AddSC_telenpc();

New open the TrinityCore&Script solution (I use "TrinityCore&Script VC90.sln", but you want to use the one for your Visual Studio version).

In the Solution Explorer, expand 'Scripts->Custom'

Right-click the 'custom' folder and choose 'Add->Existing Item...' and browse to the telenpc.cpp file

Compile TrinityCore2 as usual


###### SQL ######

Use TeleNPC.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP 
* Set npcflag to 16 for TRAINER (for Reset Talent in both case Reset Player Talent and Reset Pet Talent)
* Set npcflag to 65536 for INNKEEPER
* If you use only for GOSSIP set npcflag 1+(16 from TRAINER to reset talents)=17 but if you use INNKEEPER to you need to set npcflag GOSSIP + TRAINER + INNKEEPER (1+16+65536)=65553
* Set ScriptName to "telenpc"


Thread on scriptdev2 forum for support and suggestions:
http://www.scriptdev2.com/showthread.php?t=3228


###### Guild House Setup ######

In order to have custom teleport locations specific to your guild, you will need to modify the Config file.


Open the Config. As you can see there, you need to change a few things:

1. First you need to enable becose by Default is desable
   To enable TeleNPC.HarmonyGuildShip you need to put 1
   To enable TeleNPC.UnityGuildShip you need to put 1
    

1. The ID number of your guild. To get the ID number, open your database (I use SQLyog), open the 'Characters' database, and look at the 'Guild' table.
    by Default 
    GuildId1 ( for TeleNPC.HarmonyGuildShip ) = 1
    GuildId2 ( for TeleNPC.UnityGuildShip ) = 1


2. This is where you need to change the coordinates to match your guild's house.
    by Default Gm Island
   ( for TeleNPC.HarmonyGuildShip )
    MapID1 = 1
    X_pos1 = 16225.11
    Y_pos1 = 16251.11
    Z_pos1 = 12.7

  ( for TeleNPC.UnityGuildShip )
    MapID2 = 1
    X_pos2 = 16225.11
    Y_pos2 = 16251.11
    Z_pos2 = 12.7


3. Save the file. You are now ready to use.


###### How to Add more Guild House ######

In order to add more custom teleport locations specific to your guild, you will need to modify the telenpc.cpp file and config file.


Open the telenpc.cpp. As you can see there, you need to add a few things:

1. First you must go to // Guild Only Teleport Options and add this after the last guilid house

// Check config file if "XGuild1" option is enabled or not
	if(EnableXGuild1)
	if(pPlayer->GetGuildId() == (SD2Config.GetFloatDefault("GuildId3",0))) pPlayer->ADD_GOSSIP_ITEM( 5, "XGuild1", GOSSIP_SENDER_MAIN, xxxx);


2. New you must go to /////////GUILD///////// and thenre add this after the last guilid house

case xxxx: //XGuild1 (if enabled in scriptdev2.conf)
	pPlayer->CLOSE_GOSSIP_MENU();
	// Read coordinates from config file
	pPlayer->TeleportTo(SD2Config.GetFloatDefault("MapID3",13),SD2Config.GetFloatDefault("X_pos3",0),SD2Config.GetFloatDefault("Y_pos3",0),SD2Config.GetFloatDefault("Z_pos3",0),0);
	pPlayer->ModifyMoney(-(SD2Config.GetFloatDefault("TeleGoldCost",0)));
break;

Replace the xxxx with the last number from guild house +5
If the last number is 4030 you well fave to put 4035 in both case ( in case xxxx: //XGuild1 (if enabled in scriptdev2.conf) and in pPlayer->ADD_GOSSIP_ITEM( 5, "XGuild1", GOSSIP_SENDER_MAIN, xxxx); from menu)
Save the file. You are now ready to use the cpp file.


3. New open the conf file and add this after the last guilid house

TeleNPC.XGuild1 = 0
    GuildId3 = 1
    MapID3 = 1
    X_pos3 = 16225.11
    Y_pos3 = 16251.11
    Z_pos3 = 12.7


Replace XGuild1 with the name you want to add.
You can add more guilid house but when you add more edit (GuildId3 , MapID3 , X_pos3 , Y_pos3 , Z_pos3) set +1 if the last guilid have (GuildId3 , MapID3 , X_pos3 , Y_pos3 , Z_pos3 ) the next guilid house will have (GuildId4 , MapID4 , X_pos4 , Y_pos4 , Z_pos4) in both cases (telenpc.cpp and config file)


###### TeleNPC ACID Setup ######

If you put X(1 Gold (10000 Copper),2 Gold (20000 Copper),3 Gold (30000 Copper),etc) on TeleGoldCost Option then execute TeleNPC ACID.sql from Sql in your DB but first you need to edit sql file.
But if you put 0 Gold on TeleGoldCost you dont need to execute TeleNPC ACID.sql in your DB.

1 Open TeleNPC ACID.sql and change xxxx with the ID of your TeleNPC

2 Open TeleNPC ACID.sql and change OwnerServerName with the name of the owner server Example: SlashX :P

3 Open TeleNPC ACID.sql and modify line where is 2 Gold (20000 Copper) and put with your gold cost Example: If you put in conf on TeleGoldCost 3 Gold (30000 Copper) then edit sql and put 3 Gold :P

4 New You are now ready to use :P Have Fun