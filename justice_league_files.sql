DROP DATABASE IF EXISTS justice_league_files;

CREATE DATABASE justice_league_files;

USE justice_league_files;

CREATE TABLE members
(id_num VARCHAR(7) PRIMARY KEY,
hero_name VARCHAR(30),
identity VARCHAR(30),
occupation VARCHAR(30),
height VARCHAR(30),
weight VARCHAR(30),
place_of_origin VARCHAR(30),
base_of_operations VARCHAR(30),
clearance_level INT,
team_name VARCHAR(30),
protocol_num INT);

CREATE TABLE sub_teams
(team_name VARCHAR(30) PRIMARY KEY,
team_count INT,
location VARCHAR(45));

CREATE TABLE contingencies
(protocol_num INT PRIMARY KEY,
id_num VARCHAR(7),
hero_name VARCHAR(30),
protocol_description VARCHAR(5000),
foreign key (id_num) references members(id_num));

CREATE TABLE archenemies
(villian_name VARCHAR(30) PRIMARY KEY,
id_num VARCHAR(7),
threat_level INT,
identity VARCHAR(30),
occupation VARCHAR(30),
foreign key (id_num) references members(id_num));

CREATE TABLE major_events
(event_name VARCHAR(50) PRIMARY KEY,
year INT(4),
issues INT,
description VARCHAR(2000));

