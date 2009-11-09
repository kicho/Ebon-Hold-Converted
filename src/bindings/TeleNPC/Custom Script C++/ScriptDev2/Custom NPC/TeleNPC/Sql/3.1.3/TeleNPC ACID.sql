DELETE FROM creature_ai_scripts WHERE `creature_id`=xxxx;
insert into creature_ai_scripts values(NULL, 'xxxx', '1', '0', '100', '1', '25000', '25000','600000','600000', '1', '-900', '-901', '-902', '0', '0', '0', '0', '0', '0', '0', '0', 'TeleNPC - Random Say');


DELETE FROM creature_ai_texts WHERE `entry`=-900;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-900, 'Hello!I am TeleNPC and I am hired by the owner of this server "OwnerServerName" to Teleport Players in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold per 1 teleport!', 0, 0, 0, 'TeleNPC message one');

DELETE FROM creature_ai_texts WHERE `entry`=-901;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-901, 'Hello!I am TeleNPC and I am hired by the owner of this server "OwnerServerName" to Teleport Players in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold per 1 teleport!', 0, 0, 0, 'TeleNPC message two');

DELETE FROM creature_ai_texts WHERE `entry`=-902;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-902, 'Hello!I am TeleNPC and I am hired by the owner of this server "OwnerServerName" to Teleport Players in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold per 1 teleport!', 0, 0, 0, 'TeleNPC message three');

UPDATE creature_template SET AIName='EventAI' WHERE entry=xxxx;