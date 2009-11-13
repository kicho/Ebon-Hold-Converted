/*
Credits: soco11,Dythzer,blackhand101,SlashX 

Who Did What:                                                                                                                   
 soco11 made this Script.                                                                                                   
 Dythzer had some coords and other things I copied off of his at http://forums.scriptdev2.com/index.php?showtopic=3535      
 Blackhand101 and SlashX Updated it to the latest Core, Added new Teleport Locations (Instance, Cities and Mall)                                                                               
 
Why this was Made/updated: Because soco11's Was outdated (Pre TBC) and Dythzer's Script Did not work some people.

Notes: please Notify us at http://forums.scriptdev2.com/index.php?showtopic=3586 if this script is outdated.
*/
#include "precompiled.h"
#include "../../../../shared/Config/Config.h"
#include "../../Config.h"

bool GossipHello_teleguy(Player *player, Creature *_Creature)
{

player->ADD_GOSSIP_ITEM( 5, "[Cities]"                , GOSSIP_SENDER_MAIN, 5552);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 10-25]"        , GOSSIP_SENDER_MAIN, 5550);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 25-45]"        , GOSSIP_SENDER_MAIN, 5551);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 45-60]"        , GOSSIP_SENDER_MAIN, 5553);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 60-70]"        , GOSSIP_SENDER_MAIN, 5554);
player->ADD_GOSSIP_ITEM( 7, "[Battlegrounds and Arenas]"     , GOSSIP_SENDER_MAIN, 5555);
player->ADD_GOSSIP_ITEM( 10, "Remove Resurrection Sickness"  , GOSSIP_SENDER_MAIN, 1296);
player->ADD_GOSSIP_ITEM( 5, "GM Island (Mall)"               , GOSSIP_SENDER_MAIN, 5584);
    
player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());

return true;

}


void SendDefaultMenu_teleguy(Player *player, Creature *_Creature, uint32 action )
{

if(!player->getAttackers().empty())
{
    player->CLOSE_GOSSIP_MENU();
    _Creature->Say("You are in combat!", LANG_UNIVERSAL, NULL);
    return;
}


switch(action)

{

case 5550: //Instances 10-25
player->ADD_GOSSIP_ITEM( 5, "Ragefire Chasm"                     , GOSSIP_SENDER_MAIN, 1248);
player->ADD_GOSSIP_ITEM( 5, "The Wailing Caverns"                , GOSSIP_SENDER_MAIN, 1249);
player->ADD_GOSSIP_ITEM( 5, "The Stockade"                         , GOSSIP_SENDER_MAIN, 1253);
player->ADD_GOSSIP_ITEM( 5, "Deadmines"                          , GOSSIP_SENDER_MAIN, 1250);
player->ADD_GOSSIP_ITEM( 5, "Shadowfang Keep"                    , GOSSIP_SENDER_MAIN, 1251);
player->ADD_GOSSIP_ITEM( 5, "Blackfathom Deeps"                  , GOSSIP_SENDER_MAIN, 1252);
player->ADD_GOSSIP_ITEM( 5, "Razorfen Kraul"                     , GOSSIP_SENDER_MAIN, 1254);
player->ADD_GOSSIP_ITEM( 5, "Razorfen Downs"                     , GOSSIP_SENDER_MAIN, 1256);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 25-45] ->"         , GOSSIP_SENDER_MAIN, 5551);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 45-60] ->"         , GOSSIP_SENDER_MAIN, 5553);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 60-70]"        , GOSSIP_SENDER_MAIN, 5554);
player->ADD_GOSSIP_ITEM( 7, "[Cities] ->"                         , GOSSIP_SENDER_MAIN, 5552);
player->ADD_GOSSIP_ITEM( 7, "[Battlegrounds and Arenas]->"       , GOSSIP_SENDER_MAIN, 5555);


player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());

break;

