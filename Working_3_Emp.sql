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
('Sheik Sulthan Mohammad','dotnet','developer',42555)

show tables
 
	SELECT * FROM EMP

SELECT NAME FROM EMP 
WHERE EMPNO = 4

SELECT INSTR(NAME,' ') FROM EMP

SELECT LEFT(NAME , INSTR(NAME,' ')),
SUBSTRING(NAME ,INSTR(NAME,' ')) FROM EMP

SELECT NAME FROM EMP
WHERE INSTR(NAME,' ')=0

1) SELECT NAME FROM EMP
WHERE INSTR(NAME,' ')=0

3) SELECT NAME FROM EMP WHERE LENGTH(NAME)-LENGTH(REPLACE(NAME,' ',''))=2
2) SELECT NAME FROM EMP WHERE LENGTH(NAME)-LENGTH(REPLACE(NAME,' ',''))=1

4) SELECT NAME FROM EMP WHERE LENGTH(NAME)-LENGTH(REPLACE(NAME,' ',''))=2 AND LEFT(NAME , 1)=LEFT(SUBSTRING(NAME,INSTR(NAME,' ')+1,INSTR(NAME,' ')+1),1)

5) SELECT NAME FROM EMP WHERE SUBSTRING(NAME,1,1)=SUBSTRING(NAME,INSTR(NAME,' ')+1,1)AND SUBSTRING(NAME,INSTR(NAME,' ')+1,1)=SUBSTRING(REVERSE(NAME),INSTR(REVERSE(NAME),' ')-1,1)AND LENGTH(NAME)-LENGTH(REPLACE(NAME,' ',''))=2