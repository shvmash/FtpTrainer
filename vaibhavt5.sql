


SELECT Name from Emp;

SELECT Name from Emp where instr(name , ' ') =0;


SELECT Name from Emp where LENGTH(Name)-LENGTH(REPLACE(Name,' ',''))=1;

SELECT Name from Emp where LENGTH(Name)-LENGTH(REPLACE(Name,' ',''))=2;

SELECT Name from Emp where LENGTH(Name)-LENGTH(REPLACE(Name,' ',''))=0;

SELECT NAME FROM EMP
WHERE LEFT(LENGTH(NAME)-LENGTH(REPLACE(NAME,' ','')) =0,1)=RIGHT(LENGTH(NAME)-LENGTH(REPLACE(NAME,' ','')) =1,1);

 


