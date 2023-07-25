

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
set age = 100 where name = 'ravi'

set sql_safe_updates = 0;


select * from mat


delete from mat 
where age > 10;

drop table mat;  - it will complete remove the table

select * from latha;

create table old as select * from latha



alter table latha
delete columns id




select * from latha

select sum(marks) from latha
where id < 5;

functions - sum , max , min , avg , mean , mode , ...

select avg(marks) from latha


select * from ishwarya;

wild card search
select * from latha
where name like 'r%'; 

select * from linga
where name like '_in_a';

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



create database retail123;
create database `retail data`; 
show databases;

use retail;

create table `students_112` ( studentid int , name1 varchar(255) , lname varchar(255));
create table retail.students123 ( studentid int , name1 varchar(255) , lname varchar(255));

select * from students;  - all the columns
select studentid from students;  
select studentid,lname from students;




create table charfunction  (name varchar(255) , lname varchar(255)  , sales int , profit int) ;
select * from charfunction;

insert into charfunction values ('thillai','murali s',200,300);
insert into charfunction values ('RAM','RAVI',20,30);
insert into charfunction values ('RaHUl','KUMar',500,1300);
select * from charfunction

create table dataclean as select lower(name) as fname,upper(lname) as lname, sales,profit from charfunction
select * from dataclean

select concat(fname,lname) from dataclean

select length(fname) from dataclean

select * from dataclean

insert into dataclean values (' gokul CHENNAI   ','   BangaloreGokul    ',500,1300);

select substr(fname,6) from dataclean
select substr(lname,1,9) from dataclean

select trim(fname),trim(lname),sales from dataclean
select upper(replace(fname,'CHENNAI','mumbai')),fname from dataclean


delete from  dataclean
select * from dataclean

select initcap(fname) from dataclean - camal case
insert into dataclean values (' ram CHENNAI   ','   BangaloreGokul    ',500,1300);

'NY1234&%@@@'
replace function ?
substr(col,1,7)


coalesc , cast , convert - character 
getting the non-null balnaks fromma columns - coalecs(name,fname,lname)
cast / convert  - conver the data type in to other  , sales char to int

SQL numerical function

create table numfucntion (v1 int  , v2 double , v3 float );

insert into  numfucntion values(-75 , -87.56 , 700.96)
select * from numfucntion

select abs(v1),abs(v2),abs(v3) from numfucntion

select ceil(v2) from numfucntion
select floor(v1) , floor(v2) , floor(v3) from numfucntion

select greatest(30,2,36,81,125)
select least(30,2,36,81,125)


select cos(v1) , cot(v2) , sin(v3) from numfucntion



SELECT DATEDIFF('2017-01-13','2017-01-03') AS DateDiff;
SELECT CURDATE();
SELECT CURTIME();
SELECT  DATE('1996-09-26 16:44:15.581') 
SELECT  DAY('1996-09-26 16:44:15.581') 
SELECT  MONTH('1996-09-26 16:44:15.581') 
























US988
IN2347238







select * from students

select * from students

create table copy_new as (select * from students); - create a new table from existing table

select * from copy_new;
select * from advertising;

select * from store1
where city = 'akron'; - 

select * from store1
where city = 'akron' and segment = 'consumer' ;


remove duplicates



select distinct name from ishwarya;
select distinct name,income,age,husband from ishwarya;
select count(name) from ishwarya;

distinct - key word is used to remove the duplicates
count - is used to count the records

select count(distinct name) from ishwarya;

select * from ishwarya;

select * from ishwarya
where income > 400 and husband = 'dhanus' and age = 60;




select * from ishwarya
where income > 900 and husband = 'dhanus' or age = 60;


use retail

select city,state,sales from store1
order by city desc

select city,state,sales from store1
order by state asc

select city,state,sales from store1
order by state desc , city asc

select state,city,sales from store1
order by state desc , city asc

select state , sales from store1
where state = 'Texas'
order by sales desc