INSERT INTO members
VALUES
('JL-S01','Superman','Kal-El/Clark Kent','Reporter','6.3','235lbs','Krypton','Metropolis',3,'Justice League',4181938);
INSERT INTO members
VALUES
('JL-B02','Batman','Bruce Wayne','CEO/Philanthropist','6.2','210lbs','Gotham City','Gotham City',3,'Justice League',NULL);
INSERT INTO members
VALUES
('JL-W03','Wonder Woman','Diana Prince','Ambassador','6.0','165lbs','Themyscira','Washington D.C.',3,'Justice League',101941);
INSERT INTO members
VALUES
('JL-F04','The Flash','Barry Allen','Forensic Scientist','6.1','195lbs','Central City','Central City',3,'Justice League',101956);
INSERT INTO members
VALUES
('JL-GL05','Green Lantern','John Stewart','Architect/Officer','6.1','201lbs','Detroit,MI','Mogo',3,'Green Lantern Corps',11972);
INSERT INTO members
VALUES
('JL-AM06','Aquaman','Arthur Curry','King of Atlantis','6.1','325lbs','Amnesty Bay','Atlantis',3,'Justice League',111941);
INSERT INTO members
VALUES
('JL-MM07','Martian Manhunter','Jonn Jonzz','Detective','6.7','300lbs','Mars','Mobile',3,'Justice League',111955);
INSERT INTO members
VALUES
('JL-GA08','Green Arrow','Oliver Queen','Business/Activist','5.10','176lbs','Star City','Seattle,WA',2,'Justice League',111942);
INSERT INTO members
VALUES
('JL-BC09','Black Canary','Dinah Lance','Florist','5.4','124lbs','Star City','Seattle,WA',2,'Birds of Prey',81947);
INSERT INTO members
VALUES
('JL-C10','Cyborg','Victor Stone','Adventurer','6.6','385lbs','Detroit,MI','Hall of Justice',3,'Justice League',101980);
INSERT INTO members
VALUES
('JL-S11','Shazam','Billy Batson','Student','5.4/6.2','125lbs/215lbs','Philadelphia','Rock of Eternity',1,'Justice League',121939);
INSERT INTO members
VALUES
('JL-BG12','Booster Gold','Michael Carter','Time Traveler','6.2','215lbs','Metropolis','Mobile',1,'Justice League',21986);
INSERT INTO members
VALUES
('JL-BB13','Blue Beetle','Ted Kord','CEO/Inventor','5.11','184lbs','Metropolis','The Bug',2,'Justice League',NULL);
INSERT INTO members
VALUES
('JL-A14','The Atom','Ray Palmer','Scientist','6.0','180lbs','Ivy Town,CN','Ivy Town,CN',3,'Justice League',NULL);
INSERT INTO members
VALUES
('JL-Z15','Zatanna','Zatanna Zatara','Stage Magician','5.7','127lbs','Gotham City','Hall of Justice',2,'Justice League Dark',111964);
INSERT INTO members
VALUES
('JL-RT16','Red Tornado','John Reddy Smith','Adventurer','6.1','195lbs','Happy Harbor,RI','Happy Harbor,RI',2,'Justice League',81968);
INSERT INTO members
VALUES
('JL-HM17','Hawkman','Carter Hall','Archaeologist','6.1','195lbs','Thanagar','Mobile',2,'Justice Society of America',11940);
INSERT INTO members
VALUES
('JL-HG18','Hawkgirl','Kendra Saunders','Adventurer','5.4','114lbs','Thanagar','Mobile',2,'Justice Society of America',NULL);
INSERT INTO members
VALUES
('JL-PM19','Plastic Man','Patrick O-Brian','Adventurer','6.1','178lbs','Cole City,GA','Cole City,GA',1,'The Terrifics',81941);
INSERT INTO members
VALUES
('JL-F20','Firestorm','Ronnie Raymond/Martin Stein','Student/Teacher','6.2','202lbs','Walton Mills,PN','Walton Mills,PN',2,'Justice League',31978);
INSERT INTO members
VALUES
('JL-MM21','Mister Miracle','Scott Free(Scot)','Escape Artist','6.0','185lbs','New Genesis','Los Angeles,CA',2,'New Gods',NULL);
INSERT INTO members
VALUES
('JL-BB22','Big Barda','Barda','Soldier','7.0','197lbs','Apokolips','Los Angeles,CA',2,'New Gods',NULL);
INSERT INTO members
VALUES
('JL-M23','Metamorpho','Rex Mason','Soldier of Fortune','6.1','200lbs','N/A','Mobile',1,'The Terrifics',NULL);
INSERT INTO members
VALUES
('JL-V24','Vixen','Mari McCabe','Model','5.9','140lbs','Zambesi','New York City',2,'Justice League',71981);
INSERT INTO members
VALUES
('JL-DF25','Doctor Fate','Kent Nelson','Physician','6.2','192lbs','Salem,MA','Tower of Fate',2,'Justice Society of America',51940);
INSERT INTO members
VALUES
('JL-N26','Nightwing','Dick Grayson','Personal Trainer','5.10','175lbs','Gotham City','Bludhaven',3,'Titans',NULL);
INSERT INTO members
VALUES
('JL-ST27','Swamp Thing','Alec Holland','Avatar of the Green','Variable','Variable','Houma,LA','Hall of Justice',2,'Justice League Dark',NULL);
INSERT INTO members
VALUES
('JL-BL28','Black Lightning','Jefferson Pierce','Teacher','6.1','182lbs','Brick City,CL','Brick City,CL',2,'The Outsiders',NULL);
INSERT INTO members
VALUES
('JL-JC29','John Constantine','N/A','Occult Detective','6.0','158lbs','Liverpool,England','House of Mystery',2,'Justice League Dark',NULL);
INSERT INTO members
VALUES
('JL-MT30','Mister Terrific','Michael Holt','Engineer','6.2','215lbs','New York City','New York City',3,'The Terrifics',NULL);

INSERT INTO sub_teams
VALUES
('Justice League','14','Hall of Justice');
INSERT INTO sub_teams
VALUES
('Justice Society of America','21','JAS Brownstone, New York City');
INSERT INTO sub_teams
VALUES
('Titans','6','Titans Tower');
INSERT INTO sub_teams
VALUES
('Green Lantern Corps','7204','Mogo');
INSERT INTO sub_teams
VALUES
('New Gods','134','New Genesis/Apokolips');
INSERT INTO sub_teams
VALUES
('The Outsiders','13','Gotham City/Markovia');
INSERT INTO sub_teams
VALUES
('The Terrifics','4','Mobile');
INSERT INTO sub_teams
VALUES
('Birds of Prey','3','Gotham Clock Tower');
INSERT INTO sub_teams
VALUES
('Justice League Dark','7','Hall of Justice');

