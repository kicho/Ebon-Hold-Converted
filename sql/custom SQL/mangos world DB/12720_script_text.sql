-- -1 609 000 EBON HOLD
DELETE FROM script_texts WHERE entry BETWEEN -1609069 AND -1609051;
INSERT INTO `script_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
-- How To Win Friends And Influence Enemies
   (-1609051, 'I\'ll tear the secrets from your soul! Tell me about the "Crimson Dawn" and your life may be spared!',0,0,0,0,'player SAY_PERSUADE1'),
   (-1609052, 'Tell me what you know about "Crimson Dawn" or the beatings will continue!',0,0,0,0,'player SAY_PERSUADE2'),
   (-1609053, 'I\'m through being courteous with your kind, human! What is the "Crimson Dawn?"',0,0,0,0,'player SAY_PERSUADE3'),
   (-1609054, 'Is your life worth so little? Just tell me what I need to know about "Crimson Dawn" and I\'ll end your suffering quickly.',0,0,0,0,'player SAY_PERSUADE4'),
   (-1609055, 'I can keep this up for a very long time, Scarlet dog! Tell me about the "Crimson Dawn!"',0,0,0,0,'player SAY_PERSUADE5'),
   (-1609056, 'What is the "Crimson Dawn?"',0,0,0,0,'player SAY_PERSUADE6'),
   (-1609057, '"Crimson Dawn!" What is it! Speak!',0,0,0,0,'player SAY_PERSUADE7'),
   (-1609058, 'You\'ll be hanging in the gallows shortly, Scourge fiend!',0,0,0,0,'crusader SAY_CRUSADER1'),
   (-1609059, 'You\'ll have to kill me, monster! I will tell you NOTHING!',0,0,0,0,'crusader SAY_CRUSADER2'),
   (-1609060, 'You hit like a girl. Honestly. Is that the best you can do?',0,0,0,0,'crusader SAY_CRUSADER3'),
   (-1609061, 'ARGH! You burned my last good tabard!',0,0,0,0,'crusader SAY_CRUSADER4'),
   (-1609062, 'Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child.',0,0,0,0,'crusader SAY_CRUSADER5'),
   (-1609063, 'I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!',0,0,0,0,'crusader SAY_CRUSADER6'),
   (-1609064, 'I\'ll tell you everything! STOP! PLEASE!',0,0,0,20,'break crusader SAY_PERSUADED1'),
   (-1609065, 'We... We have only been told that the "Crimson Dawn" is an awakening. You see, the Light speaks to the High General. It is the Light...',0,0,0,20,'break crusader SAY_PERSUADED2'),
   (-1609066, 'The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done.',0,0,0,20,'break crusader SAY_PERSUADED3'),
   (-1609067, 'I know very little else... The High General chooses who may go and who must stay behind. There\'s nothing else... You must believe me!',0,0,0,20,'break crusader SAY_PERSUADED4'),
   (-1609068, 'LIES! The pain you are about to endure will be talked about for years to come!',0,0,0,0,'break crusader SAY_PERSUADED5'),
   (-1609069, 'NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It...',0,0,0,20,'break crusader SAY_PERSUADED6');