case 5551: //Instances 25-45
player->ADD_GOSSIP_ITEM( 5, "Scarlet Monastery"                    , GOSSIP_SENDER_MAIN, 1257);
player->ADD_GOSSIP_ITEM( 5, "Uldaman"                              , GOSSIP_SENDER_MAIN, 1258);
player->ADD_GOSSIP_ITEM( 5, "Zul'Farrak"                           , GOSSIP_SENDER_MAIN, 1259);
player->ADD_GOSSIP_ITEM( 5, "Maraudon"                             , GOSSIP_SENDER_MAIN, 1260);
player->ADD_GOSSIP_ITEM( 5, "Maraudon"                             , GOSSIP_SENDER_MAIN, 1260);
player->ADD_GOSSIP_ITEM( 5, "The Sunken Temple"                       , GOSSIP_SENDER_MAIN, 1261);
player->ADD_GOSSIP_ITEM( 5, "Blackrock Depths"                     , GOSSIP_SENDER_MAIN, 1262);
player->ADD_GOSSIP_ITEM( 5, "Dire Maul"                            , GOSSIP_SENDER_MAIN, 1263);
player->ADD_GOSSIP_ITEM( 5, "Blackrock Spire"                      , GOSSIP_SENDER_MAIN, 1264);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 10-25] ->"           , GOSSIP_SENDER_MAIN, 5550);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 45-60] ->"           , GOSSIP_SENDER_MAIN, 5553);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 60-70]"        , GOSSIP_SENDER_MAIN, 5554);
player->ADD_GOSSIP_ITEM( 7, "[Cities] ->"                           , GOSSIP_SENDER_MAIN, 5552);
player->ADD_GOSSIP_ITEM( 7, "[Battlegrounds and Arenas]->"         , GOSSIP_SENDER_MAIN, 5555);


player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());

break;

case 5553: //Instances 45-60
player->ADD_GOSSIP_ITEM( 5, "Stratholme"                            , GOSSIP_SENDER_MAIN, 1265);
player->ADD_GOSSIP_ITEM( 5, "Scholomance"                           , GOSSIP_SENDER_MAIN, 1266);
player->ADD_GOSSIP_ITEM( 5, "Zul'Gurub"                             , GOSSIP_SENDER_MAIN, 1280);
player->ADD_GOSSIP_ITEM( 5, "Molten Core"                           , GOSSIP_SENDER_MAIN, 1281);
player->ADD_GOSSIP_ITEM( 5, "Naxxramas"                             , GOSSIP_SENDER_MAIN, 1284);
player->ADD_GOSSIP_ITEM( 5, "Onyxia's Lair"                         , GOSSIP_SENDER_MAIN, 1282);
player->ADD_GOSSIP_ITEM( 5, "Blackwing Lair"                        , GOSSIP_SENDER_MAIN, 1283);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 10-25] ->"            , GOSSIP_SENDER_MAIN, 5550);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 25-45] ->"            , GOSSIP_SENDER_MAIN, 5551);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 60-70]"        , GOSSIP_SENDER_MAIN, 5554);
player->ADD_GOSSIP_ITEM( 7, "[Cities] ->"                            , GOSSIP_SENDER_MAIN, 5552);
player->ADD_GOSSIP_ITEM( 7, "[Battlegrounds and Arenas]->"          , GOSSIP_SENDER_MAIN, 5555);    
player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());


player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());

break;

