select dept,sum(basic) from emp
group by dept

select dept,max(basic),
min(basic),avg(basic) from emp
group by dept

select dept,count(*) from emp
group by dept

select dept,sum(basic),count(*) from emp
group by dept
having count(*) > 2

select dept,sum(basic),count(*) from emp
where dept in('java','sql')
group by dept
having count(*) > 2
order by dept

select dept,sum(basic),count(*) from emp
where dept in('java','sql')
group by dept
having count(*) >=2
order by dept desc


