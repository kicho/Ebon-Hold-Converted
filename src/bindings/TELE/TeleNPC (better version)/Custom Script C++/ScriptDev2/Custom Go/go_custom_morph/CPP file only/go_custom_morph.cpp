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
SDName: go_custom_morph
SD%Complete: 100
SDComment: Used to get a new look
SDCategory: Game Objects
EndScriptData */

#include "precompiled.h"

bool GOHello_go_custom_morph(Player* pPlayer, GameObject* pGo)
{
    uint16 display_id;
    uint32 select = rand()%10;
    switch(select)
    {
        case 0: display_id = 6374;
            break;
        case 1: display_id = 16358;
            break;
        case 2: display_id = 28010;
            break;
        case 3: display_id = 20521;
            break;
        case 4: display_id = 19913;
            break;
        case 5: display_id = 14521;
            break;
        case 6: display_id = 21371;
            break;
        case 7: display_id = 5240;
            break;
        case 8: display_id = 24564;
            break;
        case 9: display_id = 18417;
            break;
    }
    if (pPlayer->GetDisplayId() != pPlayer->GetNativeDisplayId())
        pPlayer->DeMorph();
    else
        pPlayer->SetDisplayId(display_id);

    return false;
}

void AddSC_go_custom_morph()
{
    Script *newscript;

      newscript = new Script;
    newscript->Name = "go_custom_morph";
    newscript->pGOHello = &GOHello_go_custom_morph;
    newscript->RegisterSelf();
}