INSERT INTO contingencies
VALUES
(4181938,'JL-S01','Superman','Kryptonite,Magic,Lead,Psionic Attacks,Red Solar Radiation');
INSERT INTO contingencies
VALUES
('101941','JL-W03','Wonder Woman','Batman has devised nanites which, when injected into her body, leaves Wonder Woman trapped in a virtual reality battle against an opponent whom she cannot defeat and is her equal in every way. Her refusal to surrender under any circumstance would eventually cause her to tire herself out and die of exhaustion.');
INSERT INTO contingencies
VALUES
('101956','JL-F04','The Flash','One plan Batman has created is with nanites which, if injected near the neck or the base of the spine, would cause the flash to become completely disoriented and suffer a seizure while at super speed, easily putting him off balance and misdirecting him, causing him to crash into the nearest wall or hard surface at the speed of sound, leaving him unconscious.');
INSERT INTO contingencies
VALUES
('11972','JL-GL05','Green Lantern','This plan revolves around Scarecrows Fear Toxin, but without any alterations. Using highly advanced and sophisticated cyborgs stolen from Lex Luthor, the Lantern would be tricked into believing he had made a wrong decision that led to the deaths of innocent people. With his will partially broken, Batman would administer the toxin, breaking it entirely and making the Lantern believe he isnt worthy of his power, as fear is the enemy of will.');
INSERT INTO contingencies
VALUES
('111941','JL-AM06','Aquaman','Batman has begun devising an altered version of Scarecrows Fear Toxin which would cause Aquaman to become Hydrophobic, causing him to remain from any body of water and become weaker every second.Other weaknesses include dehydration, such as placing or trapping Aquaman in a facility or suspended prison with nothing but dry air.');
INSERT INTO contingencies
VALUES
('111945','JL-MM07','Martian Manhunter','The Martian Manhunter has a weakness to fire. Batman has devised a nanite virus which, if introduced into Jonns body, would convert the outer layer of his skin into magnesium, causing him to burst into flames upon exposure to air.');
INSERT INTO contingencies
VALUES
('111942','JL-GA08','Green Arrow','Immobilising one of Green Arrows arms, whether temporarily or permanently, is an obvious weakness, negating him the use of his bow. Another weakness would be similar to that of the Flash; using nanites to cause nausea or a seizure that would leave him comatose.');
INSERT INTO contingencies
VALUES
('81947','JL-BC09','Black Canary','Sonic Feedback to disorient Dinah and reflect her abilities right back in her direction.');
INSERT INTO contingencies
VALUES
('101980','JL-C10','Cyborg','Can be shut down using a computer virus or EMP. Apparently his cybernetic part doesnt provide resistance against mental control be it telepathic or psionic in nature. Both of his mechanical and physical parts can be affected by magic.');
INSERT INTO contingencies
VALUES
('121939','JL-S11','Shazam','The spell that allows Billy to transform into Shazam is purely vocal. Therefore, if he is prevented from speaking, such as being gagged, he will not be able to transform.');
INSERT INTO contingencies
VALUES
('21986','JL-BG12','Booster Gold','With Booster Golds future tech being far more advanced, Batman would use an electromagnetic pulse to disable it, leaving Booster Gold fully vulnerable to a physical attack.');
INSERT INTO contingencies
VALUES
('111964','JL-Z15','Zatanna','She must be able to speak or read backwards in order for her to focus her spells. Powerful enchantments against beings of magic, like gods, are able to restrict her as well, preventing her from accessing enchanted places or dispel the adverse charm. Harmful magical realms such as Hell can also hinder how often she can speak her spells and can cause her great physical damage.');
INSERT INTO contingencies
VALUES
('81968','JL-RT16','Red Tornado','Red Tornado is susceptible to being mechanically reprogrammed as well as controlled.');
INSERT INTO contingencies
VALUES
('11940','JL-HM17','Hawkman','Every time he is born again he must wander the earth till he meets again with his eternal soul mate. But as soon as they form a deep bond, they are destined to be murdered again and it continues.');
INSERT INTO contingencies
VALUES
('81941','JL-PM19','Plastic Man','His semi-liquid form remains stable at relatively high and low temperatures...provided that the temperature change is gradual. A sudden change, induces a complete change of phase, creating a truly solid or truly liquid form. Plastic Man is shown to have some weakness to extreme heat (intense heat vision attack from a martian) and can be temporarily melted. Plastic Mans molecules can also be scrambled using ultrasonic wave distortions.');
INSERT INTO contingencies
VALUES
('31978','JL-F20','Firestorm','Locking Firestorm in Phantom Zone quicky depowers him due to the lack of raw materials within that space.');
INSERT INTO contingencies
VALUES
('71981','JL-V24','Vixen','Removing her Totem results in her access to her powers to be non-existent.');
INSERT INTO contingencies
VALUES
('51940','JL-DF25','Doctor Fate','Although Kent Nelson is an accomplished magician and crime fighter, without his helm he is significantly weakened. His invulnerability does not protect him against gas-attacks. After long mystical battles or casting powerful spells, Fates power would be depleted and needs to restore his mystical energy.');

