###### Patch ######

1. Apply the .patch file to your ScriptDev2 folder and recompile

NOTE: If you're updating from a previous revision, make sure to 
      delete your old ".cpp" file in the ScriptDev2/scripts/custom/ folder or you will get compiling errors.

2. Copy the new scriptdev2.conf to your server folder 

###### BuffNPC ######

###### BuffNPC SQL ######
Use BuffNPC.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP
* Set ScriptName to "buffnpc"


###### BuffNPC ACID Setup ######
If you put X(1 Gold (10000 Copper),2 Gold (20000 Copper),3 Gold (30000 Copper),etc) on BuffGoldCost Option then execute BuffNPC ACID.sql from Sql in your DB but first you need to edit sql file.
But if you put 0 Gold on TeleGoldCost you dont need to execute BuffNPC ACID.sql in your DB.

1 Open BuffNPC ACID.sql and change xxxx with the ID of your BuffNPC

2 Open BuffNPC ACID.sql and change OwnerServerName with the name of the owner server Example: SlashX :P

3 Open BuffNPC ACID.sql and modify line where is 2 Gold (20000 Copper) and put with your gold cost Example: If you put in conf on BuffGoldCost 3 Gold (30000 Copper) then edit sql and put 3 Gold :P

4 New You are now ready to use :P Have Fun


###### GMVendor ######

###### GMVendor SQL ######
Use gmvendor.sql from Sql to update your Custom Vendors

Make sure you change the xxxx with the id of your Custom Vendors:
* Set npcflag to +1 for GOSSIP
* Set ScriptName to "gmvendor"


###### go_custom_morph ######

###### go_custom_morph SQL ######
Use go_custom_morph.sql from Sql if you don't want to create your own Go

If you create your own make sure to:
* Set ScriptName to "go_custom_morph"
* Set type to "4"


###### go_custom_orb_of_deception ######

###### go_custom_orb_of_deception SQL ######
Use go_custom_orb_of_deception.sql from Sql if you don't want to create your own Go

If you create your own make sure to:
* Set ScriptName to "go_custom_orb_of_deception"
* Set type to "4"


###### go_custom_pet ######

###### go_custom_pet SQL ######
Use go_custom_pet.sql from Sql if you don't want to create your own Go

If you create your own make sure to:
* Set ScriptName to "go_custom_pet"
* Set type to "4"


###### go_custom_transform ######

###### go_custom_transform SQL ######
Use go_custom_transform.sql from Sql if you don't want to create your own Go

If you create your own make sure to:
* Set ScriptName to "go_custom_transform"
* Set type to "4"


###### item_custom_cdremover ######

###### item_custom_cdremover SQL ######
Use item_custom_cdremover.sql from Sql if you don't want to create your own Item

If you create your own make sure to:
* Set ScriptName to "item_custom_cdremover"


###### item_custom_stone ######

###### item_custom_stone SQL ######
Use item_custom_stone.sql from Sql if you don't want to create your own Item

If you create your own make sure to:
* Set ScriptName to "item_custom_stone"


###### Item Custom Stone Setup ######
In order to have custom item_custom_stone full working you will need to modify the item_custom_stone.cpp file.


Open the item_custom_stone.cpp. As you can see there, you need to change SetFreeTalentPoints(5) with the talent points you want your player to get from this item:

   pPlayer->SetFreeTalentPoints(5);
   You need to replace (5) with the talent points you want your player to get from this item

Exemple:

Lets say that I want the player to get 10 TP from this item I well put as here:

pPlayer->SetFreeTalentPoints(10);

10 = NR of TP that a player well get from this item


###### item_custom_summon ######

###### item_custom_summon SQL ######
Use item_custom_summon.sql from Sql if you don't want to create your own Item

If you create your own make sure to:
* Set ScriptName to "item_custom_summon"


###### Item Custom Summon Setup ######
In order to have item_custom_summon full working you will need to modify the item_custom_summon.cpp file.


