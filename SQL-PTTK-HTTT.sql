CREATE TABLE PRODUCE(
	PRODUCE_ID INT IDENTITY PRIMARY KEY,
	PRODUCE_CODE VARCHAR(10) NOT NULL,
	PRODUCE_NAME NVARCHAR(50) NOT NULL,
	PRODUCE_DESCRIPTION NVARCHAR(255),
	PRODUCE_QUANTITY INT,
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

CREATE TABLE COURSE(
	COURSE_ID INT IDENTITY PRIMARY KEY,
	COURSE_CODE VARCHAR(10) NOT NULL,
	COURSE_NAME NVARCHAR(50),
	COURSE_DESCRIPTION NVARCHAR(255),
	START_DATE DATE,
	END_DATE DATE,
	TRAINER_ID INT,
	COURSE_STATUS INT,
)
GO

CREATE TABLE NOTIFICATIONS (
	NOTIFI_ID INT IDENTITY PRIMARY KEY,
	NOTIFI_CODE VARCHAR(10) NOT NULL,
	NOTIFI_NAME NVARCHAR(50),
	NOTIFI_DESCRIPTION NVARCHAR(255),
	USERS_APPLY_ID INT,
	USERS_SEND_ID INT,
)
GO

CREATE TABLE USERS(
	USERS_ID INT IDENTITY PRIMARY KEY,
	USERS_CODE VARCHAR(10) NOT NULL,
	USERS_NAME NVARCHAR(50) NOT NULL,
	USERS_ROLE INT NOT NULL,
	DATEOFBIR DATE,
	PHONE VARCHAR(10),
	ADDRESS NVARCHAR(60),
	BANK_ACCOUNT VARCHAR(20),
	BANK_NAME NVARCHAR(30),
	USERS_DESCRIPTION NVARCHAR(255),
	NOTIFICATION_ID INT,
	COURSE_ID INT,
	PRODUCE_ID INT,
	SCHEDULE_ID INT,
	USERS_STATUS INT,
	CONSTRAINT FK_USER_ROLE FOREIGN KEY (USERS_ROLE) REFERENCES ROLE(ROLE_ID),
	CONSTRAINT FK_USER_NOTIFICATION FOREIGN KEY (NOTIFICATION_ID) REFERENCES NOTIFICATIONS(NOTIFI_ID),
	CONSTRAINT FK_USER_COURSE FOREIGN KEY (COURSE_ID) REFERENCES COURSE(COURSE_ID),
	CONSTRAINT FK_USER_PRODUCE FOREIGN KEY (PRODUCE_ID) REFERENCES PRODUCE(PRODUCE_ID),
	CONSTRAINT FK_USER_SCHEDULE FOREIGN KEY (SCHEDULE_ID) REFERENCES SCHEDULE(SCHEDULE_ID),
)
GO

ALTER TABLE COURSE
ADD CONSTRAINT FK_USERS_COURSE
FOREIGN KEY (TRAINER_ID) REFERENCES USERS(USERS_ID)
GO

ALTER TABLE NOTIFICATIONS
ADD CONSTRAINT FK_APPLY
FOREIGN KEY (USERS_APPLY_ID) REFERENCES USERS(USERS_ID)
GO
ALTER TABLE NOTIFICATIONS
ADD CONSTRAINT FK_SEND
FOREIGN KEY (USERS_SEND_ID) REFERENCES USERS(USERS_ID)
GO

ALTER TABLE PRODUCE
ADD TYPE INT
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