SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE creature_template_addon ADD COLUMN vehicle_id int(11) unsigned NOT NULL DEFAULT '0' AFTER moveflags;
ALTER TABLE creature_template_addon ADD COLUMN passengers text AFTER vehicle_id;

ALTER TABLE creature_addon ADD COLUMN vehicle_id int(11) unsigned NOT NULL DEFAULT '0' AFTER moveflags;
ALTER TABLE creature_addon ADD COLUMN passengers text AFTER vehicle_id;

UPDATE creature_template SET faction_A = 2082, faction_H = 2082, unit_flags = 0 WHERE entry = 28782;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28782);
DELETE FROM vehicle_data WHERE entry in (135);
INSERT INTO vehicle_data VALUES (135, 12, 52362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM vehicle_seat_data WHERE seat in (1871);
INSERT INTO vehicle_seat_data VALUES (1871, 1);
DELETE FROM npc_spellclick_spells WHERE npc_entry in (28782);
INSERT INTO npc_spellclick_spells VALUES (28782, 52349, 12687, 1, 12687, 3);
DELETE FROM creature_template_addon WHERE entry IN (28782);
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28782, 0, 0, 1, 0, 0, 135, '', '');

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28605,28606,28607));
DELETE FROM spell_script_target WHERE `entry`=52264;	
INSERT INTO spell_script_target VALUES (52264,1,28653);
DELETE FROM vehicle_data WHERE entry in (123);
INSERT INTO vehicle_data VALUES (123, 12, 52264, 52268, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM vehicle_seat_data WHERE seat in (1782);
INSERT INTO vehicle_seat_data VALUES (1782, 1);
DELETE FROM npc_spellclick_spells WHERE npc_entry in (28605,28606,28607);
INSERT INTO npc_spellclick_spells VALUES (28605, 52263, 12680, 1, 12680, 3);
INSERT INTO npc_spellclick_spells VALUES (28606, 52263, 12680, 1, 12680, 3);
INSERT INTO npc_spellclick_spells VALUES (28607, 52263, 12680, 1, 12680, 3);
DELETE FROM creature_template_addon WHERE entry IN (28605,28606,28607);
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28605, 0, 0, 1, 0, 0, 123, '', '');
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28606, 0, 0, 1, 0, 0, 123, '', '');
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28607, 0, 0, 1, 0, 0, 123, '', '');

UPDATE creature_template SET speed = '1.5', unit_flags = 8 WHERE entry IN (33844,33845);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (33844,33845));
DELETE FROM creature WHERE id IN (33844,33845);
DELETE FROM vehicle_data WHERE entry in (349);
INSERT INTO `vehicle_data` VALUES ('349', '24', '62544', '62575', '62960', '62552', '64077', '62863', '0', '0', '0', '0', '62853');
DELETE FROM vehicle_seat_data WHERE seat in (3129);
INSERT INTO `vehicle_seat_data` VALUES ('3129', '1');
INSERT INTO `npc_spellclick_spells` VALUES ('33842', '63791', '13829', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33842', '63791', '13839', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33842', '63791', '13838', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33843', '63792', '13828', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33843', '63792', '13837', '1', '0', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('33843', '63792', '13835', '1', '0', '3');
DELETE FROM creature_template_addon WHERE entry IN (33844,33845);
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (33844, 0, 0, 2049, 0, 0, 349, '', '');
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (33845, 0, 0, 2049, 0, 0, 349, '', '');

UPDATE `creature_template` SET `minhealth` = 26140, `maxhealth` = 26140, `dynamicflags` = 0, `minmana` = 2117, `maxmana` = 2117, `unit_flags` = 772, `minlevel` = 55, `maxlevel` = 55, `unk16` = 10, `unk17` = 1, `InhabitType` = 3, `scale` = 1, `mindmg` = 685, `maxdmg` = 715, `armor` = 3232, `attackpower` = 214, `unit_class` = 2, `type` = 10  WHERE `entry` = 28833;
UPDATE `creature_template` SET `minhealth` = 26140, `maxhealth` = 26140, `dynamicflags` = 0, `minmana` = 0, `maxmana` = 0, `unit_flags` = 772, `minlevel` = 55, `maxlevel` = 55, `unk16` = 10, `unk17` = 1, `InhabitType` = 3, `scale` = 1, `mindmg` = 685, `maxdmg` = 715, `armor` = 3232, `attackpower` = 214, `unit_class` = 2, `type` = 10  WHERE `entry` = 28887;

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28887,28833));
DELETE FROM vehicle_data WHERE entry in (68);
INSERT INTO `vehicle_data` VALUES ('68', '24', '52435', '52576', '52588', '0', '0', '0', '0', '0', '0', '0', '0');
DELETE FROM vehicle_seat_data WHERE seat in (1301);
INSERT INTO `vehicle_seat_data` VALUES ('1301', '3');
INSERT INTO `npc_spellclick_spells` VALUES ('28833', '52447', '12701', '1', '12701', '1');
INSERT INTO `npc_spellclick_spells` VALUES ('28887', '52447', '12701', '1', '12701', '1');

DELETE FROM creature_template_addon WHERE entry IN (28887,28833);
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28887, 0, 0, 2049, 0, 0, 68, '', '');
INSERT INTO creature_template_addon (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `vehicle_id`, `passengers`, `auras`) VALUES (28833, 0, 0, 2049, 0, 0, 68, '', '');

REPLACE INTO npc_spellclick_spells VALUES (32633, 52196, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (32633, 0, 0, 0, 0, 0, 312, NULL, NULL); 
REPLACE INTO vehicle_data VALUES (312, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO npc_spellclick_spells VALUES (31857, 52196, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (31857, 0, 0, 0, 0, 0, 312, NULL, NULL);

REPLACE INTO npc_spellclick_spells VALUES (33062, 52196, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (33062, 0, 0, 0, 0, 0, 335, NULL, NULL); 
REPLACE INTO vehicle_data VALUES (335, 12, 62974, 62286, 62299, 64660, 0, 0, 0, 0, 0, 0, 0); 
REPLACE INTO vehicle_seat_data VALUES (3005, 1);

REPLACE INTO npc_spellclick_spells VALUES (33109, 52196, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (33109, 0, 0, 0, 0, 0, 338, NULL, NULL); 
REPLACE INTO vehicle_data VALUES (338, 12, 62306, 62490, 62308, 62324, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (3011, 1);

REPLACE INTO npc_spellclick_spells VALUES (33060, 52196, 0, 0, 0, 0); 
REPLACE INTO creature_template_addon VALUES (33060, 0, 0, 0, 0, 0, 336, NULL, NULL); 
REPLACE INTO vehicle_data VALUES (336, 12, 62345, 62522, 62346, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (3006, 1);

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(130112, 28833, 609, 1, 1, 25723, 0, 2104.74, -6179.82, 13.47, 1.22173, 360, 0, 0, 26140, 2117, 0, 0),(130113, 28833, 609, 1, 1, 25723, 0, 2253.24, -6193.09, 13.4068, 1.85005, 360, 0, 0, 26140, 2117, 0, 0);