Open the item_custom_summon.cpp. As you can see there, you need to change 90002 with the ID of NPC you want to summon from this item:

   pPlayer->SummonCreature(90002,pPlayer->GetPositionX() ,pPlayer->GetPositionY()+5, pPlayer->GetPositionZ(), 0,TEMPSUMMON_TIMED_DESPAWN,120000);
   You need to replace (90002) with the ID of your NPC that you want to summon from this item

Exemple:

Lets say that I want the player to Summon a TeleNPC the ID of TeleNPC is : 90002

pPlayer->SummonCreature(90002,pPlayer->GetPositionX() ,pPlayer->GetPositionY()+5, pPlayer->GetPositionZ(), 0,TEMPSUMMON_TIMED_DESPAWN,120000);

90002 = ID of NPC that is summoned by this item


###### item_levelplayer ######

###### item_levelplayer SQL ######
Use item_levelplayer.sql from Sql if you don't want to create your own Item

If you create your own make sure to:
* Set ScriptName to "item_levelplayer"


###### npc_arena_honor ######

###### npc_arena_honor SQL ######
Use npc_arena_honor.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP
* Set ScriptName to "npc_arena_honor"


###### ProfessionNPC ######

###### ProfessionNPC SQL ######
Use ProfessionNPC.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP 
* Set ScriptName to "professionnpc"


###### ProfessionNPC ACID Setup ######
If you put X(1 Gold (10000 Copper),2 Gold (20000 Copper),3 Gold (30000 Copper),etc) on SkillGoldCost and
If you put X(1 SkillPoints,2 SkillPoints,3 SkillPoints,etc) on SkillPoints Option then execute ProfessionNPC ACID.sql from Sql in your DB but first you need to edit sql file.

1 Open ProfessionNPC ACID.sql and change xxxx with the ID of your ProfessionNPC

2 Open ProfessionNPC ACID.sql and change OwnerServerName with the name of the owner server Example: SlashX :P

3 Open ProfessionNPC ACID.sql and modify line where is 2 Points and put with your SkillPoints Example: If you put in conf on SkillPoints 3 Points then edit sql and put 3 Points :P

4 Open ProfessionNPC ACID.sql and modify line where is 2 Gold (20000 Copper) and put with your gold cost Example: If you put in conf on SkillGoldCost 3 Gold (30000 Copper) then edit sql and put 3 Gold :P

5 New You are now ready to use :P Have Fun


###### RenameNPC ######

###### RenameNPC SQL ######
Use RenameNPC.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP
* Set ScriptName to "renamenpc"


###### RenameNPC Setup ######
In order to have custom RenameNPC full working you will need to modify the renamenpc.cpp file.


Open the renamenpc.cpp. As you can see there, you need to change charactersdb with your charactersdb name:

   You need to serch for characters.characters
   After you find characters.characters you need to know what is this is esy first characters is your ch db name and second characters is ch table from ch db 
   And new you know what is this characters.characters you need to replace first characters with your ch db name and don't edit the second ch becose all ch db have the same name on ch table

Exemple:

Lets say that me ch db name is charac I well put as here:

charac.characters

charac = characters db name
characters = characters table name from characters db


###### TeleNPC ######

###### TeleNPC SQL ######
Use TeleNPC.sql from Sql if you don't want to create your own NPC

If you create your own make sure to:
* Set npcflag to 1 for GOSSIP 
* Set npcflag to 16 for TRAINER (for Reset Talent in both case Reset Player Talent and Reset Pet Talent)
* Set npcflag to 65536 for INNKEEPER
* If you use only for GOSSIP set npcflag 1+(16 from TRAINER to reset talents)=17 but if you use INNKEEPER to you need to set npcflag GOSSIP + TRAINER + INNKEEPER (1+16+65536)=65553
* Set ScriptName to "telenpc"


###### TeleNPC Guild House Setup ######
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


###### TeleNPC How to Add more Guild House ######
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