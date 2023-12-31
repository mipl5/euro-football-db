CREATE SCHEMA if not exists euro_football;

DROP SCHEMA if exists euro_football;

create table if not exists footballClubs(
	club_id int NOT NULL,
    PRIMARY KEY (club_id),
    club_name varchar (255) NOT NULL,
    club_est int NOT NULL,
    club_chairman varchar (100) NOT NULL,
    club_league varchar (100) NOT NULL,
    club_headCoach varchar (100) NOT NULL,
    club_country varchar(100) NOT NULL,
    club_owner varchar(100) NULL,
    club_nickname varchar(100) NOT NULL
);
insert into footballClubs(club_id, club_name, club_est, club_chairman, club_league, club_headCoach, club_country, club_owner, club_nickname)
values (1, "Chelsea F.C.", 1905, "Todd Boehly", "Premier League", "Mauricio Pochettino", "England", "BlueCo", "The Blues"),
(2, "Arsenal F.C.", 1886, "Stan & Josh Kroenke", "Premier League", "Mikel Arteta", "England", "Kroenke Spots & Entertainment", "The Gunners"),
(3, "Tottenham Hotspur F.C.", 1882, "Daniel Leby", "Premier League", "Ange Postecoglou", "England", "ENIC International Ltd.","The Lilywhites"),
(4, "Eintracht Frankfurt e. V.", 1899, "Dino Fischer", "Bundesliga", "Dino Toppmöller", "Germany", NULL, "Die Adler (The Eagles)"),
(5, "Futbol Club Barcelona", 1899, "Joan Laporta", "La Liga", "Xavi", "Spain", NULL, "Barca or Blaugrana (team)"),
(6, "Football Club Internazionale Milano", 1908, "Steven Zhang", "Simone Inzaghi", "Serie A", "Italy", "Suning Holdings Group", "I Nerazzuri (The Black and Blues)");

create table if not exists FootballPlayers(
	players_id int NOT NULL,
    players_first_name varchar(20) NOT NULL,
    players_last_name varchar(20) NOT NULL,
    players_current_football_club varchar(50) NULL,
    players_position_s varchar(50) NOT NULL,
    players_number int NOT NULL,
    players_birth_yr int NOT NULL,
    players_height_in_meters float NOT NULL,
    players_nationality varchar(20) NOT NULL,
    
	PRIMARY KEY (players_id)
);
insert into FootballPlayers (players_id, players_first_name, players_last_name, players_current_football_club, players_position_s, players_number, players_birth_yr, players_height_in_meters, players_nationality)
values (1, "Erling", "Haaland", "Manchester City F.C.","striker", 9,2000,1.94, "Norwegian"),
(2, "Kai", "Havertz", "Arsenal F.C.","attacking midfielder, forward, left-back",29, 1999, 1.93, "German"),
(3, "Raheem", "Sterling", "Chelsea F.C.","winger",7, 1994, 1.72, "Jamaican"),
(4, "Harry", "Kane", "Bayern Munich F.C.","striker",9, 1993, 1.88, "English"),
(5, "Thomas", "Müller", "Bayern Munich F.C.","forward, attacking midfielder", 25, 1989, 1.85, "German"),
(8, "Jude", "Bellingham", "Real Madrid F.C.","midfielder",5, 2003, 1.86,"English"),
(10, "Jamal", "Musiala", "Bayern Munich F.C.","attacking midfielder, winger", 42, 2003, 1.84, "German"),
(11, "Gabriel", "Jesus", "Arsenal F.C.","forward",9, 1997, 1.75, "Brazilian"),
(12, "Mohamed", "Salah", "Liverpool F.C.","right winger, forward",11,1992, 1.75,"Egyptian"),
(13, "Harvey", "Elliott", "Liverpool F.C.","attacking midfielder, right winger",19, 2003, 1.7, "English"),
(14, "Declan", "Rice", "Arsenal F.C.","defensive midfielder",41, 1999,1.85, "English");

create table if not exists footballnationalteams (
COUNTRY_FIFA_CODE VARCHAR (255),
	PRIMARY KEY (COUNTRY_FIFA_CODE),
    COUNTRY_NAME VARCHAR (255),
    ASSOCIATION VARCHAR (255),
    CAPTAIN VARCHAR (255),
    HEAD_COACH VARCHAR (255),
    MOST_CAPS VARCHAR (255),
    HOME_STADIUM VARCHAR (255),
    NICKNAME VARCHAR (255)
);

INSERT INTO FOOTBALLNATIONALTEAMS(
COUNTRY_FIFA_CODE,COUNTRY_NAME, ASSOCIATION, CAPTAIN, HEAD_COACH, MOST_CAPS, HOME_STADIUM, NICKNAME
) VALUES ("ENG","England", "Fédération Française de Football", "Harry Kane", "Gareth Southgate", "Peter Shilton (125)", "Wembley Stadium", "The Three Lions"),
		 ("FRA","France", "The Football Association", "Kylian Mbappé", "Didier Deschamps", "Hugo Lloris (145)", "Stade de France", "Les Bleus"),
         ("GER","Germany", "Deutscher Fußball-Bund", "İlkay Gündoğan", "Julian Nagelsmann", "Lothar Matthäus (150)", "Various", "DFB-Team");


CREATE TABLE IF NOT EXISTS STADIUMS_ARENAS(
STADIUM_ID INT, PRIMARY KEY (STADIUM_ID),
STADIUM_ARENA_NAME VARCHAR (255),
LOCATION VARCHAR (255),
STADIUM_CAPACITY INT
);
INSERT INTO STADIUMS_ARENAS (
		STADIUM_ID, STADIUM_ARENA_NAME, LOCATION,STADIUM_CAPACITY
) VALUES (1, "Stamford Bridge", "Fulham, London, SW6 England", 40343), (2, "Allianz Arena", "Munich, Bavaria, Germany", 75000);
