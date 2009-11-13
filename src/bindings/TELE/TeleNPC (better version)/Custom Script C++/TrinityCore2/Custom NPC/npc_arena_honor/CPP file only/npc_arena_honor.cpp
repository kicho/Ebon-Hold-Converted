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

#define GOSSIP_ITEM_ARENA_TO_HONOR "Change 100 Arena to 900 Honor"
#define GOSSIP_ITEM_HONOR_TO_ARENA "Change 1000 Honor to 90 Arena"

bool GossipHello_npc_arena_honor(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM(0, GOSSIP_ITEM_ARENA_TO_HONOR, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
    pPlayer->ADD_GOSSIP_ITEM(0, GOSSIP_ITEM_HONOR_TO_ARENA, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);

    pPlayer->SEND_GOSSIP_MENU(3961,pCreature->GetGUID());
    return true;
}

bool GossipSelect_npc_arena_honor(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF+1)
    {
        if (pPlayer->GetArenaPoints() >= 100)
        {
            pPlayer->ModifyArenaPoints(-100); 
            pPlayer->ModifyHonorPoints(+900);
      }else {
        pCreature->MonsterWhisper("You don't have enough ArenaPoints.", pPlayer->GetGUID());
        }
        pPlayer->CLOSE_GOSSIP_MENU();
        return true;
    }
    if (uiAction == GOSSIP_ACTION_INFO_DEF+2)
    {
        if (pPlayer->GetHonorPoints() >= 1000)
        {
            pPlayer->ModifyHonorPoints(-1000); 
            pPlayer->ModifyArenaPoints(+90);
        }else {
        pCreature->MonsterWhisper("You don't have enough HonorPoints.", pPlayer->GetGUID());
        }
        pPlayer->CLOSE_GOSSIP_MENU();
        return true;
    }
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