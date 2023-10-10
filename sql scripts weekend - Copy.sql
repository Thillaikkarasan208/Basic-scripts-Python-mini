

create database guvi;
use production;

#drop database serverdev;

`ETL - Extract , Transformation ,load `

show databases;

use test1;

create table students ( studentid int , name1 varchar(255) , lname varchar(255));

create table ishwarya ( age int , salary int , marriage_status varchar(255) , education varchar(255),parent_status varchar(255));

drop table ishwarya;  completely remove your table
truncate table batch;  removes all rows not table
delete table batch where name1 = "murali"



drop table batch

select * from batch


select * from disney
select * from auto

select * from ishwarya;
drop table ishwarya;

select * from linga1;
select id,marks from linga1;
truncate table linga1;



drop table 
truncate 



create table students ( stutendid int , name1 varchar(255) , lname varchar(255) , address varchar(255) , city varchar(255) );

create table storedata_filter as (select city , country , state from storedata);

select * from storedata_filter;
drop table storedata_filter;

truncate table storedata_copy;

use rajinikanth;

create table people2 ( id int unique , lname varchar(255) , fname varchar(255) not null, age int , check (age >=18));

create index id_ on people(id);

select , update , delete , insert , where 

use rajinikanth;
select * from ishwarya;


remove duplicates

select distinct name from ishwarya;
select distinct name,income,age,husband from ishwarya;

select count(name) from ishwarya;

select count(distinct name) from ishwarya;

select * from ishwarya;


select count(*) from ishwarya;

select * from ishwarya
where income > 400 and husband = 'dhanus' and age = 60;

select * from ishwarya
where income > 900 or husband = 'dhanus' or age = 60;

select * from ishwarya
where income > 900 and husband = 'dhanus' or age = 60;

and  - all the condition statistified
or  - any one condition should work

select count(name) from latha;
select count(id) from latha;

select * from latha
where id > 2 or name = "linga";


select * from latha
where name in ('linga','ram','ravi')
order by name ,marks;




create table mat ( age int, name varchar(255));

insert into mat values (100,'ram');

select * from mat
update mat 
set age = 40 where name = 'ravi'


set sql_safe_updates = 0;

delete from mat 
where age > 10;


select * from latha;




select * from latha

select sum(marks) from latha
where id < 5;

functions - sum , max , min , avg , mean , mode , ...

select avg(marks) from latha


select * from ishwarya;

wild card search
select * from latha
where name like 'l%'; '%l'

select * from latha
where name like '_inga';

where name contains  ('s');


select * from latha
where name like '[a-s]%';

select count(*) as cnt from latha


how to join /merge two tables :


select * from ishwarya
select  * from tableb

join 

select * from tableA  joincategory  tableB 
on tableA.pkey = Tableb.Fkey 

6A - 5 record
B - 4 records ( id 1,2,5,6)


select * from ishwarya left join tableb on
ishwarya.id = tableb.id and ishwarya.marks = tableb.marks and ...

select distinct ishwarya.id from ishwarya right join  tableb on
ishwarya.id = tableb.id
create table joins like
(select * from ishwarya inner join tableb on
ishwarya.id = tableb.id)  as a



use production;

select * from storedata


select city,sales from storedata;
select city,sum(sales) from storedata;

columns wise - vlookup
hlookup - row wise joining

select count(distinct(city)) from storedata;


select id,name from ishwarya
union
select id,name from latha


pivot table - aggregate data with funciton
use production
select * from storedata



select city,sum(sales) from storedata
group by city


order by city

use rajinikanth

select * from latha

select id,count(marks) from latha
group by id
order by id

select id,sum(marks) from latha
group by id
order by id

select id,max(marks) from latha
group by id
order by id

select id,avg(marks) from latha
group by id
order by id
aggregated funcion  - sum , avg,min, max , count
select * from latha

having class & where class

select name,sum(marks) from latha
group by name
having sum(marks) < 50


sub query : nested query 

select * from ishwarya

