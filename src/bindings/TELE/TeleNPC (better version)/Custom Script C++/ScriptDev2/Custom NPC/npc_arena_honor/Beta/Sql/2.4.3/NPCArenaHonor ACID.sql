DELETE FROM creature_ai_scripts WHERE `creature_id`=xxxx;
insert into creature_ai_scripts values(NULL, 'xxxx', '1', '0', '100', '1', '25000', '25000','600000','600000', '1', '-930', '-931', '-932', '0', '0', '0', '0', '0', '0', '0', '0', 'NpcArena/Honor - Random Say');


DELETE FROM creature_ai_texts WHERE `entry`=-930;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-930, 'Hello!I am NpcArena/Honor and I am hired by the owner of this server "OwnerServerName" to change 200 ArenaPoints to 1000 HonorPoints and 1000 HonorPoints to 200 ArenaPoints!', 0, 0, 0, 'NpcArena/Honor message one');

DELETE FROM creature_ai_texts WHERE `entry`=-931;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-931, 'Hello!I am NpcArena/Honor and I am hired by the owner of this server "OwnerServerName" to change 200 ArenaPoints to 1000 HonorPoints and 1000 HonorPoints to 200 ArenaPoints!', 0, 0, 0, 'NpcArena/Honor message two');

DELETE FROM creature_ai_texts WHERE `entry`=-932;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) 
VALUES (-932, 'Hello!I am NpcArena/Honor and I am hired by the owner of this server "OwnerServerName" to change 200 ArenaPoints to 1000 HonorPoints and 1000 HonorPoints to 200 ArenaPoints!', 0, 0, 0, 'NpcArena/Honor message three');

UPDATE creature_template SET AIName='EventAI' WHERE entry=xxxx;