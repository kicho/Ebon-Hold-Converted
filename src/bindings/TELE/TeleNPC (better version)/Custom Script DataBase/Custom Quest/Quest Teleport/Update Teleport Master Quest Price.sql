-- Set Minlevel for city teleport quests to 55
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91201;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91202;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91203;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91204;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91205;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91206;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91207;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91208;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91209;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91210;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91211;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91212;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91213;
UPDATE `quest_template` SET `MinLevel` = 55 WHERE `entry` = 91214;

-- Stormwind Quest Text and Delivery quest
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Stormwind?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91201;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91201;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91201;

-- IronForge Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Ironforge?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91202;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91202;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91202;

-- Darnassus Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Darnassus?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91203;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91203;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91203;

-- The Exodar Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to the Exodar?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91204;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91204;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91204;

-- Orgrimmar Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Orgrimmar?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91205;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91205;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91205;

-- Thunderbluff Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Thunderbluff?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91206;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91206;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91206;

-- Undercity Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to The Undercity?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91207;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91207;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91207;

-- Silvermoon Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Silvermoon?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91208;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91208;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91208;

-- Dalaran Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Dalaran?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91209;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91209;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91209;

-- Shattrath Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Shattrath?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91210;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91210;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91210;

-- Isle Of Quel'Danas Teleport Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Isle Of Quel\'Danas?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91211;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91211;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91211;

-- Gurubashi Arena Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Gurubashi Arena?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91212;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91212;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91212;

-- Gadgetan Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to Gadgetan?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91213;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91213;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91213;

-- GM Island Quest Text
UPDATE `quest_template` SET `Details` = 'So you want to teleport to GM Island?$BWell I need some reagents and im afraid you will have to get them', `Objectives` = 'Bring the teleport master his reagents!', `OfferRewardText` = 'Ahh I see you have the reagents i need to teleport you!', `RequestItemsText` = 'Do you have my reagents yet?' WHERE `entry` = 91214;
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 91214;
UPDATE `quest_template` SET `ReqItemId1` = 17031, `ReqItemCount1` = 1 WHERE `entry` = 91214;

-- New Teleport Masters
-- Stormwind Teleport Master
DELETE FROM `creature_template` WHERE `entry` = '91201';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91201','0','7061','0','7061','0','Wywan','Stormwind Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');

-- Ironforge Teleport Master
DELETE FROM `creature_template` WHERE `entry` = '91202';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91202','0','7061','0','7061','0','Gomlin','Ironforge Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');

-- Darnassus Teleport Master
DELETE FROM `creature_template` WHERE `entry` = '91203';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91203','0','7061','0','7061','0','Malad','Darnassus Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');

-- Exodar Teleport Master
DELETE FROM `creature_template` WHERE `entry` = '91204';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91204','0','7061','0','7061','0','Yrudry','Exodar Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');

-- Orgrimmar Teleport Master
DELETE FROM `creature_template` WHERE `entry` = '91205';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91205','0','7061','0','7061','0','Gylg','Orgrimmar Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');

-- ThunderBluff Teleport Master
DELETE FROM `creature_template` WHERE `entry` = '91206';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91206','0','7061','0','7061','0','Yaarg Spearhoof','Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');

-- Undercity Teleport Master
DELETE FROM `creature_template` WHERE `entry` = '91207';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91207','0','7061','0','7061','0','Mebor','Undercity Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');

-- Silvermoon Teleport Master
DELETE FROM `creature_template` WHERE `entry` = '91208';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91208','0','7061','0','7061','0','Halendor','Silvermoon Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');

-- Make sure there are no duplicate quest relations
DELETE FROM `creature_questrelation` WHERE `id` = '91201';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91201';
DELETE FROM `creature_questrelation` WHERE `id` = '91202';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91202';
DELETE FROM `creature_questrelation` WHERE `id` = '91203';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91203';
DELETE FROM `creature_questrelation` WHERE `id` = '91204';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91204';
DELETE FROM `creature_questrelation` WHERE `id` = '91205';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91205';
DELETE FROM `creature_questrelation` WHERE `id` = '91206';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91206';
DELETE FROM `creature_questrelation` WHERE `id` = '91207';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91207';
DELETE FROM `creature_questrelation` WHERE `id` = '91208';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91208';

-- New Quest Relations
-- Stormwind Teleport Master
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91204');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91202');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91203');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91201', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91204');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91202');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91203');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91211');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91201', '91214');

-- IronForge Teleport Master
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91201');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91204');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91203');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91202', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91201');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91204');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91203');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91211');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91202', '91214');

-- Darnassus Teleport Master
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91201');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91202');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91204');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91203', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91201');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91202');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91204');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91211');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91203', '91214');

-- Exodar Teleport Master
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91201');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91202');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91203');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91204', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91201');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91202');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91203');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91211');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91204', '91214');

-- Orgrimmar Teleport Master
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91206');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91207');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91208');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91205', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91206');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91207');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91208');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91211');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91205', '91214');

-- ThunderBluff Teleport Master
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91205');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91207');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91208');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91206', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91205');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91207');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91208');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91211');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91206', '91214');

-- Undercity Teleport Master
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91205');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91206');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91208');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91207', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91205');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91206');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91208');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91211');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91207', '91214');

-- Silvermoon Teleport Master
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91205');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91206');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91207');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91208', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91205');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91206');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91207');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91211');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91208', '91214');