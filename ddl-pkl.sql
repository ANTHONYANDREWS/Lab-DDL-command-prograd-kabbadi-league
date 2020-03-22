-- PROGRESSION - 1


-- 1. **Create table city**

CREATE TABLE CITY(
id number(11),
name VARCHAR(50) NOT NULL,
CONSTRAINT CITY_PK PRIMARY KEY(id)
);
-- 2. **Create table referee**
CREATE TABLE REFEREE(
id number(11),
name VARCHAR(50) NOT NULL,
CONSTRAINT REFEREE_PK PRIMARY KEY(id)
);

-- 3. **Create table innings**
CREATE TABLE INNINGS(
id number(11),
innings_number number(11) NOT NULL,
CONSTRAINT INNINGS_PK PRIMARY KEY(id)
);


-- 4. **Create table extra_type**
CREATE TABLE EXTRA_TYPE(
id number(11),
name VARCHAR(50) NOT NULL,
CONSTRAINT EXTRA_TYPE_PK PRIMARY KEY(id)
);

-- 5. **Create table skill**
CREATE TABLE SKILL(
id number(11),
name VARCHAR(50) NOT NULL,
CONSTRAINT SKILL_PK PRIMARY KEY(id)
);

-- 6. **Create table team**

CREATE TABLE TEAM(
id number(11),
name VARCHAR(50) NOT NULL,
coach VARCHAR(50) NOT NULL,
captain number(11),
home_city number(11),
--CONSTRAINT fk_CITY
--FOREIGN KEY(home_city)
--REFERENCES CITY(ID),
CONSTRAINT TEAM_PK PRIMARY KEY(id)
);
SELECT * FROM TEAM;



-- 7. **Create table player**
CREATE TABLE PLAYER(
id number(11),
name VARCHAR(50) NOT NULL,
country VARCHAR(50) NOT NULL,
skill_id number(11),
team_id number(11),
CONSTRAINT fk_SKILL
FOREIGN KEY(skill_id)
REFERENCES SKILL(id),
CONSTRAINT fk_TEAM
FOREIGN KEY(team_id)
REFERENCES TEAM(id),
CONSTRAINT PLAYER_PK PRIMARY KEY(id)
);
ALTER TABLE PLAYER DROP CONSTRAINT fk_skill;
ALTER TABLE  PLAYER DROP CONSTRAINT FK_TEAM;
DROP TABLE PLAYER;
-- 8. **Create table venue**

CREATE TABLE VENUE(
id number(11),
stadium_name VARCHAR(50),
city_id number(11),
CONSTRAINT VENUE_PK PRIMARY KEY(id)
);


-- 9. **Create table event**

CREATE TABLE EVENT(
id NUMBER(11),
innings_id NUMBER(11),
event_no NUMBER(11),
raider_id NUMBER(11),
raid_points NUMBER(11),
defending_points NUMBER(11),
clock_in_seconds NUMBER(11),
team_one_score NUMBER(11),
team_two_score NUMBER(11),
CONSTRAINT EVENT_PK PRIMARY KEY(id)
);

DROP TABLE EVENT

-- 10. **Create table extra_event**

CREATE TABLE EXTRA_EVENT(

id NUMBER(11),
event_id NUMBER(11),
extra_type_id NUMBER(11),
points NUMBER(11),
scoring_team_id NUMBER(11),
CONSTRAINT EXTRA_EVENT_PK PRIMARY KEY(id)
);

-- 11. **Create table outcome**

CREATE TABLE OUTCOME(
id NUMBER(11),
status VARCHAR(100),
winner_team_id NUMBER(11),
score NUMBER(11),
player_of_match NUMBER(11),
CONSTRAINT TABLE_PK PRIMARY KEY(id)
);

-- 12. **Create table game**
CREATE TABLE GAME
( 
id NUMBER(11),
game_date DATE, 
team_id_1 NUMBER(11),
team_id_2 NUMBER(11),
venue_id NUMBER(11),
outcome_id NUMBER(11),
referee_id_1 NUMBER(11),
referee_id_2 NUMBER(11),
first_innings_id NUMBER(11),
second_innings_id NUMBER(11),

CONSTRAINT GAME_PK PRIMARY KEY(id)  
);

-- 13. **Drop table city**
DROP TABLE CITY;
-- 14. **Drop table innings**
DROP TABLE INNINGS;
-- 15. **Drop table skill**
DROP TABLE SKILL;
-- 16. **Drop table extra_type**
DROP TABLE EXTRA_TYPE;
