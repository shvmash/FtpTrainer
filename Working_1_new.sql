drop table Agent 

Create Table Agent
(
	AgentID INT AUTO_INCREMENT,
	FirstName varchar(30), 
   MI varchar(1),
   LastName varchar(30),
   FullName varchar(80),
   Gender varchar(10),
    Dob date,
    SSN varchar(30),
    MaritalStatus INT,
    Address1 varchar(30),
    Address2 varchar(30),
    City varchar(30),
    State varchar(30),
    ZipCode varchar(30),
    Country varchar(30),
    Primary Key(AgentID)
  )

  Insert into Agent(FirstName,MI,LastName,Gender,DOB,SSN,MaritalStatus,Address1,Address2,City,STATE,ZipCode,Country)
values('Sunitha','P','Premjee','Female','1988-02-01','434-55-3323',
1,'5th Avenue','Near Church','Parlin','NJ','434554','USA'),
('Pranitha','R','Reddy','Female','1986-01-02','324-55-2344',
1,'8th Mile','Sterling Heights','Detroit','MI','442345','USA'), 			
('Shavetha','D','Datta','Female','1980-03-08','643-34-4443',
0,'Dwaraka Nagar','5th Phase','NewDelhi','UP','438533','INDIA'),
('Shanthi','T','Tangvel','Female','1983-09-12','644-23-4534',
1,'Near Food Court','2nd Phase','Chicago','MI','483845','USA'),
('ashraf','V','Vahora','Male','1983-09-10','435-22-5212',
1,'8th Avenue','Church Road','Maywood','NJ','78434','USA') ,
('Ramesh','L','Gole','Male','1981-12-12','643-34-7373',
0,'5th Phase','Sterling Heights','Detroit','MI','477843','USA'),
('Lavanya','S','K','FeMale','1988-12-12','335-44-2344',
0,'LIG B87','ASRAO NR','SECBAD','AP','500062','INDIA'),
('Murali','S','Krishna','Male','1986-09-03',
'234-44-2335',1,'RK HOstel','Ameerpet','HYDBAD','AP',
'500042','INDIA'),
('Raj','S','kumar','Male','1987-12-12',
'345-23-4211',0,'MadhaPur','Nr Cyber Towers','HYDBAD','AP',
'509244','INDIA'),
('Srimukha','S','Manchu','FeMale','1986-12-12',
'231-44-2335',0,'NRS','Madhapur','HYDBAD','AP',
'500042','INDIA'),
('Lalitha','S','B','FeMale','1987-11-12',
'341-23-4211',0,'KondaPur','Nr Stadium','HYDBAD','AP',
'509244','INDIA'),
('Rakesh','K','Chowdary','Male',
'1986-01-12','123-23-2444',1,'8th Mile','Church Road','Detroit',
'MI','484555','USA'),
('Rama','U','Rao','Male',
'1983-01-12','223-43-1444',1,'5th Mile','Ford Street','Chicago',
'NY','2484555','USA'),
('Madhuri','S','M','FeMale',
'1989-12-12','423-33-2444',1,'Beach Street','Univ Road','NewYork',
'CT','5484555','USA'),
('Prafulla','U','Rao','FeMale',
'1987-01-02','523-22-2644',1,'8th Mile','IBM Road','Detroit',
'MI','484555','USA'),
('Prasanna','P','Kumar','Male',
'1980-03-09','423-23-1444',1,'ASRAO NR','Good Luck Cafe','SECBAD',
'AP','500 062','INDIA') 

use sqlpractice

select * from Agent 

show databases

select 
    AGENTID,
	FIRSTNAME,
    LASTNAME,
    CITY,
    STATE
 FROM AGENT
 ORDER BY CITY, FIRSTNAME
 
 select 
    AGENTID,
	FIRSTNAME,
    LASTNAME,
    CITY,
    STATE
 FROM AGENT
 ORDER BY CITY DESC

SELECT * FROM AGENT
WHERE FIRSTNAME  NOT IN('PRANITHA' , 'MADHURI' , 'ASHRAF')

select Firstname , MARITALSTATUS
FROM AGENT;

SELECT FIRSTNAME, SSN FROM AGENT;

SELECT DISTINCT CITY 
FROM AGENT;
select * FROM AGENT;

SELECT LASTNAME 
FROM AGENT
WHERE LASTNAME='DATTA';

SELECT * FROM AGENT;

SELECT FIRSTNAME, ADDRESS1 
FROM AGENT
WHERE FIRSTNAME=RAKESH AND ADDRESS1=KONDAPUR;

SELECT MARITALSTATUS 
FROM AGENT;

SELECT
    AGENTID,
    FIRSTNAME,
    LASTNAME,
    MARITALSTATUS,
    CASE MARITALSTATUS
         WHEN 0 THEN 'UNMARRIED'
         WHEN 1 THEN 'MARRIED'
     END 'STATUS'
 FROM AGENT    
 
 SELECT INSTR('PRASANNA','A') FROM AGENT
 
 SELECT * FROM AGENT
 
 SELECT 'SUNITHA',
 REVERSE('SUNITHA')
 FROM AGENT
 
 SELECT 'SUNITHA',  LENGTH('SUNITHA')
 FROM AGENT
 
 SELECT UPPER ('SUNITHA')

SELECT LOWER('PRANITHA') 

SELECT LEFT('PRANITHA',4)

SELECT RIGHT('SUNITHA',5)

SELECT SUBSTRING('PRANITHA',1,4) FROM AGENT

SELECT REPLACE('JAVA TRAINING','JAVA','FTP')
 
SELECT * FROM AGENT

SELECT REVERSE('PRANITHA')
FROM AGENT 

SELECT INSTR('PRANITHA','A')
FROM AGENT

SELECT INSTR('AHTINARP','A')
FROM AGENT

SELECT REVERSE('PRANITHA') 
FROM AGENT
SELECT INSTR(REVERSE('PRANITHA'),'A')
SELECT LENGTH('PRANITHA')-INSTR(REVERSE('PRANITHA'),'A')-1

SELECT CONCAT(UPPER('A'),LOWER('NSHUMAN'))

SELECT REPLACE('anshuman','a','A')
SELECT REPLACE('anshu','a','A')


SELECT LENGTH('MISISSIPI')
SELECT REPLACE('MISISSIPI','I','')
SELECT LENGTH('MISISSIPI')- LENGTH(REPLACE('MISISSIPI','I',''))
SELECT CONCAT('ANSHUMAN','MISHRA')


SELECT LEFT('ANSHUMAN MISHRA' , INSTR('ANSHUMAN MISHRA',' ')),
SUBSTRING('ANSHUMAN MISHRA' ,INSTR('ANSHUMAN MISHRA',' ')+1)




SELECT CEILING(12.000001)
SELECT FLOOR(12.999999)

SELECT ROUND(8776.7558,1)
SELECT ROUND(8776.7558,2)
SELECT ROUND(8776.7558,3)
SELECT ROUND(8776.7558,-1)

SELECT ABS(-12)
SELECT POWER(2,4)
SELECT SQRT(25)



