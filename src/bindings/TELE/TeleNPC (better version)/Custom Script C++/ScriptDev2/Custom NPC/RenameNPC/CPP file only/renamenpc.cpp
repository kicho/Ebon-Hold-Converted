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
SDName: renamenpc
SD%Complete: 100
SDComment: Rename Master
SDCategory: NPC
EndScriptData */

#include "precompiled.h"
#include <cstring>
extern DatabaseMysql SD2Database;

bool GossipHello_RenameNPC(Player* pPlayer, Creature* pCreature)
{
    pPlayer->ADD_GOSSIP_ITEM_EXTENDED(0, "Rename? Choose yes/no", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1, "", 0, true);
    pPlayer->ADD_GOSSIP_ITEM(0, "You're not interested.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);

    pPlayer->PlayerTalkClass->SendGossipMenu(907,pCreature->GetGUID());
    return true;
}

bool GossipSelect_RenameNPC(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    if (uiAction == GOSSIP_ACTION_INFO_DEF+2)
    {
        pCreature->MonsterWhisper("Mh ok. See ya!", pPlayer->GetGUID());
        pPlayer->CLOSE_GOSSIP_MENU();
    }

    return true;
}

bool GossipSelectWithCode_RenameNPC(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction, const char* sCode)
{
    if (uiSender == GOSSIP_SENDER_MAIN)
    {
        switch (uiAction)
        {
        case GOSSIP_ACTION_INFO_DEF+1:
            if(std::strcmp(sCode, "yes") ==0)
            {
                pCreature->MonsterWhisper("Your nick will change on next login!", pPlayer->GetGUID());
                pPlayer->SetAtLoginFlag(AT_LOGIN_RENAME);
                SD2Database.PExecute("UPDATE characters.characters SET at_login = at_login | '1' WHERE guid = '%u'", pPlayer->GetGUIDLow());

                pPlayer->CLOSE_GOSSIP_MENU();
            }
            else if (std::strcmp(sCode, "no") ==0)
            {
                pCreature->MonsterWhisper("Mmm take this!", pPlayer->GetGUID());
                pCreature->CastSpell(pPlayer, 12826, true);
            }
            pPlayer->CLOSE_GOSSIP_MENU();

            return true;
        }
    }

    return false;
}

void AddSC_renamenpc()
{
    Script *newscript;

      newscript = new Script;
    newscript->Name = "renamenpc";
    newscript->pGossipHello = &GossipHello_RenameNPC;
    newscript->pGossipSelect = &GossipSelect_RenameNPC;
    newscript->pGossipSelectWithCode = &GossipSelectWithCode_RenameNPC;
    newscript->RegisterSelf();
}