select state , sales from store1
where state in ('New york','Georgia')
order by  state , sales desc

1.New mexico , virginia    ( list of sales from maximum to lowest)
2.start with M  ( List of sales start with M , highest to lowest sales)



Sorting the table with one or multiple columns












select * from ishwarya;


select count(*) from ishwarya;






it is used to filter the data


select city,state,sales,quantity from store1

select city , sum(sales) from store1
where city = 'Akron'

select sum(sales) from store1
where city in ('Akron','Baltimore','Bakersfield')

select city , max(sales) from store1
where city = 'Akron'
union
select city , max(sales) from store1
where city = 'Baltimore'
select  city as max1,max(sales) as measure from store1
where city = 'Akron'
union
select  city as min1,min(sales) as measure from store1
where city = 'Akron'
union
select  city as mean,avg(sales) as measure from store1
where city = 'Akron'
union
select  city as cnt,count(sales) as measure from store1
where city = 'Akron'



select * from store1

select (sales + quantity) as combine , sales , quantity from store1
select (sales - quantity) as combine , sales , quantity from store1
select (sales * quantity) as combine , sales , quantity from store1
select sales , quantity,
case
when (sales / quantity) < 50 then 'basic customer'   2%
when (sales / quantity) < 100 then 'moderate cutomer'   5%
when (sales / quantity) < 500 then 'premium'              10%
else 'others'
end as customer_group
from store1



select sales , quantity,
case
when sum(sales / quantity) < 50 then sales * 0.1
when min(sales / quantity) < 100 then sales * 0.2 
when max(sales / quantity) < 500 then sales * 0.3            
else 'others'
end as customer_group
from store1






from store1




select sales,city,
case 
when city  =  'Akron' then " one " 
when city  =  'Abilene' then " two "
else  " others "
end as result
from store1


select sales,city,
case 
when sales  > 50 then " GT 50 "    <=   , >=   , <>    
when sales  < 50 then " LT 50 "
else  " others "
end as result
from store1



create database retail123;
create database `retail data`; 
show databases;

use retail;

create table `students_112` ( studentid int , name1 varchar(255) , lname varchar(255));
create table retail.students123 ( studentid int , name1 varchar(255) , lname varchar(255));

select * from students;  - all the columns
select studentid from students;  
select studentid,lname from students;




create table charfunction  (name varchar(255) , lname varchar(255)  , sales int , profit int) ;
select * from charfunction;

insert into charfunction values ('thillai','murali s',200,300);
insert into charfunction values ('RAM','RAVI',20,30);
insert into charfunction values ('RaHUl','KUMar',500,1300);
select * from charfunction

create table dataclean as select lower(name) as fname,upper(lname) as lname, sales,profit from charfunction
select * from dataclean

select concat(fname,lname) from dataclean

select length(fname) from dataclean

select * from dataclean

insert into dataclean values (' gokul CHENNAI   ','   BangaloreGokul    ',500,1300);

select substr(fname,6) from dataclean
select substr(lname,1,9) from dataclean

select trim(fname),trim(lname),sales from dataclean
select upper(replace(fname,'CHENNAI','mumbai')),fname from dataclean


delete from  dataclean
select * from dataclean

select initcap(fname) from dataclean - camal case
insert into dataclean values (' ram CHENNAI   ','   BangaloreGokul    ',500,1300);

'NY1234&%@@@'
replace function ?
substr(col,1,7)


coalesc , cast , convert - character 
getting the non-null balnaks fromma columns - coalecs(name,fname,lname)
cast / convert  - conver the data type in to other  , sales char to int

SQL numerical function

create table numfucntion (v1 int  , v2 double , v3 float );

insert into  numfucntion values(-75 , -87.56 , 700.96)
select * from numfucntion

select abs(v1),abs(v2),abs(v3) from numfucntion

select ceil(v2) from numfucntion
select floor(v1) , floor(v2) , floor(v3) from numfucntion