case 5554: //Instances 60-70
player->ADD_GOSSIP_ITEM( 5, "Karazhan"                              , GOSSIP_SENDER_MAIN, 4007);
player->ADD_GOSSIP_ITEM( 5, "Gruul's Lair"                          , GOSSIP_SENDER_MAIN, 4008);
player->ADD_GOSSIP_ITEM( 5, "Hellfire Citadel"                      , GOSSIP_SENDER_MAIN, 4009);
player->ADD_GOSSIP_ITEM( 5, "Coilfang Reservoir"                    , GOSSIP_SENDER_MAIN, 4010);
player->ADD_GOSSIP_ITEM( 5, "Tempest Keep"                          , GOSSIP_SENDER_MAIN, 4011);
player->ADD_GOSSIP_ITEM( 5, "Caverns of Time"                       , GOSSIP_SENDER_MAIN, 4012);
player->ADD_GOSSIP_ITEM( 5, "Zul'Aman"                              , GOSSIP_SENDER_MAIN, 4016);
player->ADD_GOSSIP_ITEM( 5, "Black Temple"                          , GOSSIP_SENDER_MAIN, 4013);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 10-25] ->"            , GOSSIP_SENDER_MAIN, 5550);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 25-45] ->"            , GOSSIP_SENDER_MAIN, 5551);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 45-60]"        , GOSSIP_SENDER_MAIN, 5554);
player->ADD_GOSSIP_ITEM( 7, "[Cities] ->"                            , GOSSIP_SENDER_MAIN, 5552);
player->ADD_GOSSIP_ITEM( 7, "[Battlegrounds and Arenas]->"          , GOSSIP_SENDER_MAIN, 5555);    


player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());

break;

case 5552: //Back To Main Menu
    if ( player->GetTeam() == ALLIANCE ) {
player->ADD_GOSSIP_ITEM( 5, "Darnassus"                        , GOSSIP_SENDER_MAIN, 1203);
player->ADD_GOSSIP_ITEM( 5, "Exodar"                        , GOSSIP_SENDER_MAIN, 1216);
player->ADD_GOSSIP_ITEM( 5, "Stormwind"                        , GOSSIP_SENDER_MAIN, 1206);
player->ADD_GOSSIP_ITEM( 5, "Ironforge"                        , GOSSIP_SENDER_MAIN, 1224);
player->ADD_GOSSIP_ITEM( 5, "Shattrath City"                , GOSSIP_SENDER_MAIN, 1287);
player->ADD_GOSSIP_ITEM( 5, "Isle Of Quel'Danas"        , GOSSIP_SENDER_MAIN, 1222);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 10-25] ->"    , GOSSIP_SENDER_MAIN, 5550);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 25-45] ->"    , GOSSIP_SENDER_MAIN, 5551);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 45-60] ->"    , GOSSIP_SENDER_MAIN, 5553);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 60-70]"        , GOSSIP_SENDER_MAIN, 5554);
player->ADD_GOSSIP_ITEM( 7, "[Battlegrounds and Arenas]->"  , GOSSIP_SENDER_MAIN, 5555);

    } else {


player->ADD_GOSSIP_ITEM( 5, "Orgrimmar"                        , GOSSIP_SENDER_MAIN, 1215);
player->ADD_GOSSIP_ITEM( 5, "Silvermoon"                    , GOSSIP_SENDER_MAIN, 1217);
player->ADD_GOSSIP_ITEM( 5, "Undercity"                        , GOSSIP_SENDER_MAIN, 1213);
player->ADD_GOSSIP_ITEM( 5, "Thunder Bluff"                    , GOSSIP_SENDER_MAIN, 1225);
player->ADD_GOSSIP_ITEM( 5, "Shattrath City"                , GOSSIP_SENDER_MAIN, 1287);
player->ADD_GOSSIP_ITEM( 5, "Isle Of Quel'Danas"        , GOSSIP_SENDER_MAIN, 1222);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 10-25] ->"    , GOSSIP_SENDER_MAIN, 5550);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 25-45] ->"    , GOSSIP_SENDER_MAIN, 5551);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 45-60] ->"    , GOSSIP_SENDER_MAIN, 5553);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 60-70]"        , GOSSIP_SENDER_MAIN, 5554);
player->ADD_GOSSIP_ITEM( 7, "[Battlegrounds and Arenas]->"  , GOSSIP_SENDER_MAIN, 5555);
    }
    
player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());

break;

