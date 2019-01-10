CREATE TABLE PRODUCE(
	PRODUCE_ID INT IDENTITY PRIMARY KEY,
	PRODUCE_CODE VARCHAR(10) NOT NULL,
	PRODUCE_NAME NVARCHAR(50) NOT NULL,
	PRODUCE_DESCRIPTION NVARCHAR(255),
	IMAGE VARCHAR(50),
	PRICE FLOAT,
	PRODUCE_QUANTITY INT,
	TYPE INT,
	PRODUCE_STATUS INT,
)
GO

CREATE TABLE SCHEDULE(
	SCHEDULE_ID INT IDENTITY PRIMARY KEY,
	SCHEDULE_CODE VARCHAR(10) NOT NULL,
	SCHEDULE_NAME NVARCHAR(255) ,
	SCHEDULE_DESCRIPTION NVARCHAR(255),
	START_DATE DATE,
	END_DATE DATE,
	SCHEDULE_EVALUTE NVARCHAR(255),
	SCHEDULE_STATUS INT,
)
GO

CREATE TABLE NEWS(
	NEWS_ID INT IDENTITY PRIMARY KEY,
	NEWS_CODE VARCHAR(50) NOT NULL,
	NEWS_NAME NVARCHAR(50) ,
	NEWS_DESCRIPTION NVARCHAR(255),
	NEWS_URL_IMG VARCHAR(50),
	NEWS_URL_SAVENEWS VARCHAR(50),
)
GO

CREATE TABLE ROLE(
	ROLE_ID INT IDENTITY PRIMARY KEY,
	ROLE_CODE VARCHAR(10) NOT NULL,
	ROLE_NAME NVARCHAR(50) NOT NULL,
	ROLE_DESCRIPTION NVARCHAR(255),
	ROLE_STATUS INT,
)
GO


CREATE TABLE NOTIFICATIONS (
	NOTIFI_ID INT IDENTITY PRIMARY KEY,
	NOTIFI_CODE VARCHAR(10) NOT NULL,
	NOTIFI_NAME NVARCHAR(50),
	NOTIFI_DESCRIPTION NVARCHAR(255),
)
GO
CREATE TABLE CITY(
CITY_ID INT IDENTITY(1,1) PRIMARY KEY,
CITY_CODE VARCHAR(50),
CITY_NAME NVARCHAR(50)
)
CREATE TABLE TOWN(
TOWN_ID INT IDENTITY(1,1) PRIMARY KEY,
TOWN_CODE VARCHAR(50),
TOWN_NAME NVARCHAR(50)
)
CREATE TABLE MAP_CITY_TOWN(
    MAP_CT_ID INT IDENTITY(1,1) PRIMARY KEY,
    CITY_ID INT,
    TOWN_ID INT,
    CONSTRAINT FK_MAP_CITY_TOWN FOREIGN KEY (CITY_ID) REFERENCES CITY(CITY_ID),
    CONSTRAINT FK_MAP_TOWN_CITY FOREIGN KEY (TOWN_ID) REFERENCES TOWN(TOWN_ID)
)
CREATE TABLE USERS(
	USERS_ID INT IDENTITY PRIMARY KEY,
	USERS_CODE VARCHAR(10) NOT NULL,
	USERS_NAME NVARCHAR(50) NOT NULL,
	USERS_ROLE INT NOT NULL,
	SEX INT,
	DATEOFBIR DATE,
	PHONE VARCHAR(10),
	CITY INT,
	TOWN INT,
	ADDRESS NVARCHAR(60),
	EMAIL VARCHAR(50),
	BANK_ACCOUNT VARCHAR(20),
	BANK_NAME NVARCHAR(30),
	USERS_DESCRIPTION NVARCHAR(255),
	SCHEDULE_ID INT,
	USERS_STATUS INT,
	CONSTRAINT FK_USER_ROLE FOREIGN KEY (USERS_ROLE) REFERENCES ROLE(ROLE_ID),
	CONSTRAINT FK_USER_SCHEDULE FOREIGN KEY (SCHEDULE_ID) REFERENCES SCHEDULE(SCHEDULE_ID),
	CONSTRAINT FK_CITY FOREIGN KEY (CITY) REFERENCES CITY(CITY_ID),
	CONSTRAINT FK_TOWN FOREIGN KEY (TOWN) REFERENCES TOWN(TOWN_ID)
)
GO
ALTER TABLE USERS
ADD CONSTRAINT USERS_STATUS
DEFAULT 1 FOR USERS_STATUS
GO
CREATE TABLE MAP_USERS(
MANAGE_ID INT FOREIGN KEY (MANAGE_ID) REFERENCES USERS(USERS_ID),
USERS_ID INT FOREIGN KEY (USERS_ID) REFERENCES USERS(USERS_ID),
STATUS INT
)
GO

