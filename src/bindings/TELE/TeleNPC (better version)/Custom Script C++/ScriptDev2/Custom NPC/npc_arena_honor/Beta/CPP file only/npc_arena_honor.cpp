/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: npc_arena_honor
SD%Complete: 100
SDComment: Used to change Arena Point to Honor Point and vice versa
SDCategory: NPC
EndScriptData */

#include "precompiled.h"
#include "../../../../shared/Config/Config.h"
#include "../../config.h"

bool GossipHello_npc_arena_honor(Player* pPlayer, Creature* pCreature)
{
	Config SD2Config;
	if(!SD2Config.SetSource(_SCRIPTDEV2_CONFIG,true))
		error_log("SD2: Unable to open configuration file");

	if(SD2Config.GetBoolDefault("NPCArenaHonor.OnlyGMs", false)) // If NPCArenaHonor.OnlyGMs is enabled in scriptdev2.conf
		if (pPlayer->GetSession()->GetSecurity() == SEC_PLAYER)
		{
			pCreature->MonsterWhisper("Sorry, I can only trade to game masters.", pPlayer->GetGUID());
			return true;
		}

	bool EnableTradeArenatoHonor = SD2Config.GetBoolDefault("NPCArenaHonor.EnableTradeArenatoHonor", true);
	bool EnableTradeHonortoArena = SD2Config.GetBoolDefault("NPCArenaHonor.EnableTradeHonortoArena", true);

	// Main Menu for Alliance
    if (pPlayer->GetTeam() == ALLIANCE)
	{
	// Check config if "Change 100 Arena to 900 Honor" is enabled or not
	if(EnableTradeArenatoHonor)
		pPlayer->ADD_GOSSIP_ITEM( 5, "Change Arena to Honor ->"   , GOSSIP_SENDER_MAIN, 1000);
	// Check config if "Change 1000 Honor to 90 Arena" is enabled or not
	if(EnableTradeHonortoArena)
		pPlayer->ADD_GOSSIP_ITEM( 5, "Change Honor to Arena ->"   , GOSSIP_SENDER_MAIN, 2000);
	}
	else // Main Menu for Horde
	{
	// Check config if "Change 100 Arena to 900 Honor" is enabled or not
	if(EnableTradeArenatoHonor)
		pPlayer->ADD_GOSSIP_ITEM( 5, "Change Arena to Honor ->"   , GOSSIP_SENDER_MAIN, 1000);
	// Check config if "Change 1000 Honor to 90 Arena" is enabled or not
	if(EnableTradeHonortoArena)
		pPlayer->ADD_GOSSIP_ITEM( 5, "Change Honor to Arena ->"   , GOSSIP_SENDER_MAIN, 2000);
	}

    pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,pCreature->GetGUID());

return true;
}

void SendDefaultMenu_npc_arena_honor(Player* pPlayer, Creature* pCreature, uint32 uiAction)
{

// Not allow in combat
if (pPlayer->isInCombat())
{
    pPlayer->CLOSE_GOSSIP_MENU();
    pCreature->MonsterSay("You are in combat!", LANG_UNIVERSAL, NULL);
	return;
}

Config SD2Config;
if(!SD2Config.SetSource(_SCRIPTDEV2_CONFIG,true))
		error_log("SD2: Unable to open configuration file");
	bool EnableTradeArenatoHonor = SD2Config.GetBoolDefault("NPCArenaHonor.EnableTradeArenatoHonor", true);
	bool EnableTradeHonortoArena = SD2Config.GetBoolDefault("NPCArenaHonor.EnableTradeHonortoArena", true);

switch(uiAction)
{

//////////////////////////////////////////////////Change xx Arena xx Honor///////////////////////////////////////////////////////////////

case 1000: // Change xx Arena to xx Honor
        if (pPlayer->GetArenaPoints() >= (SD2Config.GetFloatDefault("ArenaPoints",0)))
        {
            pPlayer->ModifyArenaPoints(-(SD2Config.GetFloatDefault("ArenaPoints",0))); 
            pPlayer->ModifyHonorPoints(+(SD2Config.GetFloatDefault("HonorPoints",0)));
        }else {
        pCreature->MonsterWhisper("You don't have enough ArenaPoints.", pPlayer->GetGUID());
        }
        pPlayer->CLOSE_GOSSIP_MENU();
break;

//////////////////////////////////////////////////Change xx Honor xx Arena///////////////////////////////////////////////////////////////

case 2000: // Change xx Honor to xx Arena
        if (pPlayer->GetHonorPoints() >= (SD2Config.GetFloatDefault("HonorPoints",0)))
        {
            pPlayer->ModifyHonorPoints(-(SD2Config.GetFloatDefault("HonorPoints",0))); 
            pPlayer->ModifyArenaPoints(+(SD2Config.GetFloatDefault("ArenaPoints",0)));
        }else {
        pCreature->MonsterWhisper("You don't have enough HonorPoints.", pPlayer->GetGUID());
        }
        pPlayer->CLOSE_GOSSIP_MENU();
break;

 pPlayer->CLOSE_GOSSIP_MENU();

} // end of switch
} //end of function


bool GossipSelect_npc_arena_honor(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
	// Main menu
	if (uiSender == GOSSIP_SENDER_MAIN)
	SendDefaultMenu_npc_arena_honor(pPlayer, pCreature, uiAction);

return true;
}

void AddSC_npc_arena_honor()
{
    Script *newscript;

      newscript = new Script;
    newscript->Name = "npc_arena_honor";
    newscript->pGossipHello =  &GossipHello_npc_arena_honor;
    newscript->pGossipSelect = &GossipSelect_npc_arena_honor;
    newscript->RegisterSelf();
}