UPDATE creature SET spawntimesecs = 30 WHERE id = 26449;
 
UPDATE creature_template SET AIName = 'EventAI', dmg_multiplier = 2 WHERE entry = 26449;
DELETE FROM creature_ai_scripts WHERE creature_id = 26449;
INSERT INTO creature_ai_scripts VALUES
(2644901, 26449, 0,0,80,1, 2000,2000,5000,5000, 11,19643,1,0, 0,0,0,0, 0,0,0,0,'Gamel the Cruel - mortal strike');

DELETE FROM `gameobject_template` WHERE `entry` IN (181102, 181105, 181106, 181165);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES
(31897, 22, 6671, 'Lightwell', '', '', 2, 64, 1, 7001, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31896, 22, 6671, 'Lightwell', '', '', 2, 64, 1, 27873, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31895, 22, 6671, 'Lightwell', '', '', 2, 64, 1, 27874, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31894, 22, 6671, 'Lightwell', '', '', 2, 64, 1, 28276, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31893, 22, 6671, 'Lightwell', '', '', 2, 64, 1, 48084, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31883, 22, 6671, 'Lightwell', '', '', 2, 64, 1, 48085, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');