select greatest(30,2,36,81,125)
select least(30,2,36,81,125)

select log(v1),log(v2),log(v3) from numfucntion

select mod(18,4)
select pi() * v1 from numfucntion
select power(6,4)
select round(5.5553)
select sign(-40)
select sqrt(25)

select sqrt(v1),sign(v2),power(v3,2) from numfucntion
select truncate(7.533444 , 2)
select truncate(7.533444 , 3)

select rand()  - 0 to 1



select cos(v1) , cot(v2) , sin(v3) from numfucntion



SELECT DATEDIFF('2017-01-13','2017-01-03') AS DateDiff;
SELECT CURDATE();
SELECT CURTIME();
SELECT  DATE('1996-09-26 16:44:15.581') 
SELECT  DAY('1996-09-26 16:44:15.581') 
SELECT  MONTH('1996-09-26 16:44:15.581') 
























US988
IN2347238







select * from students

select * from students

create table copy_new as (select * from students); - create a new table from existing table

select * from copy_new;
select * from advertising;

select * from store1
where city = 'akron'; - 

select * from store1
where city = 'akron' and segment = 'consumer' ;


remove duplicates



select distinct name from ishwarya;
select distinct name,income,age,husband from ishwarya;
select count(name) from ishwarya;

distinct - key word is used to remove the duplicates
count - is used to count the records

select count(distinct name) from ishwarya;

select * from ishwarya;

select * from ishwarya
where income > 400 and husband = 'dhanus' and age = 60;




select * from ishwarya
where income > 900 and husband = 'dhanus' or age = 60;


use retail

select city,state,sales from store1
order by city desc

select city,state,sales from store1
order by state asc

select city,state,sales from store1
order by state desc , city asc

select state,city,sales from store1
order by state desc , city asc

select state , sales from store1
where state = 'Texas'
order by sales desc

select state , sales from store1
where state in ('New york','Georgia')
order by  state , sales desc

1.New mexico , virginia    ( list of sales from maximum to lowest)
2.start with M  ( List of sales start with M , highest to lowest sales)



Sorting the table with one or multiple columns












select * from ishwarya;


select count(*) from ishwarya;






it is used to filter the data


select city,state,sales,quantity from store1

select city , sum(sales) from store1
where city = 'Akron'

select sum(sales) from store1
where city in ('Akron','Baltimore','Bakersfield')

select city , max(sales) from store1
where city = 'Akron'
union
select city , max(sales) from store1
where city = 'Baltimore'
select  city as max1,max(sales) as measure from store1
where city = 'Akron'
union
select  city as min1,min(sales) as measure from store1
where city = 'Akron'
union
select  city as mean,avg(sales) as measure from store1
where city = 'Akron'
union
select  city as cnt,count(sales) as measure from store1
where city = 'Akron'



select * from store1

select (sales + quantity) as combine , sales , quantity from store1
select (sales - quantity) as combine , sales , quantity from store1
select (sales * quantity) as combine , sales , quantity from store1
select sales , quantity,
case
when (sales / quantity) < 50 then 'basic customer'   2%
when (sales / quantity) < 100 then 'moderate cutomer'   5%
when (sales / quantity) < 500 then 'premium'              10%
else 'others'
end as customer_group
from store1



select sales , quantity,
case
when sum(sales / quantity) < 50 then sales * 0.1
when min(sales / quantity) < 100 then sales * 0.2 
when max(sales / quantity) < 500 then sales * 0.3            
else 'others'
end as customer_group
from store1






from store1




select sales,city,
case 
when city  =  'Akron' then " one " 
when city  =  'Abilene' then " two "
else  " others "
end as result
from store1


select sales,city,
case 
when sales  > 50 then " GT 50 "    <=   , >=   , <>    
when sales  < 50 then " LT 50 "
else  " others "
end as result
from store1

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


CALL `rajinikanth`.`sqlsyntax`() 

create procedure casewhen as 
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
from production.storedata) as old 


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