CREATE TABLE COURSE(
	COURSE_ID INT IDENTITY(1,1) PRIMARY KEY,
	COURSE_CODE VARCHAR(10) NOT NULL,
	COURSE_NAME NVARCHAR(50),
	COURSE_DESCRIPTION NVARCHAR(255),
    	COURSE_TYPE INT,
	START_DATE DATE,
	END_DATE DATE,
	TRAINER_ID INT,
	QUANTITY INT,
	ACTOR NVARCHAR(50),
	FEE FLOAT,
    	CITY INT,
    	TOWN INT,
	ADDRESS NVARCHAR(50),
	COURSE_STATUS INT DEFAULT 1,
	CONSTRAINT FK_COURSE_TRAINER FOREIGN KEY (TRAINER_ID) REFERENCES USERS(USERS_ID),
	CONSTRAINT FK_COURSE_CITY FOREIGN KEY (CITY) REFERENCES CITY(CITY_ID),
	CONSTRAINT FK_COURSE_TOWN FOREIGN KEY (TOWN) REFERENCES TOWN(TOWN_ID)  
)
GO
CREATE TABLE CONFIG_COURSE(
COURSE_TYPE INT IDENTITY(1,1) PRIMARY KEY,
NAME NVARCHAR(50)
)GO

ALTER TABLE COURSE
ADD CONSTRAINT FK_CONFIG
FOREIGN KEY (COURSE_TYPE) REFERENCES CONFIG_COURSE(COURSE_TYPE)
GO


CREATE TABLE MAP_COURSE(
MAP_COURSE_ID INT IDENTITY(1,1) PRIMARY KEY,
USERS_ID INT,
COURSE_ID INT,
CONSTRAINT FK_MAP_USERS FOREIGN KEY (USERS_ID) REFERENCES USERS(USERS_ID),
CONSTRAINT FK_MAP_COURSE FOREIGN KEY (COURSE_ID) REFERENCES COURSE(COURSE_ID)
)
GO

CREATE TABLE MAIL(
MAIL_ID INT IDENTITY PRIMARY KEY,
NOTIFI_ID INT,
SEND_ID INT,
APPLY_ID INT,
CONSTRAINT NOTIFI_ID FOREIGN KEY (NOTIFI_ID) REFERENCES NOTIFICATIONS(NOTIFI_ID),
CONSTRAINT SEND_ID FOREIGN KEY (SEND_ID) REFERENCES USERS(USERS_ID),
CONSTRAINT APPLY_ID FOREIGN KEY (APPLY_ID) REFERENCES USERS(USERS_ID)
)
GO

CREATE TABLE DETAIL_SCHEDULE(
	DETAIL_SCHEDULE_ID INT IDENTITY PRIMARY KEY,
	SCHEDULE_ID INT NOT NULL,
	WEEK INT,
	DAY INT,
	MONTH INT,
	YEAR INT,
	DESCIPTION NVARCHAR(255),
	STATUS INT,
	CONSTRAINT FK_SCHEDULE_ID FOREIGN KEY (SCHEDULE_ID) REFERENCES SCHEDULE(SCHEDULE_ID)
)
GO

CREATE TABLE ACCOUNT(
USERS_ID INT FOREIGN KEY (USERS_ID) REFERENCES USERS(USERS_ID),
USERNAME VARCHAR(10) not null,
PASSWORD VARCHAR(50) NOT NULL
)
GO



CREATE TABLE CONFIG_NEWS(
TYPE_ID INT IDENTITY(1,1) PRIMARY KEY,
NAME NVARCHAR(50)
)
GO

ALTER TABLE NEWS
ADD NEWS_TYPE INT , CREATE_ID INT, DATE_CREATE DATE, DATE_PUBLISH DATE, STATE INT DEFAULT 1

ALTER TABLE NEWS
ADD CONSTRAINT FK_NEWS_TYPE FOREIGN KEY (NEWS_TYPE) REFERENCES CONFIG_NEWS(TYPE_ID),
    CONSTRAINT FK_CREATE_ID FOREIGN KEY (CREATE_ID) REFERENCES USERS(USERS_ID)

CREATE TABLE CONFIG_MONTH(
MONTH_ID INT IDENTITY(1,1) PRIMARY KEY,
MONTH_NAME INT
)
GO

CREATE TABLE CONFIG_YEAR(
YEAR_ID INT IDENTITY(1,1) PRIMARY KEY,
YEAR_NAME INT
)
GO

CREATE TABLE CONFIG_DAY(
DAY_ID INT IDENTITY(1,1) PRIMARY KEY,
DAY INT )
GO

INSERT INTO CONFIG_DAY(DAY)
VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31)
GO

CREATE TABLE DAY_MONTH(
ID INT IDENTITY(1,1) PRIMARY KEY,
MONTH_ID INT FOREIGN KEY (MONTH_ID) REFERENCES CONFIG_MONTH(MONTH_ID),
DAY_ID INT FOREIGN KEY (DAY_ID) REFERENCES CONFIG_DAY(DAY_ID)
)
GO
select* from PRODUCT
