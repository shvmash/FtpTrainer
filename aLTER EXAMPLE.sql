DROP TABLE LEAVEDETAILS

DROP TABLE EMP

Create Table Emp
(
    Empno int,
    Name varchar(50), 
    Dept varchar(30),
    Desig varchar(30),
    Basic INT
)

alter table emp MODIFY EMPNO INT AUTO_INCREMENT PRIMARY KEY

DESC eMP

ALTER TABLE EMP MODIFY NAME VARCHAR(30) NOT NULL

ALTER TABLE EMP MODIFY BASIC INT NOT NULL

Insert into Emp(Name,Dept,Desig,Basic) values
('kiran kumar kailasam','java','developer',42233),
('Vishnu Vardhan Reddy','dotnet','programmer',42133),
('Ram Kishan','java','developer',82233),
('Kareem','dotnet','programmer',52234),
('Sheik Sulthan Mohammad','dotnet','developer',42555),
('Vaibhav Singh','java','Manager',82552),
('Rashmi Jadhav','Sql','DBA',42345),
('Vishnu Priya','Sql','Expert',56662)

Drop Table IF EXISTS leaveDetails

Create Table lEAVEdETAILS
(
   LeavID INT,
   Empno INT, 
   lAVAIL INT,LTAKEN INT
)

ALTER TABLE LEAVEDETAILS 
MODIFY LEAVID INT AUTO_INCREMENT PRIMARY KEY

ALTER TABLE LEAVEDETAILS 
ADD FOREIGN KEY(EMPNO) REFERENCES EMP(EMPNO)

DESC LEAVEDETAILS
