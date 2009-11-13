DELETE FROM creature_ai_scripts WHERE `creature_id`=xxxx;
insert into creature_ai_scripts values(NULL, 'xxxx', '1', '0', '100', '1', '25000', '25000','600000','600000', '1', '-920', '-921', '-922', '0', '0', '0', '0', '0', '0', '0', '0', 'BuffNPC - Random Say');


DELETE FROM creature_ai_texts WHERE `entry`=-920;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-920, 'Hello!I am BuffNPC and I am hired by the owner of this server "OwnerServerName" to Buff Players in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold per 1 buff!', 0, 0, 0, 'BuffNPC message one');

DELETE FROM creature_ai_texts WHERE `entry`=-921;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-921, 'Hello!I am BuffNPC and I am hired by the owner of this server "OwnerServerName" to Buff Players in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold per 1 buff!', 0, 0, 0, 'BuffNPC message two');

DELETE FROM creature_ai_texts WHERE `entry`=-922;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-922, 'Hello!I am BuffNPC and I am hired by the owner of this server "OwnerServerName" to Buff Players in exchange for a 2 gold!If you come in the next 2 minute you can benefit from a reduction of 1 gold and you pay only 1 gold per 1 buff!', 0, 0, 0, 'BuffNPC message three');

UPDATE creature_template SET AIName='EventAI' WHERE entry=xxxx;