select curdate();

select curtime();

select dayname(curdate());

select addDate(curdate(),interval 1 year);

select addDate(curdate(),interval 38 day);

select addDate(curdate(),interval 3 month);

select addDate(curdate(),interval -3 month);

select adddate(addDate(curdate(),interval 1 year),interval 45 day);

select adddate('2018-11-01',interval 30 day);

desc Agent;

select dob, 
	addDate(dob,interval 10 day)
    from Agent;

select date_format(curdate(),'%d');

select date_format(curdate(),'%D');

select date_format(curdate(),'%c');


select date_format(curtime(),'%h');


select date_format(curtime(),'%r');

select date_format(curdate(),'%m');
select date_format(curdate(),'%M');

select date_format(curdate(),'%w');
select date_format(curdate(),'%W');

select date_format(curtime(),'%s');

select date_format(curtime(),'%y');
select date_format(curdate(),'%Y');

select date_format(curdate(),' %d %M %Y %w');

Select dayofmonth(curdate());

Select dayofweek(curdate());

Select quarter(curdate());

Select datediff(curdate(),'2018-11-13');

Select datediff('2018-11-13',curdate());

select last_day(curdate());

select date(current_date());

select addDate(curdate(),interval 24 day);


Select adddate(curdate(),'2022-04-14');

Select datediff('2019-04-12',curdate()),dayname('2019-04-12');

Select date_format(datediff('2019-04-12',curdate()),'%w');

select date_format(curdate(),'%M');

select dob,
date_format(dob,'%W')
from Agent ;


select 
	addDate(addDate(last_day(curdate()),
             interval 1 day),
    interval -2 month) as first_day;
    
    
    select 
	addDate(addDate(last_day(curdate()),
             interval 1 day),
    interval -2 month) as first_day;

select 
	addDate(addDate(last_day(curdate()),
             interval 4 day);


select addDate(date_format(addDate(addDate(last_day(curdate()),interval 1 day) ,interval -1 month),'%W'),'%Y');

 

Select dateformat(datediff(curdate(),'1997-04-12'),interval 365 day);



