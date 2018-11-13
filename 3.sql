create database classroom

use classroom

DROP TABLE EMPLOY

CREATE TABLE EMPLOY
(
 EMPNO INT,
 NAME VARCHAR(30) NOT NULL,
 DOB DATE NOT NULL,
 DEPT VARCHAR(30), 
 DESIG VARCHAR(30),
 SALARY INT,
 PRIMARY KEY(EMPNO)
 )
 
 SELECT * FROM EMPLOY
 
 INSERT INTO EMPLOY
 VALUES(1,'SHYAM','2019-10-20','SAP','DEVELOPER',66222),
 (2,'LAKSHMI','1996-10-20','JAVA','DEVELOPER',66222),
 (3,'VAIBHAV','1995-12-22','FULLSTACK','EXPERT',99322),
 (4,'ANSHUMAN','1994-10-12','SQL','DBA',88233)
 
 
 UPDATE EMPLOY SET SALARY=SALARY+1000

-----------------------------------------AGENT POLICY---------------------------------------------------------------
use sqlpractice

Drop table AgentPolicy

create table AgentPolicy
(
   AgentID INT REFERENCES Agent(AgentID),
   PolicyID INT REFERENCES Policy(PolicyID),
   IsSplitAgent INT,
   primary Key(AgentID,PolicyID)
)




INSERT INTO AGENTPOLICY(AGENTID,POLICYID,IsSplitAgent)
VALUES(1,1,2),
					(1,3,1),
					(2,3,1),
					(2,1,1),
					(2,4,1),
					(2,5,1),
					(4,1,2),
					(4,3,1),
					(5,1,2),
					(5,2,1)

select * from AgentPolicy

SELECT 
      A.AgentID,
	  FirstName,
	  LastName,
      City,
      SSN,
      IsSplitAgent
FROM
AGENT A
LEFT JOIN
AGENTPOLICY AP
ON A.AgentID=AP.PolicyID



SELECT
	P.PolicyID,
    AppNumber,
    ModalPremium,
    AnnualPremium,
    PaymentModeID,
    ISSplitAgent
    FROM
    POLICY P
    LEFT JOIN
    AGENTPOLICY AP
    ON P.PolicyID=AP.PolicyID
    
    
SELECT 
      A.AgentID,FirstName,LastName,City,
      P.PolicyID,AppNumber,ModalPremium,
      AnnualPremium,PaymentModeID,ISSplitAgent
FROM 
AGENT A
INNER JOIN
AGENTPOLICY AP
ON A.AgentID=AP.AgentID
INNER JOIN
POLICY P
ON P.PolicyID=AP.PolicyID    

SELECT 
      A.AgentID,FirstName,LastName,City,
      P.PolicyID,AppNumber,ModalPremium,
      AnnualPremium,PaymentModeID,ISSplitAgent
FROM 
AGENT A
LEFT JOIN
AGENTPOLICY AP
ON A.AgentID=AP.AgentID
LEFT JOIN
POLICY P
ON P.PolicyID=AP.PolicyID 

SELECT 
      A.AgentID,FirstName,LastName,City,
      P.PolicyID,AppNumber,ModalPremium,
      AnnualPremium,PaymentModeID,ISSplitAgent
FROM 
AGENT A
RIGHT JOIN
AGENTPOLICY AP
ON A.AgentID=AP.AgentID
RIGHT JOIN
POLICY P
ON P.PolicyID=AP.PolicyID   


SELECT AD.AGENTID,AD.FIRSTNAME,AD.LASTNAME,
PD.POLICYID,PD.MODALPREMIUM,PD.ANNUALPREMIUM
FROM
(SELECT 
      AgentID,FirstName,LastName,City,
      SSN
FROM 
AGENT) AD,

(SELECT
      PolicyID,
      AppNumber,
      ModalPremium,
      AnnualPremium,
      PaymentModeID
      FROM 
      POLICY) PD
      