INSERT INTO archenemies
VALUES
('The Joker','JL-B02',3,'N/A','Professional Criminal');
INSERT INTO archenemies
VALUES
('Bane','JL-B02',2,'N/A','Professional Criminal');
INSERT INTO archenemies
VALUES
('Scarecrow','JL-B02',2,'Johnathan Crane','Psychologist');
INSERT INTO archenemies
VALUES
('Lex Luthor','JL-S01',3,'N/A','Businessman,Scientist,Criminal');
INSERT INTO archenemies
VALUES
('Brainiac','JL-S01',3,'Vril Dox','World Collector');
INSERT INTO archenemies
VALUES
('Doomsday','JL-S01',4,'N/A','Mass Murderer');
INSERT INTO archenemies
VALUES
('Darkseid','JL-S01',4,'Uxas','Dictator of Apokolips');
INSERT INTO archenemies
VALUES
('Lobo','JL-S01',2,'"Unpronounceable"','Bounty Hunter');
INSERT INTO archenemies
VALUES
('Bizarro','JL-S01',3,'N/A','N/A');
INSERT INTO archenemies
VALUES
('Gorilla Grodd','JL-F04',2,'Grodd','King of Gorilla City');
INSERT INTO archenemies
VALUES
('Reverse Flash','JL-F04',3,'Eobard Thawne','Time Traveler,Criminal');
INSERT INTO archenemies
VALUES
('Captain Cold','JL-F04',1,'Leonard Snart','Professional Criminal');
INSERT INTO archenemies
VALUES
('Sinestro','JL-GL05',3,'Thaal Sinestro','Yellow Lantern,Terrorist');
INSERT INTO archenemies
VALUES
('Atrocitus','JL-GL05',2,'Atros','Red Lantern,Terrorist');
INSERT INTO archenemies
VALUES
('Circe','JL-W03',3,'N/A','Witch');
INSERT INTO archenemies
VALUES
('Cheetah','JL-W03',2,'Barbara Ann Minerva','Archaeologist');
INSERT INTO archenemies
VALUES
('Ares','JL-W03',3,'N/A','God of War');
INSERT INTO archenemies
VALUES
('Deathstroke','JL-N26',3,'Slade Wilson','Assassin');
INSERT INTO archenemies
VALUES
('Black Manta','JL-AM06',2,'David Hyde','Pirate,Mercenary');
INSERT INTO archenemies
VALUES
('Ocean Master','JL-AM06',2,'Orm Marius','Ruler of Dagon City');
INSERT INTO archenemies
VALUES
('Vandal Savage','JL-HM17',3,'Vandar Arg','Conqueror');
INSERT INTO archenemies
VALUES
('Solomon Grundy','JL-GA08',1,'Cyrus Gold','Criminal');
INSERT INTO archenemies
VALUES
('Black Adam','JL-S11',3,'Teth-Adam','Protector of Kahndaq');
INSERT INTO archenemies
VALUES
('Amazo','JL-S01',2,'N/A','Immortal Android');
INSERT INTO archenemies
VALUES
('The Anti-Monitor','JL-GL05',4,'Mobius','Universe Destroyer');
INSERT INTO archenemies
VALUES
('Starro','JL-MM07',4,'Star-0','Celestial Conqueror');
INSERT INTO archenemies
VALUES
('Max Lord','JL-W03',3,'Maxwell Lord IV','Terrorist');
INSERT INTO archenemies
VALUES
('Clock King','JL-GA08',1,'William Tockman','Crimelord');
INSERT INTO archenemies
VALUES
('Despero','JL-GL05',3,'N/A','Conqueror');
INSERT INTO archenemies
VALUES
('Eclipso','JL-JC29',4,'Galid','Agent of Chaos');

