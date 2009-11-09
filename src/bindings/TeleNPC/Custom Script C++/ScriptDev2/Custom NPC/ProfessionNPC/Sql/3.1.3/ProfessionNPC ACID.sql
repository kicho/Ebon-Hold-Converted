DELETE FROM creature_ai_scripts WHERE `creature_id`=xxxx;
insert into creature_ai_scripts values(NULL, 'xxxx', '1', '0', '100', '1', '25000', '25000','600000','600000', '1', '-910', '-911', '-912', '0', '0', '0', '0', '0', '0', '0', '0', 'ProfessionNPC - Random Say');


DELETE FROM creature_ai_texts WHERE `entry`=-910;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-910, 'Hello!I am ProfessionNPC and I am hired by the owner of this server "OwnerServerName" to Increase Profesion Skill with 2 points in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold for 1 skill!', 0, 0, 0, 'ProfessionNPC message one');

DELETE FROM creature_ai_texts WHERE `entry`=-911;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-911, 'Hello!I am ProfessionNPC and I am hired by the owner of this server "OwnerServerName" to Increase Profesion Skill with 2 points in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold for 1 skill!', 0, 0, 0, 'ProfessionNPC message two');

DELETE FROM creature_ai_texts WHERE `entry`=-912;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-912, 'Hello!I am ProfessionNPC and I am hired by the owner of this server "OwnerServerName" to Increase Profesion Skill with 2 points in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold for 1 skill!', 0, 0, 0, 'ProfessionNPC message three');

UPDATE creature_template SET AIName='EventAI' WHERE entry=xxxx;