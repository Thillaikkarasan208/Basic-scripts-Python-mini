

create database guvi;
use production;

#drop database serverdev;

`ETL - Extract , Transformation ,load `

show databases;

use test1;

create table students ( studentid int , name1 varchar(255) , lname varchar(255));

create table ishwarya ( age int , salary int , marriage_status varchar(255) , education varchar(255),parent_status varchar(255));

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


select * from ishwarya;

select distinct name,age,husband from ishwarya;

select count(name) from ishwarya;
select count(distinct name) from ishwarya;
select count(*) from ishwarya;

select * from ishwarya
where income = 200 and husband = 'dhanus' and age = 50;

select * from latha
where id > 2 or name = "linga";


select * from latha
order by name desc ,marks;

create table mat ( age int, name varchar(255));

insert into mat values (2,'ravi');

select * from mat;
update mat 
set age = 10 where name = 'ram'
set sql_safe_updates = 0;

delete from mat 
where age = 10;
select * from latha;

select sum(marks) from latha
where id < 5;

select * from ishwarya;
select * from latha
where name like 'l%';

select * from latha
where name like '_inga';

select * from latha
where name like '[a-s]%';

select count(*) as cnt from latha


how to join /merge two tables :


select * from ishwarya
select  * from tableb

join 

select * from tableA  joincategory  tableB 
on tableA.pkey = Tableb.Fkey 

select * from ishwarya left join tableb on
ishwarya.id = tableb.id

select * from ishwarya right join  tableb on
ishwarya.id = tableb.id

select * from ishwarya inner join tableb on
ishwarya.id = tableb.id

use production;

select city,sales from storedata;
select city,sum(sales) from storedata;

columns wise - vlookup
hlookup - row wise joining

select count(distinct(city)) from storedata;


select id,name from ishwarya
union
select id,name from latha


pivot table - aggregate data with funciton

use rajinikanth;
select city,sum(sales) from storedata
group by city
order by city
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
(select * from latha
where id = any ( select id from ishwarya where income > 400) ) as new where marks > 20 ) as old


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

create view multiple123 as select ishwarya.name , ishwarya.income,latha.marks,latha.id from ishwarya,latha


select * from multiple123
create procedure synatax as 
select name , marks , 
case 
when marks  > 50 then " gt 50" 
when marks < 50 then " lt 50 "
else  "condi failed "
end as category
from latha;

windows function   



select * from production.storedata;
select city,sales from production.storedata;

select city, sum(sales) over(partition by city ) from production.storedata;
select city,sales,rk from 
(select *,rank() over(partition by city order by sales) as rk
from production.storedata) as old where rk < 3




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

select city, sum(sales) over(partition by city ) from production.storedata;

select *,rank() over(partition by city order by sales) as rk
from production.storedata;



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