select marks,id from
(select * from

(select * from 
where id = any ( select id from ishwarya where income > 400) as old


 as new where marks > 20 ) as old

select * from ishwarya
select * from latha

(select * from latha
where id = any ( select id from ishwarya where income > 400) ) 






select id from ishwarya where income > 400;
select * from latha;



select name , marks , 
case 
when marks  > 50 then " pass " 
when marks < 50 then " fail"
else  " others "
end as result
from latha;




views - it wil collection informaiton from multiple tables

use rajinikanth;
select * from latha
select * from ishwarya



create view together as 
select ishwarya.name , ishwarya.income,latha.marks,latha.id from ishwarya,latha




select * from together
where income < 500  




select * from collect


CALL `rajinikanth`.`sqlsyntax`() 

create procedure casewhen as 



select name , marks , 
case 
when marks  > 50 then " pass " 
when marks < 50 and name = 'yatha' then " fail "
else "cond is failed"
end as category
from latha;

select * from production.storedata

select sales , profit , 
case
when profit < 40 and sales > 100 then "Good"
when profit > 40 and sales  >  1000 then "better"
else "worst"
end as cat
from production.storedata






select * from latha


select * from GFGemployees

CREATE TABLE GFGemployees(employee_id 
INT PRIMARy KEY, employee_name VARCHAR(50), manager_id INT);


INSERT INTO GFGemployees (employee_id, employee_name, manager_id)
VALUES  (1, 'Zaid', 3),  (2, 'Rahul', 3),  (3, 'Raman', 4),  
(4, 'Kamran', NULL),  (5, 'Farhan', 4);


select * from GFGemployees




SELECT table1.employee_name ,table2.employee_name as manager FROM 
GFGemployees AS table1 JOIN GFGemployees AS table2
ON table1.manager_id = table2.employee_id;



CALL self_join

SP - stored procedures ( sql syntax ) 




stored procedure ?

storing my sql syntax in data base itself






windows function   



use rajinikanth
select * from latha


select a.id from latha as a
on a.id = id

select * from ishwarya



Views - it is a collection of multiple table information

extract values from latha 
extract vales from iswarya


views - virtual table













select * from production.storedata;
select city,sales from production.storedata;




select city, sum(sales) over(partition by city ) from production.storedata;



select city,sales,rk from 
(select *,rank() over(partition by city order by sales) as rk
from production.storedata) as old 


select city,sales,dense_rank() over(partition by city order by sales) as rk
from production.storedata

select city,sales,row_number() over(partition by city order by sales) as row1
from production.storedata


select marks,name from 
(select  name,age,marks,income from ishwarya inner join tableb on
ishwarya.id = tableb.id)  as kkkkk
where marks > 10

windows functions

1.lead 
2.lag
3.Rank or dense rank





select 


select id as P_key  from latha


USE `rajinikanth`;
DROP procedure IF EXISTS `new_procedure`;

DELIMITER $$
USE `rajinikanth`$$
CREATE PROCEDURE `sqlsyntax` ()
BEGIN
select name , marks , 
case 
when marks  > 50 then " gt 50" 
when marks < 50 then " lt 50 "
else  "condi failed "
end as category
from latha;
END$$

DELIMITER ;

CALL `rajinikanth`.`sqlsyntax`() 


views - infomraiotn from multiple tables

select * from latha  - id,name , marks
select * from ishwarya - id,name,income,age,husband
select * from covid - name1,salary

create view sunil_question1 as 
select latha.marks,ishwarya.income,covid.name1,ishwarya.name,latha.name as latha_name from latha , ishwarya , covid

select * from sunil_question1

























select * from ishwarya





















































create view combine1 as select ishwarya.name,latha.marks from ishwarya ,latha;


select * from combine1


















alter table people
modify column age int not null ;  



select * from details;









alter table details 
modify column age int not null; 

sql constraints 



call casewhen;


USE rajinikanth;
DROP procedure IF EXISTS condition1
DELIMITER $$
USE rajinikanth$$
CREATE PROCEDURE condition2()
BEGIN
select marks,name,
case when marks > 20 then "GT 20"
when marks = 20 then "eq 20"
else "under 20"
end as cat
from latha;
END$$
DELIMITER ;


call condition2;

USE rajinikanth;
CREATE  OR REPLACE VIEW new2 AS
select * from linga;

create view allinformaion as 
select * from new2
union
select * from latha

select * from allinformaion;














create table orders1 ( personid1 int not null , ordernumber int not null , personid int, primary key (personid1) );












create schema test1;

















select * from production.storedata;
select city,sales from production.storedata;

select city, 
sum(profit) over( ) as total_profit,
sum(profit) over ( partition by city ) as city_wise_profit
from production.storedata;


select city, sales,

rank() over ( partition by city ) as rank1
from production.storedata;


select city, sales,
sum(sales) over ( partition by city  rows unbounded preceding  ) as TOTAL
from production.storedata;


select city, sales,
first_value(sales) over ( partition by city  rows unbounded preceding  ) as first1,
last_value(sales) over ( partition by city  rows unbounded preceding  ) as last1,
nth_value(sales,2) over ( partition by city  rows unbounded preceding  ) as second1,
nth_value(sales,4) over ( partition by city  rows unbounded preceding  ) as fourth
from production.storedata;



select city, sales,
lead() over ( order by sales ) as row1,
lag() over ( order by sales ) as cd,
percent_rank() over ( order by sales ) as pr
from production.storedata;


select city,sales,
LAG(sales,2) over (order by sales)  as 'lag',
Lead(sales) over (order by sales)  as 'lead',
sales - Lead(sales) over (order by sales)  as 'lead diff',
sales - lag(sales) over (order by sales)  as 'lag diff'
from production.storedata;





select sum(profit) from production.storedata;

select city,sales,rk from 
(select city,sales,rank() over(partition by city order by sales desc) as rk
from production.storedata) as tablename
where rk < 3






select *, sum(age) over(partition by city order by age) from covid;
select *,rank() over(partition by city order by age),
dense_rank() over(partition by city order by age) from covid21;
select *,rank() over(partition by city order by age) as rk
from covid21;
select * from (select *,dense_rank() over(partition by city order by age) as rk









use production;

select * from production.'store data';

alter table 

create database testdb;
create table persons ( personid int , lastname varchar(255) , firstname varchar(255) , address varchar(255) , city varchar(255) );
create table person2 as select personid,city from persons;