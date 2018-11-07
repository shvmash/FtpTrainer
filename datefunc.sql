
1.SELECT 
    DATE_ADD(DATE_ADD(LAST_DAY(curdate()),
            INTERVAL 1 DAY),
        INTERVAL -2 month) AS first_day;
        
2. select adddate(adddate(adddate(curdate(),interval 5 year),interval 6 month),interval 7 day)

3. select datediff('2019-07-10',curdate()),dayname('2019-07-10')
        
 
 4.select dayofweek(adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)) 

select adddate(
adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)
,interval 6-dayofweek(adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)) 
 day) 'First Friday', 
 
 adddate(
adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)
,interval 13-dayofweek(adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)) 
 day) 'Second Friday',
 
 adddate(
adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)
,interval 20-dayofweek(adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)) 
 day) 'Third Friday', 
 
 adddate(
adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)
,interval 27-dayofweek(adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)) 
 day) 'Fourth Friday',
 
 CASE WHEN 
 month(curdate())=
 month(adddate(
adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)
,interval 34-dayofweek(adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)) 
 day))  THEN 
 adddate(
adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)
,interval 34-dayofweek(adddate(adddate(last_day(curdate()),interval 1 day),interval -1 month)) 
 day) 
 else '' 
 END 'Fifth Friday'
 
 5.select dob, date_format(dob,'%W') from Agent
