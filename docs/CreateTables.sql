-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE CallsForService (
    ID int   NOT NULL,
    CFS varchar(80)   NOT NULL,
    offenseDate date   NOT NULL,
    offenseHour int  ,
    offenseDOW varchar(10)   ,
    CFSaddress varchar(80)   ,
    CFSlatitude float   ,
    CFSlongitude float  
);

CREATE TABLE Classification (
    CFS varchar(80)   NOT NULL,
    CFS_type varchar(30)  ,
    CFS_class varchar(30)   
);

CREATE TABLE MoonPhase (
    date varchar(30)   ,
    month int   ,
    day int   ,
    year int  ,
    fullDate date   NOT NULL,
    DOW varchar(10)   ,
    time varchar   ,
    moonPhase varchar(30)   
);

ALTER TABLE CallsForService ADD CONSTRAINT "fk_CallsForService_CFS" FOREIGN KEY("CFS")
REFERENCES Classification("CFS");

ALTER TABLE CallsForService ADD CONSTRAINT "fk_CallsForService_offenseDate" FOREIGN KEY("offenseDate")
REFERENCES MoonPhase ("fullDate");

