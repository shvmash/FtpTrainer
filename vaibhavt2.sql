show databases;

show tables;

desc agent;

select AgentID,FirstName,LastName,City,SSN from Agent;

select *from Agent where AgentID=5;


select *from Agent where City="Detroit";

select * from Agent where MaritalStatus=0;

select *from Agent
where AgentID NOT between 1 and 5 ;


select *from Agent
where AgentID  between 1 and 5 ;

select  *from Agent where FirstName LIKE 'p%';

select  *from Agent 
where FirstName LIKE 'a%';

Select *from Agent
where FirstName Not IN('Pranitha','Madhuri','Lalitha');

Select *from Agent
where FirstName IN('Pranitha','Madhuri','Lalitha');

select 
AgentID,
FirstName,
Lastname,
city,
state
From Agent 
Order BY CITY,FirstName desc;