case 5555: //Battlegrounds and Arenas
player->ADD_GOSSIP_ITEM( 5, "Warsong Gulch"                 , GOSSIP_SENDER_MAIN, 1288);
player->ADD_GOSSIP_ITEM( 5, "Arathi Basin"                  , GOSSIP_SENDER_MAIN, 1289);
player->ADD_GOSSIP_ITEM( 5, "Alterac Valley"                , GOSSIP_SENDER_MAIN, 1290);
player->ADD_GOSSIP_ITEM( 5, "Eye of the Storm"              , GOSSIP_SENDER_MAIN, 1291);
player->ADD_GOSSIP_ITEM( 5, "Gurubashi Arena"               , GOSSIP_SENDER_MAIN, 1295);
player->ADD_GOSSIP_ITEM( 5, "Circle of Blood Arena"         , GOSSIP_SENDER_MAIN, 1292);
player->ADD_GOSSIP_ITEM( 5, "Ring of Trials"                , GOSSIP_SENDER_MAIN, 1293);
player->ADD_GOSSIP_ITEM( 5, "The Maul"                      , GOSSIP_SENDER_MAIN, 1294);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 10-25] ->"    , GOSSIP_SENDER_MAIN, 5550);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 25-45] ->"    , GOSSIP_SENDER_MAIN, 5551);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 45-60] ->"    , GOSSIP_SENDER_MAIN, 5553);
player->ADD_GOSSIP_ITEM( 7, "[Instances Level 60-70]"        , GOSSIP_SENDER_MAIN, 5554);
player->ADD_GOSSIP_ITEM( 7, "[Cities] ->"                    , GOSSIP_SENDER_MAIN, 5552);


player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());

break;

case 1203: // Teleport to Darnassus
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(1, 9947.52f, 2482.73f, 1316.21f, 0.0f);
break;

// Teleport to Stormwind
case 1206:
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(0, -8960.14f, 516.266f, 96.3568f, 0.0f);
break;

// Teleport to Undercity
case 1213:
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(0, 1819.71f, 238.79f, 60.5321f, 0.0f);
break;

// Teleport to Orgrimmar
case 1215:
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(1, 1552.5f, -4420.66f, 8.94802f, 0.0f);
break;

// Teleport to Exodar
case 1216:
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(530, -4073.03f, -12020.4f, -1.47f, 0.0f);
break;

// Teleport to Silvermoon
case 1217:
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(530, 9338.74f, -7277.27f, 13.7895f, 0.0f);
break;

case 5584://teleport player to GM Island (Mall)
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(1, 16225.11f,16251.11f,12.7f,1.684f);
break;

case 1222://teleport player to Isle Of Quel'Danas

    if (player->getLevel() >= 65)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(530, 12947.4f,-6893.31f,5.68398f,3.09154f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 65!", LANG_UNIVERSAL, NULL);
    }
    
break;

// Teleport to Ironforge
case 1224:
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(0, -4924.07f, -951.95f, 501.55f, 5.40f);
break;

// Teleport to Thunder Bluff
case 1225:
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(1, -1280.19f,127.21f,131.35f,5.16f);
break;

case 1288://teleport player to Warsong Gulch
    player->CLOSE_GOSSIP_MENU();
    if ( player->GetTeam() == ALLIANCE )
        player->TeleportTo(489, 1525.95f,1481.66f,352.001f,3.20756f);
    else // horde
        player->TeleportTo(489, 930.851f,1431.57f,345.537f,0.015704f);
break;

case 1289://teleport player to Arathi Basin
    player->CLOSE_GOSSIP_MENU();
    if ( player->GetTeam() == ALLIANCE )
        player->TeleportTo(529, 1308.681f,1306.03f,-9.0107f,3.91285f);
    else // horde
        player->TeleportTo(529, 686.053f,683.165f,-12.9149f,0.18f);
break;

case 1290://teleport player to Alterac Valley
    player->CLOSE_GOSSIP_MENU();
    if ( player->GetTeam() == ALLIANCE )
        player->TeleportTo(30, 883.187f,-489.375f,96.7618f,3.06932f);
    else // horde
        player->TeleportTo(30, -818.155f,-623.043f,54.0884f,2.1f);
break;

case 1291://teleport player to Eye of the Storm
    player->CLOSE_GOSSIP_MENU();
    if ( player->GetTeam() == ALLIANCE )
        player->TeleportTo(566, 2487.72f,1609.12f,1224.64f,3.35671f);
    else // horde
        player->TeleportTo(566, 1843.73f,1529.77f,1224.43f,0.297579f);
