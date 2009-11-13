##--BuffNPC
DELETE FROM creature_template WHERE `entry`=90000;
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('90000','0','7061','0','7061','0','Buff Employee','BuffNPC Master',NULL,'80','80','25000','25000','0','0','10000','35','35','1','1','1.5','1','1763','1763','0','1511','0','0','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','0','1','0','0','0','buffnpc');

##--BuffNPC Spawnat
replace into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('200000', '90000', '1', '1', '7061', '0', '16218.2', '16262.6', '13.495', '6.15527', '25', '0', '0', '25000', '0', '0', '0'); ##GM Island