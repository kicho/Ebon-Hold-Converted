/* Stormwind Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91201';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91201','876','1','80','1101','1','Teleport to Stormwind','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91201');
DELETE FROM `quest_end_scripts` WHERE `id` = '91201';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91201','0','6','0','-8833.16','479.763','112.096','0.587327');

/* Ironforge Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91202';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91202','876','1','80','1101','1','Teleport to Ironforge','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91202');
DELETE FROM `quest_end_scripts` WHERE `id` = '91202';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91202','0','6','0','-4821.61','-1155.58','502.212','3.33523');

/* Darnassus Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91203';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91203','876','1','80','1101','1','Teleport to Darnassus','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91203');
DELETE FROM `quest_end_scripts` WHERE `id` = '91203';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91203','0','6','1','9947.53','2604.15','1316.19','4.223');

/* Exodar Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91204';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91204','876','1','80','1101','1','Teleport to Exodar','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91204');
DELETE FROM `quest_end_scripts` WHERE `id` = '91204';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91204','0','6','530','-4054.75','-11793.4','11.1139','1.51503');

/* Orgrimmar Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91205';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91205','876','1','80','690','1','Teleport to Orgrimmar','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91205');
DELETE FROM `quest_end_scripts` WHERE `id` = '91205';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91205','0','6','1','1677.91','-4314.79','62.5','2.66969');

/* Thunder Bluff Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91206';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91206','876','1','80','690','1','Teleport to Thunder Bluff','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91206');
DELETE FROM `quest_end_scripts` WHERE `id` = '91206';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91206','0','6','1','-1197.18','29.2706','179.755','2.9666');

/* Undercity Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91207';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91207','876','1','80','690','1','Teleport to Undercity','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91207');
DELETE FROM `quest_end_scripts` WHERE `id` = '91207';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91207','0','6','0','1568.48','268.52','-42.1384','1.69719');

/* Silvermoon Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91208';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91208','876','1','80','690','1','Teleport to Silvermoon','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91208');
DELETE FROM `quest_end_scripts` WHERE `id` = '91208';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91208','0','6','530','9373.08','-7166.07','11.4763','5.38653');

/* Dalaran Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91209';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91209','876','1','80','0','1','Teleport to Dalaran','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91209');
DELETE FROM `quest_end_scripts` WHERE `id` = '91209';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91209','0','6','571','5819.08','643.99','647.80','3.32');

/* Shattrath Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91210';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91210','876','1','80','0','1','Teleport to Shattrath','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91210');
DELETE FROM `quest_end_scripts` WHERE `id` = '91210';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91210','0','6','530','-1879.5','5409.46','-12.4277','1.0332');

/* Isle Of Quel'Danas Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91211';
insert into `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91211','876','1','80','0','1','Teleport to Isle Of Quel\'Danas','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91211');
DELETE FROM `quest_end_scripts` WHERE `id` = '91211';
insert into `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91211','0','6','530','12947.4','-6893.31','5.68398','3.09154');

/* Gurubashi Arena Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91212';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91212','876','1','80','0','1','Teleport to Gurubashi Arena','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91212');
DELETE FROM `quest_end_scripts` WHERE `id` = '91212';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91212','0','6','0','-13234.1','217.387','31.6759','1.06815');

/* Gadgetan Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91213';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91213','0','1','80','0','1','Teleport to Gadgetzan Arena','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91213');
DELETE FROM `quest_end_scripts` WHERE `id` = '91213';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91213','0','6','1','-7155.7','-3822.1','8.43','1.06815');

/* GM Island Teleport Quest */
DELETE FROM `quest_template` WHERE `entry` = '91214';
INSERT INTO `quest_template` (`entry`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `RequiredRaces`, `SpecialFlags`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RewHonorableKills`, `PointOpt`, `CompleteScript`) values('91214','876','1','80','0','1','Teleport to GM Island','So you want to teleport?','Speak with the Teleport Master again.','Are you sure, you\'re ready to teleport?','0','0','91214');
DELETE FROM `quest_end_scripts` WHERE `id` = '91214';
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `x`, `y`, `z`, `o`) values('91214','0','6','1','16225.1','16251.1','12.7','1.684');

/* Teleport Master NPC */
DELETE FROM `creature_template` WHERE `entry` = '91200';
INSERT INTO `creature_template` (`entry`, `heroic_entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) values('91200','0','7061','0','7061','0','Mr. Green','Teleport Master',NULL,'80','80','5000','5000','0','0','0','35','35','2','1','1','0','60','165','0','97','1','1500','1500','0','0','0','0','0','0','0','0','50','100','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','1','0','0','2','');
DELETE FROM `creature_questrelation` WHERE `id` = '91200';
DELETE FROM `creature_involvedrelation` WHERE `id` = '91200';
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91201');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91202');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91203');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91204');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91205');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91206');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91207');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91208');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91209');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91210');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91211');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91212');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91213');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('91200', '91214');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91201');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91202');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91203');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91204');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91205');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91206');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91207');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91208');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91209');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91210');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91211'); 
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91212');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91213');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('91200', '91214');