INSERT INTO major_events
VALUES
('Flash of Two Worlds',1961,1,'Silver Age Flash meets his Golden Age hero, introducing the concept of the DC Multiverse, started almost annual crossover between Earth-One characters and Earth-Two characters.');
INSERT INTO major_events
VALUES
('The Fourth World',1970,57,'The Fourth World is a science-fiction based mythology revolving around ancient space deities known as the New Gods. Similar to the gods of Earth lore, the New Gods are larger than life, possessing fantastic powers, which they use in a never-ending struggle between good and evil.');
INSERT INTO major_events
VALUES
('Crisis on Infinite Earths',1985,61,'The Anti-Monitor tries to destroy the DC Multiverse, but only succeeds in merging it into a single universe');
INSERT INTO major_events
VALUES
('Legends',1986,28,'Darkseid wants to destabilize Earth’s power structure so he can harvest the Anti-Life Equation. He decides that humanity will be easier to control if he destroys the legends that inspire them.');
INSERT INTO major_events
VALUES
('Invasion!',1989,38,'The Alien Alliance,  led by the war-like Dominators and Khunds,  intend on wiping out humanity to destroy all of Earth’s metahumans.  This all-out assault on superheroes leads to a war consuming the entire world,  and ramifications throughout the universe.');
INSERT INTO major_events
VALUES
('A Lonely Place of Dying',1989,5,'Traumatized by the death of Jason Todd, Batman begins a brutal quest for retribution. Deducing the connection between Bruce Wayne and Batman as well as the repercussions that the murder are having on him, Tim Drake seeks out Dick Grayson in a desperate attempt to reunite the Dynamic Duo.');
INSERT INTO major_events
VALUES
('War of the Gods',1991,24,'Wonder Woman and the Amazons are caught in the middle of a war between the ancient Roman gods and the Olympian gods. Meanwhile, Circe frames Themyscira for crimes that leads to a war between America and the Amazonian home.');
INSERT INTO major_events
VALUES
('The Death of Superman',1992,11,'Superman engages in battle with a seemingly unstoppable killing machine named Doomsday in the streets of Metropolis. As the fight concludes, both combatants apparently die from their wounds.');
INSERT INTO major_events
VALUES
('Reign of the Superman',1993,23,'Four new heroes emerge, each claiming in some way to be Superman.');
INSERT INTO major_events
VALUES
('Knightfall',1993,86,'Bruce Wayne (Batman) suffers burnout and is systematically assaulted and crippled by a Venom-enhanced villain named Bane. Wayne is replaced as Batman by an apprentice named Jean-Paul Valley, who becomes increasingly violent and unstable, tarnishing his reputation. Eventually, Wayne is healed through paranormal means and reclaims his role as Batman.');
INSERT INTO major_events
VALUES
('Worlds Collide',1994,14,'Fred Bentson unwittingly becomes a portal between two worlds and two cities.  A living link between Dakota,  home city of the Milestone heroes,  and Metropolis,  home of Superman.  Eventually Bentson loses control of his powers and transforms into Rift.  The heroes of the two universes come together to stop him and seal the dangerous rift between their worlds.');
INSERT INTO major_events
VALUES
('Zero Hour:Crisis In Time',1994,51,'Parallax attempts to destroy the timestream so he can construct a better world that won’t produce the evils that turned him into a villain.  With the barriers of time destroyed,  time begins eating away at itself from both ends,  and the lines separating alternate timelines become blurred,  allowing them to interact.');
INSERT INTO major_events
VALUES
('Cataclysm',1998,34,'Gotham City is unexpectedly hit with a massive earthquake, and nobody is prepared. Wayne Manor collapses with Alfred inside. Batman is in the Batcave which collapses on top of him, leaving him trapped underground. The city is broken and burning.');
INSERT INTO major_events
VALUES
('DC One Million',1998,38,'In the 853rd Century the original Superman still lives, but has spent over fifteen thousand years in a self-imposed exile in his Fortress of Solitude in the heart of the sun. Superman announces that he will soon return to humanity,  and to celebrate,  Justice Legion Alpha travels back in time to the late 20th century to meet Superman’s original teammates in the JLA.');
INSERT INTO major_events
VALUES
('No Mans Land',1999,100,'Gotham City has suffered a massive earthquake. The United States government has declared it a No Man’s Land, which effectively quarantines the entire island city. Bridges are destroyed, and any other means of entering or leaving are guarded by the U.S. Army.');
INSERT INTO major_events
VALUES
('Our Worlds at War',2001,37,'Imperiex, an embodiment of entropy, detects imperfections in the fabric of the universe, and plans to destroy it and create a new, perfect universe. He heads to Earth in order to destroy it and induce a new Big Bang.');
INSERT INTO major_events
VALUES
('Identity Crisis',2004,22,'Sue Dibny, the wife of superhero the Elongated Man, is murdered in their apartment. The DC superhero community rallies to find the murderer, uncovering shocking truths about Dr. Light and Batman reasoning for creating countermeasures for the Justice League.');
INSERT INTO major_events
VALUES
('Infinite Crisis',2005,98,'Alex Luthor, Lois Lane of Earth-Two, Superboy-Prime, and Superman of Earth-Two disappeared as the last surviving heroes of the destroyed Multiverse. It’s revealed that they have been monitoring the heroes of New Earth as they descend into darkness, and believe this generation is unworthy of their legacy. They return to bring back the Multiverse, in an effort to restore the idealistic values of their own time.');
INSERT INTO major_events
VALUES
('Sinestro Corps War',2007,18,'The Green Lantern Corps fight an interstellar war against the Sinestro Corps,  an army led by the former Green Lantern Sinestro who are armed with yellow power rings and seek a universe ruled through fear.');
INSERT INTO major_events
VALUE
('Final Crisis',2008,30,'Following the final battle of the New Gods, the spirit of Darkseid tumbles through time itself, coming to rest on Earth. Darkseid’s “fall” has sundered reality, creating a singularity at the heart of creation, into which all of space and time are slowly being drawn, setting the stage for the evil god’s final victory, to be claimed in his inevitable death.');
INSERT INTO major_events
VALUES
('Battle for the Cowl',2009,17,'Batman is dead. In the ensuing power vacuum Gotham begins to descend into chaos. Who will take up the Mantle of the Bat?');
INSERT INTO major_events
VALUES
('Blackest Night',2009,80,'As the War between the different colored Lantern Corps rages on, the prophecy of the Blackest Night descends and it’s up to Hal Jordan and the Green Lantern Corps to lead the heroes in a battle to save the universe from an army of undead Black Lanterns made up of fallen Green Lanterns and deceased heroes and villains.');
INSERT INTO major_events
VALUES
('Brightest Day',2010,122,'At the climax of Blackest Night, a number of deceased heroes and villains were returned to life by the Entity. Now the resurrected search to understand the Entity’s reasons for bringing them back, and to deal with other consequences of their returns.');
INSERT INTO major_events
VALUES
('Flashpoint',2011,66,'When the Flash attempts to change time and save his mother from death, he alters history dramatically. When the events are corrected, universes are joined together (one being the Wildstorm universe/imprint bringing the team of the Authority back into DC) in order to repair the damage, leading to The New 52');
INSERT INTO major_events
VALUES
('Night of the Owls',2012,15,'Batman and his allies fight against the Court of Owls organization as they attempt to cement their control over Gotham City, which they have been manipulating in secret for centuries.');
INSERT INTO major_events
VALUES
('Lights Out',2013,5,'Relic, a being from another universe, aims to destroy the emotional spectrum of the Lantern Corps. The lights of the Lanterns are fading as the emotional spectrum is being drained.');
INSERT INTO major_events
VALUES
('Trinity War',2013,17,'The Justice League, Justice League of America and Justice League Dark will take it to the next level! And so are DCs Trinity; Superman, Batman and Wonder Woman as they fight to find the truth of who could pit them against one another.');
INSERT INTO major_events
VALUES
('Forever Evil',2013,77,'With the three Justice League teams “dead,”  the Crime Syndicate comes from Earth-3 to take over this world,  where they recruit villains to their cause.  Prime Earth villains that resist follow Lex Luthor to form the Injustice League to take down the Crime Syndicate.');
INSERT INTO major_events
VALUES
('Futures End',2014,90,'Prime Earth is feeling the after effects of a war across the multiverse. As a new threat approaches the vulnerable Earth, Batman Beyond travels back in time to help the heroes of Prime Earth fend off the impending apocalypse.');
INSERT INTO major_events
VALUES
('Godhead',2014,20,'Highfather, the leader of the New Gods, discovers that the ring-wielders breached the Source Wall and now he is trying to find those secrets for himself by using one ring of every color of the emotional spectrum. Of course, nothing is ever that simple and what follows will threaten to alter the very fabric of the universe as we know it.');
INSERT INTO major_events
VALUES
('Multiversity',2014,9,'The Multiverse is being invaded by malevolent destroyers known as The Gentry, who serve an entity only known as the Empty Hand. Various heroes from across the Multiverse are forced to band together to face this inter-dimensional threat.');
INSERT INTO major_events
VALUES
('Convergence',2015,90,'Brainiac has been collecting cities and inhabitants from various timelines that have ended, trapping them in domes on a planet outside of time and space and opening them up to see what happens.');
INSERT INTO major_events
VALUES
('Savage Dawn',2016,10,'Superman and Vandal Savage have been on a collision course for centuries. As Kal-El struggles to survive against the barbarian’s attacking hordes, the events that led to Vandal Savage’s creation and his unexpected connection to Krypton are revealed.');
INSERT INTO major_events
VALUES
('Darkseid War',2015,19,'Two of the deadliest villains of the DC Multiverse, Darkseid and the Anti-Monitor, declare war on each other, with the Justice League caught in the crossfire.');
INSERT INTO major_events
VALUES
('Final Days of Superman',2016,8,'His time without powers made Kal-El realize that the world is in need of more protectors...more super-powered beings like himself, especially given that he is now dying. But where will he find such beings? And what about the rumor he has heard of another older Superman married to another Lois Lane?');
INSERT INTO major_events
VALUES
('Justice League vs. Suicide Squad',2016,11,'Batman has begun to question the need for Amanda Wallers Task Force X in a world where the Justice League already exists. Determined, he decides to put a stop to the Suicide Squad, but the Squad will not go gentle into that good night that easily. ');
INSERT INTO major_events
VALUES
('The Button',2017,4,'The Dark Knight and the Fastest Man Alive, the two greatest detectives in the world unite to explore the mystery behind a certain blood-stained smiley face button embedded in the Batcave wall. What starts as a simple investigation turns deadly when the secrets of the button prove irresistible to an unwelcome third party—and it is not who anyone suspects! It is a mystery woven through time and the ticking clock starts here!');
INSERT INTO major_events
VALUES
('Dark Nights:Metal',2017,26,'Batman discovers a dark multiverse, connected to the core multiverse through mysterious metals that he has encountered over the years. His investigations eventually result in him releasing seven evil versions of himself from the dark multiverse that invade Earth.');
INSERT INTO major_events
VALUES
('Doomsday Clock',2017,12,'The finale of the story that was established in DC Rebirth, officially concluding the storylines that began in The New 52 continuity. The comic features the concept of the Multiverse, where the Watchmen universe exists separately from the DC Universe and each universes characters treat the other universes characters as fictional.');
INSERT INTO major_events
VALUES
('Heroes in Crisis',2018,9,'The heroes of the DC Universe find themselves in turmoil when two of their own end up dead.');
INSERT INTO major_events
VALUES
('City of Bane',2019,10,'Batman confronts Bane, and even his own alternate-timeline father, the Flashpoint Batman!');
INSERT INTO major_events
VALUES
('Dark Knights: Death Metal',2020,7,'Earth has been conquered by the Batman Who Laughs and Perpetua. The bad guys won, the good guys lost. And the Earth is suffering.');
INSERT INTO major_events
VALUES
('Future State',2021,52,'Examines the possible future of the DC Universe, involving both classic and new characters. New versions of Superman, Batman, Wonder Woman, Green Lantern, The Flash and Aquaman are introduced.');
INSERT INTO major_events
VALUES
('Infinite Frontier',2021,1,'The DC Multiverse has expanded into a larger "Omniverse" where everything is canon, while the DC Universe is revealed to be a "Linearverse" where all characters live even longer, and it will still deal with the repercussions of DC Rebirth. 
The new Multiverse has two opposite worlds that represent the Metaverse and sustain the balance: one is the Elseworld, and the other is Earth Omega, where Darkseid is imprisoned.');
