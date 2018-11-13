USE CLASSROOM
DROP TABLE STUDENT
CREATE TABLE STUDENT
(
  SNO INT PRIMARY KEY,
  NAME VARCHAR(30),
  SUB1 INT,
  SUB2 INT,
  SUB3 INT,
  TOTAL INT,
  AVEG FLOAT 
)

INSERT INTO STUDENT(SNO,NAME,SUB1,SUB2,SUB3)
VALUES(1,'ANSHU',78,75,65),
      (2,'SHYAM',99,46,65),
      (3,'PIUSH',100,90,100),
      (4,'SONAL',88,85,78),
      (5,'VAIBHAV',76,72,54)
      
SELECT * FROM STUDENT

UPDATE STUDENT SET
SUB1=90,SUB2=78
WHERE NAME='SHYAM'


UPDATE STUDENT SET
TOTAL=SUB1+SUB2+SUB3,
AVEG=(SUB1+SUB2+SUB3)/3

UPDATE STUDENT SET
SUB1=0,SUB2=-12,SUB3=-25
WHERE NAME='VAIBHAV'

1) UPDATE SUB1 VALUE TO 90 WHERE SNO IS 1

UPDATE STUDENT
SET SUB1=90
WHERE SNO=1

2)UPDATE NAME TO PRASAD WHERE NAME IS PIUSH

UPDATE STUDENT
SET NAME='PRASAD'
WHERE NAME='PIUSH'

use classroom
select 
case
when aveg between 80 and 90 then 'A'
when aveg between 75 and 79 then 'B'
when aveg between 70 and 74 then 'C'
end GRADE,
name,
sno
from student



use sqlpractice
Drop Table EMp

Create Table Emp
(
    Empno int AUTO_INCREMENT,
    Name varchar(50), 
    Dept varchar(30),
    Desig varchar(30),
    Basic INT,
    primary key(Empno)
)



Insert into Emp(Name,Dept,Desig,Basic) values
('kiran kumar kailasam','java','developer',42233),
('Vishnu Vardhan Reddy','dotnet','programmer',42133),
('Ram Kishan','java','developer',82233),
('Kareem','dotnet','programmer',52234),
('Sheik Sulthan Mohammad','dotnet','developer',42555),
('Vaibhav Singh','java','Manager',82552),
('Rashmi Jadhav','Sql','DBA',42345),
('Vishnu Priya','Sql','Expert',56662)


select * from Emp 

drop table LeavedETAILS

use sqlpractice

Create Table lEAVEdETAILS
(
   LeavID INT AUTO_INCREMENT,
   Empno INT REFERENCES Emp(Empno), 
   pRIMARY KEY(lEAViD),
   lAVAIL INT,LTAKEN INT
   foreign key(Empno) references Emp(Empno)
)

INSERT INTO lEAVEDETAILS(EMPNO,LAVAIL,LTAKEN)
VALUES(1,2,3),
	   (3,2,3),
	  (4,3,3),
      (5,2,2),
      (1,3,2),
      (3,3,0),
      (4,3,5) 
      
SELECT * FROM LEAVEDETAILS

-------------------------------------------------------------------------------------------
use sqlpractice
Drop Table Emp

Create Table Emp
(
    Empno int, 
    Name varchar(50), 
    Dept varchar(30),
    Desig varchar(30),
    Basic INT
)
alter table Emp modify Empno int auto_increment primary key

desc Emp

alter table Emp modify name varchar(30) not null

alter table Emp modify basic int not null

Insert into Emp(Name,Dept,Desig,Basic) values
('kiran kumar kailasam','java','developer',42233),
('Vishnu Vardhan Reddy','dotnet','programmer',42133),
('Ram Kishan','java','developer',82233),
('Kareem','dotnet','programmer',52234),
('Sheik Sulthan Mohammad','dotnet','developer',42555),
('Vaibhav Singh','java','Manager',82552),
('Rashmi Jadhav','Sql','DBA',42345),
('Vishnu Priya','Sql','Expert',56662)

select * from Emp

use sqlpractice
drop table leaveDetails

create table leaveDetails
(
  LeavID INT,
  Empno INT,
  LAVAIL INT , LTAKEN INT
)

ALTER TABLE leaveDetails
MODIFY LeavID INT AUTO_INCREMENT PRIMARY KEY

ALTER TABLE leaveDetails
add FOREIGN KEY(Empno) REFERENCES Emp(Empno)

desc leaveDetails

alter table Emp add city varchar(30)
default 'chennai'

select * from Emp

alter table Emp add country varchar(30)
default 'india'

alter table Emp drop column city

alter table Emp drop column country

--------------------------------------------------------------------------------------------------------------------

use classroom

DROP TABLE if exists EMPMGR
CREATE TABLE EMPMGR
(
    EMPNO int, 
    FULLNAME varchar(50), 
    EMAILID varchar(30),
    MOBNO varchar(30),
    DOJ INT,
    DEPT INT,
    AVAILBAL INT,
    MGRID INT 
)
Insert into EMPMGR(EMPNO,FULLNAME,EMAILID,MOBNO,DOJ,DEPT,AVAILBAL,MGRID) values
('1981''ki
\ran kumar kailasam','java','developer',42233,2345),
('Vishnu Vardhan Reddy','dotnet','programmer',42133,3453),
('Ram Kishan','java','developer',82233,2098),
('Kareem','dotnet','programmer',52234,2976),
('Sheik Sulthan Mohammad','dotnet','developer',42555,4567),
('Vaibhav Singh','java','Manager',82552,5678),
('Rashmi Jadhav','Sql','DBA',42345,2378),
('Vishnu Priya','Sql','Expert',56662,3487)

select * from Emp

select E1.EMPNO,E2.EMPNO FROM EMP E1 INNER JOIN EMP E2 ON
E1.EMPNO=E2.MGRID WHERE E2.MGRID=2976