break;

case 1292://teleport player to Circle of Blood
    player->CLOSE_GOSSIP_MENU();
    player->TeleportTo(530, 2839.44f,5930.17f,11.1002f,3.16284f);
break;

case 1293://teleport player to Ring of Trials
    player->CLOSE_GOSSIP_MENU();
    player->TeleportTo(530, -1999.94f,6581.71f,11.32f,2.3f);
break;

case 1294://teleport player to The Maul
    player->CLOSE_GOSSIP_MENU();
    player->TeleportTo(1, -3761.49f,1133.43f,132.083f,4.57259f);
break;

case 1295:// Gurubashi
    player->CLOSE_GOSSIP_MENU();
    player->TeleportTo(0, -13261.3f, 168.294f, 35.0792f, 1.00688f);
break;

case 1287:// Shattrath City

if( player->getLevel() >= 58)
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(530, -1850.209961f, 5435.821777f, -10.961435f, 3.403913f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 58!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1296://Remove Res Sickness
    if(!player->HasAura(SPELL_ID_PASSIVE_RESURRECTION_SICKNESS,0)) {
        _Creature->Whisper(player->GetGUID(),"You don't have resurrection sickness.");
        GossipHello_teleguy(player, _Creature);
        return;
    }

    _Creature->CastSpell(player,38588,false); // Healing effect
    player->RemoveAurasDueToSpell(SPELL_ID_PASSIVE_RESURRECTION_SICKNESS);
    player->CLOSE_GOSSIP_MENU();
break;

case 1248://teleport player to Ragefire Chasm
        
if( player->getLevel() >= 8)
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, 1800.53f,-4394.68f,-17.93f,5.49f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 8!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1249://teleport player to the Wailing Caverns
        
if (player->getLevel() >= 10)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, -722.53f,-2226.30f,16.94f,2.71f);
    ;
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 10!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1250://teleport player to the Deadmines
        
if (player->getLevel() >= 10)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -11212.04f,1658.58f,25.67f,1.45f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 10!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1251://teleport player to Shadowfang Keep
        
    if (player->getLevel() >= 15)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -254.47f,1524.68f,76.89f,1.56f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 15!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1252://teleport player to Blackfathom Deeps
        
    if (player->getLevel() >= 15)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, 4254.58f,664.74f,-29.04f,1.97f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 15!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1253://teleport player to the Stockade
        
    if (player->getLevel() >= 20)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -8769.76f,813.08f,97.63f,2.26f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 20!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1254://teleport player to Razorfen Kraul
        
    if (player->getLevel() >= 24)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, -4484.04f,-1739.40f,86.47f,1.23f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 24!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1255://teleport player to Gnomeregan
        
    if (player->getLevel() >= 20)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -5162.62f,667.81f,248.05f,1.48f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 20!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1256://teleport player to Razorfen Downs
        
    if (player->getLevel() >= 25)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, -4645.08f,-2470.85f,85.53f,4.39f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 25!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1257://teleport player to the Scarlet Monastery
        
    if (player->getLevel() >= 25)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, 2843.89f,-693.74f,139.32f,5.11f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 25!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1258://teleport player to Uldaman
        
    if (player->getLevel() >= 35)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -6119.70f,-2957.30f,204.11f,0.03f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 35!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1259://teleport player to Zul'Farrak
        
    if (player->getLevel() >= 35)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, -6839.39f,-2911.03f,8.87f,0.41f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 35!", LANG_UNIVERSAL, NULL);
    }
    
break;


case 1260://teleport player to Maraudon
        
    if (player->getLevel() >= 40)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, -1433.33f,2955.34f,96.21f,4.82f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 40!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1261://teleport player to the Sunken Temple
        
    if (player->getLevel() >= 45)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -10346.92f,-3851.90f,-43.41f,6.09f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 45!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1262://teleport player to Blackrock Depths
        
    if (player->getLevel() >= 45)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -7301.03f,-913.19f,165.37f,0.08f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 45!", LANG_UNIVERSAL, NULL);
    }
    
