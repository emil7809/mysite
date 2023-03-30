PRAGMA foreign_keys = ON;
PRAGMA foreign_keys;

DROP TABLE IF EXISTS tweets;

CREATE TABLE tweets(
  tweet_id              TEXT,
  tweet_user_fk         TEXT,
  tweet_created_at      TEXT,
  tweet_message         TEXT,
  tweet_image           TEXT,
  tweet_updated_at      TEXT,
  tweet_total_retweets  TEXT,
  tweet_total_likes     TEXT,
  tweet_total_views     TEXT,
  tweet_total_replies   TEXT,
  PRIMARY KEY(tweet_id),
  FOREIGN KEY(tweet_user_fk) REFERENCES users(user_id)
) WITHOUT ROWID;

/* SLOSS 1*/
INSERT INTO tweets VALUES(
  "4e638cbcd027472facf5080f336bdb83", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740561",
  "I’m delighted",
  "4e638cbcd027472facf5080f336bdb83.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 2*/
INSERT INTO tweets VALUES(
  "1c5e1f559abd4188a905981cfa5d9c09", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740562",
  "INDIA! Bengaluru and Mumbai sold out in 10 minutes -we are working on making more tickets available - PLEASE DO NOT BUY TICKETS FROM RESALE SITES OR TOUTS. More news shortly",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 3*/
INSERT INTO tweets VALUES(
  "a4dc7dc763024f19a416190fb5a1a332", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740563",
  "INDIA! Tickets are now onsale for my first ever tour - March 16/17/18 in Bengaluru(Chowdiah Auditorium), New Delhi (JLN Weightlifting Auditorium) and Mumbai - DeadAnt's Laughing Dead Comedy Festival (Mehboob Studios) Hope to see you there! https://danielsloss.com/tour/ or Bookmyshow",
  "a4dc7dc763024f19a416190fb5a1a332.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 4*/
INSERT INTO tweets VALUES(
  "247b4725308f4bb38af5fca75e9a630d", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740564",
  "Poland! I’ve added a second show in Warsaw and another in Poznan, 13  + 14 December. All links on my website. Hope to see you there. Tickets: https://danielsloss.com/tour/",
  "247b4725308f4bb38af5fca75e9a630d.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 5*/
INSERT INTO tweets VALUES(
  "18a5c340fe53440f948ad142488b22eb", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740565",
  "Cheers to the new followers from The Palladium shows opening for @Daniel_Sloss the past few weeks. Here’s the tickets to my new tour show I was on about. Get amongst! ",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 6*/
INSERT INTO tweets VALUES(
  "934729dcaff0478b979814459448dd28", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740566",
  "Edinburgh! My 10th August 2023 show at the 
  @edinplayhouse
  is now onsale at 
  @edfringe
 as well as from the venue. Hope to see you there!
  #edfringe",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 7*/
INSERT INTO tweets VALUES(
  "2957fac6a88240f980cff51414e1186f", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740567",
  "Happy Valentine's Day",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 8*/
INSERT INTO tweets VALUES(
  "95036df827204d6ea8b5dd0abf68b8cd", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740568",
  "Today with the absence of our Co-hosts we merged podcasts with 
  @BtecPhilosoph
  in their studio in London to create a crossover episode for both platforms. ",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 9*/
INSERT INTO tweets VALUES(
  "3975031dd92f4c9e80ac2b6c04cc5020", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740569",
  "Today with the absence of our Co-hosts we merged podcasts with 
  @BtecPhilosoph
  in their studio in London to create a crossover episode for both platforms. ",
  "3975031dd92f4c9e80ac2b6c04cc5020.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* SLOSS 10*/
INSERT INTO tweets VALUES(
  "14e57f3d20174f7abdffcf44267f18d8", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740570",
  "Sloss is joined by that sexy bastard 
  @GarethWaugh
  for today’s prescription of laughs. Available now on Patreon NOW or struggle through til Wednesday if you hate yourself",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

  /* SLOSS 11*/
INSERT INTO tweets VALUES(
  "9e532e71cf8d4f3995bc450aa58080ac", 
  "1ad43d14574045a39006da33bc476d20",
  "1676740071",
  "cat",
  "11.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

  /* MatPat 1*/
INSERT INTO tweets VALUES(
  "8100150f9ef040bbb7a6bbb0f0938e47", 
  "32d322f985804fea8e9f7525053df778",
  "1676740561",
  "Went through a LOT of history with 
  @anthonypadilla
  yesterday...for better or worse 💀",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 2*/
INSERT INTO tweets VALUES(
  "52ea5cc0ec9541d89de2fa93c67d01a2", 
  "32d322f985804fea8e9f7525053df778",
  "1676740562",
  "Had the privilege of being at #TheLastOfUs premiere this week and they nailed it. 

  This is a team that understood and respected the story they were telling. Even when you know what's coming, it hits HARD! 

  Fantastic adaption of a fantastic game. HUGE congrats 
  @TheLastofUsHBO
  !",
  "52ea5cc0ec9541d89de2fa93c67d01a2.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 3*/
INSERT INTO tweets VALUES(
  "21bb593687344198b00065ced5f6d997", 
  "32d322f985804fea8e9f7525053df778",
  "1676740563",
  "Listen as I break down the Backrooms and other top videos from 2022 with 
  @YouTube
  's top brass then predict why creators like 
  @airrack
  and 
  @RyanTrahan
  represent the future of online video here in 2023.",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 4*/
INSERT INTO tweets VALUES(
  "9047d19169624b289404d2620b540ead", 
  "32d322f985804fea8e9f7525053df778",
  "1676740564",
  "What do I have in common with a rapping grim reaper and an ancient shark girl?

  We're all on 
  @YouTube
  's first-ever podcast Like and Describe. Find it literally ANYWHERE you get your podcasts.

  @gawrgura
 
  @moricalliope
  #ad",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 5*/
INSERT INTO tweets VALUES(
  "5e765db689d34a91b67b8278772cab1c", 
  "32d322f985804fea8e9f7525053df778",
  "1676740565",
  "I saw 
  @Dream
  ...and told him to put the mask back on.",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 6*/
INSERT INTO tweets VALUES(
  "2aff9d4451d24ff2bf42259d7cf4fa80", 
  "32d322f985804fea8e9f7525053df778",
  "1676740566",
  "ow you know I'm watching, 
  @Ranboosaysstuff
  . 

  Your move.",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 7*/
INSERT INTO tweets VALUES(
  "542c780fae64491f949fafa820433725", 
  "32d322f985804fea8e9f7525053df778",
  "1676740567",
  "Happy Valentine's Day",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 8*/
INSERT INTO tweets VALUES(
  "36f40ae6225948b0b1840db62b108ffc", 
  "32d322f985804fea8e9f7525053df778",
  "1676740568",
  "Took him five years, but he finally got to the Sans fight...",
  "",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 9*/
INSERT INTO tweets VALUES(
  "dd44ce34ebfb4f94a339645eee38e4fa", 
  "32d322f985804fea8e9f7525053df778",
  "1676740569",
  "Just leaving this here...
  - Purple shirts
  - Matching ice cream

  Looks like Crying Child bit back. 
  But hey...you know the rest 😉",
  "dd44ce34ebfb4f94a339645eee38e4fa.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

/* MatPat 10*/
INSERT INTO tweets VALUES(
  "c6febf80abe0425fa7e5ade3121fca5a", 
  "32d322f985804fea8e9f7525053df778",
  "1676740570",
  "We're LIVE tonight with Freddy!
  9 pm EST/6 pm PST on Game Theory

  Get hype for MUSIC MAN!",
  "c6febf80abe0425fa7e5ade3121fca5a.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

  /* MatPat 11*/
INSERT INTO tweets VALUES(
  "7ccc8efb2fe34ef594b75877723792df", 
  "32d322f985804fea8e9f7525053df778",
  "1676740071",
  "cat",
  "11.jpg",
  "0",
  "362",
  "2582",
  "216900",
  "36"
  );

  

/* MatPat 12*/
INSERT INTO tweets VALUES(
  "a600818947644cfdbd51987e81886091", 
  "32d322f985804fea8e9f7525053df778",
  "1676740861",
  "IT'S HERE! Did you guess the new channel right??",
  "a600818947644cfdbd51987e81886091.jpg",
  "0",
  "2988",
  "33800",
  "2700000",
  "1723"
  );

/* MatPat 13*/
INSERT INTO tweets VALUES(
  "ab9210ead6154bc3b16014acbf47fd6c", 
  "32d322f985804fea8e9f7525053df778",
  "1676740461",
  "Exciting news: Theorist is HIRING! ",
  "",
  "0",
  "309",
  "4913",
  "2552000",
  "157"
  );

  

/* ELON 1*/
INSERT INTO tweets VALUES(
  "b7036182edf1490cb5ad78e981df647d", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740561",
  "Surround your house with treadmills set to jogging speed to stop walking dead ur welcome",
  "b7036182edf1490cb5ad78e981df647d.jpg",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 2*/
INSERT INTO tweets VALUES(
  "0e80bacd074f4f78befa92949a057a7f", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740562",
  "Something should be done",
  "0e80bacd074f4f78befa92949a057a7f.jpg",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 3*/
INSERT INTO tweets VALUES(
  "4b67cfb855684af6825799255a142490", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740563",
  "169 mT to orbit this year so far",
  "",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 4*/
INSERT INTO tweets VALUES(
  "9d159440aa1a4f1d9d661271002cb9c8", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740564",
  "Stage 1 to stage 2 mass ratio is too high on Falcon 9, necessitating a long entry burn. This is fixed on Starship.",
  "",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 5*/
INSERT INTO tweets VALUES(
  "81153162daf44fd48a13511af94e5edc", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740565",
  "I used to be in crypto, but now I got interested in AI",
  "",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 6*/
INSERT INTO tweets VALUES(
  "9f44a3be631d46f69caa25bbec0a571d", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740566",
  "The ability of Twitter advertising to reach the most influential people in the world is often not fully appreciated.

  While a few other social networks are technically bigger, Twitter is where the writers & leaders spend their time.",
  "",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 7*/
INSERT INTO tweets VALUES(
  "665029a33b3b4db9bda451e22c1cce07", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740567",
  "",
  "665029a33b3b4db9bda451e22c1cce07.jpg",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 8*/
INSERT INTO tweets VALUES(
  "e15c7f75fad94b42aef16ce53859361e", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740568",
  "BasedAI",
  "",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 9*/
INSERT INTO tweets VALUES(
  "f20ac4f7be184da096d9bc2c1cc302ed", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740569",
  "First Starlink v2 satellites reach orbit",
  "",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 10*/
INSERT INTO tweets VALUES(
  "3c7449dd3942441f9c8e4e6f7a79aa63", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740570",
  "Liftoff!",
  "",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );

/* ELON 11*/
INSERT INTO tweets VALUES(
  "bcb60a05d2294d8c93f4654b8ad414b7", 
  "773fb079ed8d464eb8bef39d2c843128",
  "1676740071",
  "cat",
  "11.jpg",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );
/* PRAGMA foreign_keys = ON;

  INSERT INTO tweets VALUES(
  "bcb60a05d2294d8c93f4654b8ad414b4", 
  "xxx",
  "1676740071",
  "A",
  "",
  "0",
  "36200",
  "454300",
  "64200000",
  "171000"
  );
 */
  SELECT * FROM tweets;




  