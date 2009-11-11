delete from spell_proc_event where entry in (20335,20336,20337);

-- (20335) Heart of the Crusader (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (20335);
INSERT INTO `spell_proc_event` VALUES (20335, 0x00, 10, 0x80000000000800000, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0.000000, 100.000000, 0);

insert into spell_chain values (20335, 0, 20335, 1, 0);
insert into spell_chain values (20336, 20335, 20335, 2, 0);
insert into spell_chain values (20337, 20336, 20335, 3, 0);