break;
    
case 1263://teleport player to Dire Maul
        
    if (player->getLevel() >= 50)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, -3982.47f,1127.79f,161.02f,0.05f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 50!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1264://teleport player to Blackrock Spire
        
    if (player->getLevel() >= 50)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -7535.43f,-1212.04f,285.45f,5.29f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 50!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1265://teleport player to Stratholme
        
    if (player->getLevel() >= 50)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, 3263.54f,-3379.46f,143.59f,0.00f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 50!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1266://teleport player to Scholomance
        
    if (player->getLevel() >= 50)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, 1219.01f,-2604.66f,85.61f,0.50f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 50!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1280://teleport player to Zul'Gurub
        
    if (player->getLevel() >= 50)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(309, -11916.57f,-1258.83f,92.54f,0.50f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 50!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1281://teleport player to Molten Core
        
    if (player->getLevel() >= 50)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(409, 1083.15f,-470.09f,-107.07f,0.50f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 50!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1282://teleport player to Onyxia'z Lair
        
    if (player->getLevel() >= 55)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(249, 30.75f,-63.22f,-5.16f,0.50f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 50!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1283://teleport player to Blackwing Lair
        
    if (player->getLevel() >= 60)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(469, -7664.88f,-1101.41f,399.67f,0.50f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 60!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 1284://teleport player to Naxxramas
        
    if (player->getLevel() >= 51)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(533, 3005.87f,-3435.01f,294.88f,0.50f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 51!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 4007:// Karazhan

    if (player->getLevel() >= 70)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(0, -11118.8f, -2010.84f, 47.0807f, 0.0f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 70!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 4008:// Gruul's Lair

    if (player->getLevel() >= 65)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(530, 3539.007568f, 5082.357910f, 1.691071f, 0.0f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 65!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 4009:// Hellfire Citadel
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(530, -305.816223f, 3056.401611f, -2.473183f, 2.01f);

break;

case 4010:// Coilfang Reservoir
player->CLOSE_GOSSIP_MENU();
player->TeleportTo(530, 517.288025f, 6976.279785f, 32.007198f, 0.0f);

break;

case 4011:// Tempest Keep

    if (player->getLevel() >= 70)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(530, 3089.579346f, 1399.046509f, 187.653458f, 4.794070f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 70!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 4012:// Caverns of Time

    if (player->getLevel() >= 66)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(1, -8173.66f, -4746.36f, 33.8423f, 4.93989f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 66!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 4016:// Zul'Aman

    if (player->getLevel() >= 70)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(530, 6846.95f, -7954.5f, 170.028f, 4.61501f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 70!", LANG_UNIVERSAL, NULL);
    }
    
break;

case 4013:// Black Temple

    if (player->getLevel() >= 70)
        
    {
        player->CLOSE_GOSSIP_MENU();
        player->TeleportTo(530, -3610.719482f, 324.987579f, 37.400028f, 3.282981f);
    } else {
        player->CLOSE_GOSSIP_MENU();
        _Creature->Say("You must be at least level 70!", LANG_UNIVERSAL, NULL);
    }
    
break;

}


}

bool GossipSelect_teleguy(Player *player, Creature *_Creature, uint32

sender, uint32 action )

{
// Main menu
if (sender == GOSSIP_SENDER_MAIN)
SendDefaultMenu_teleguy(player, _Creature, action   );

return true;

}
void AddSC_teleguy()
{
    Script *newscript;

newscript = new Script;
newscript->Name="teleguy";
newscript->pGossipHello = &GossipHello_teleguy;
newscript->pGossipSelect = &GossipSelect_teleguy;
newscript->pItemHello = NULL;
newscript->pGOHello = NULL;
newscript->pAreaTrigger = NULL;
newscript->pItemQuestAccept = NULL;
newscript->pGOQuestAccept = NULL;
newscript->pGOChooseReward = NULL;

m_scripts[nrscripts++] = newscript;
}