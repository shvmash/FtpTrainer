create database Supplier

create table Customer
(
 CustomerID INT,
 CustName VARCHAR(30),
 Contact varchar(30),
 Addr varchar(30), 
 City varchar(30),
 Postalcode INT,
 Country varchar(30)
 )
 
 insert into Customer(CustomerID,CustName,Contact,Addr,City,Postalcode,Country)
 values(1,'Anshu Bhat',9573429856,'chicago','mexico',78956,'india'),
       (2,'Sonal Raut',6785634521,'pattaya','us',123786,'thailand'),
       (3,'Rashmi Jadhav',123456789,'mauritius','germany',876432,'india'),
       (4,'Shyam',1234567890,'house street','berlin',667234,'germany'),
       (5,'Shiva',1232354590,'9th street','berlin',345623,'germany')
       
       select * from Customer
       drop table Customer

select distinct CustomerID,City
from Customer

select count(distinct Country) from Customer

select CustName,City,Postalcode
from Customer
where CustomerID=1

select CustName,City,Postalcode
from Customer
where CustomerID!=2

select CustName,Addr,Contact
from Customer
order by Addr DESC

update Customer
SET CustName='Prasad',Addr='Siruseri',Contact=985763425
where CustomerID=1

select * from Customer

delete from Customer where CustName='Shiva'
select * from Customer

select * from Customer
LIMIT 1

select min(CustName)
from Customer

select max(CustomerID)
from Customer 

select count(CustomerID)
from Customer

