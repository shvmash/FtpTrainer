select maritalstatus from agent;

select AgentID,
FirstName,
LastName,
MaritalStatus,
CASE MaritalStatus
   when 0 THEN 'UNMARRIED'
   WHEN 1 THEN  'MARRIED'
   end 'status'
FROM Agent;

SELECT
APPDATE,POLICYNUMBER,
ANNUALPREMIUM,PAYMENTMODEID,MODALPREMIUM,

CASE PAYMENTMODEID
   WHEN 1 THEN 'YEARLY'
   WHEN 2 THEN  'HALF YEARLY'
   end 'status'
FROM POLICY;

select INSTR('Prasanna','a');

select instr(FirstName,'a') from Agent;

SELECT reverse('anshuman');

SELECT FirstName, 
REVERSE(FirstName)
from Agent;

select LENGTH('anshuman');

SELECT FirstName,LENGTH(FirstName)
from Agent;

Select Lower('anshuman');

select Upper('anshuman');



SELECT LEFT('anshuman',4);

SELECT FirstName,LEFT(FirstName,4) FROM Agent;

SELECT SUBSTRING('WELCOME',2,3);

SELECT SUBSTRING(FirstName,1,4) FROM Agent;

SELECT REPLACE('java Training','java','ftp');

SELECT INSTR('Anshuman','a');

SELECT LENGTH('anshuman')-INSTR(reverse('anshuman'),'a')+1 ;

SELECT SUBSTRING('anshuman mishra',9)  ;




SELECT SUBSTRING(FirstName,2) from Agent;

SELECT concat(Upper(LEFT(FirstName,1)),Substring(FirstName,2)) 'sent' From Agent;


select * from Agent  where FirstName like 'k%';

SELECT LEFT('Anshuman Mishra',INSTR('Anshuman Mishra',' ')),
SUBSTRING('Anshuman Mishra',INSTR('Anshuman Mishra',' ')+1);


SELECT INSTR('misissipi','i');
SELECT LENGTH('misissipi')-length(replace('misissipi','i',''));
SELECT replace('misissipi','i',' ');

