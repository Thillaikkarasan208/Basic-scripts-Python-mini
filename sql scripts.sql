show databases;
use rajinikanth;

create schema `rajinikanth`;

use week_end;

batch
create table batch (name1 varchar(255) , hours int);
insert into batch values( "ramdhkfj" , 3);
insert into batch values( "ravi" , 3);

select * from batch;


create table covid ( name1 varchar(255) , salary int ); 

insert into covid values ("Thillai",  200);

use rajinikanth;


select distinct name,husband from ishwarya;

select * from ishwarya;
select name,age from ishwarya;


create table new1 as select distinct(name) from ishwarya;


select count(*) from ishwarya;
select count(name) from ishwarya;

select count(distinct(name)) from ishwarya;

select distinct(name) from latha;
select * from latha;

#delete duplicates in sql
select * from ishwarya;
select distinct name from ishwarya;

select distinct name,husband from ishwarya;

select count(name) from ishwarya;
select count(*) from ishwarya;

select count(distinct name) from ishwarya; 

select count(name) as cnt from ishwarya;	

select * from linga;

select * from latha
where name = 'linga' ;

select * from latha
where name in ('linga','yathra');
distinct(*)
distinct(name)

select * from linga
where name in ('linga','yathra') 
select distinct(name,marks,id,salary) from latha;

delete from latha where name = 'linga';


select count(*) from production.storedata
where city = "Henderson" and state = "Kentucky";

select * from linga
where name = 'linga' and ( id = 2 or id = 4) ;    linga + 2 or linga + 4

select * from linga
where name = 'linga' or ( id = 2 or id = 4) ;   linga or 2 or 4 

select * from linga
order by name;

Extract , transformation , load  ( ETL ops)

select marks * 20 as calcualtion  from linga
select * from linga
order by marks;

select * from linga
order by marks desc;


select * from linga
order by id asc , marks desc;

select * from latha
where name  is null

is not null - non blanks


select * from covid;
set sql_safe_updates = 0;


update covid 
set salary = 200
where name = 'Uma';


select * from latha ;

select min(marks),id from latha;
select max(marks) from latha;

select sum(marks) from latha;
select avg(marks) from latha;
`wild card search`

select * from latha
where name like '%ga%';

select * from latha
where name like '_inga';

select * from latha
where name like '_in_a';

select * from latha
where name like '[a-c]%';

sql alias 

select * from latha

select id as ind , marks as score , name as fname from latha;

select * from mat1;
delete from mat1;
drop table mat1;
update , alter , drop 

select * from tableb
select * from ishwarya


left join - table a - ishwarya , table B - tableB
id - commona key

select * from ishwarya left join tableb on
ishwarya.id = tableb.id;

select * from ishwarya inner join tableb on
ishwarya.id = tableb.id;

select * from ishwarya right join tableb on
ishwarya.id = tableb.id;


select * from ishwarya as t1 outer join tableb as t2 on
t1.id = t2.id;



select * from ishwarya full outer join tableb on
ishwarya.id = tableb.id;






















  





















sort the data















    
    
    
    

























use production;

select * from production.'store data';

alter table 


create database rajinikanth;
use rajinikanth;
ishwaryacreate table ishwarya ( name1 varchar(255) , city varchar (255) , age int );


drop table ishwarya;



create database testdb;
create table persons ( personid int , lastname varchar(255) , firstname varchar(255) , address varchar(255) , city varchar(255) );
create table person2 as select personid,city from persons;

use production;

select * from storedata


select * from covid21 where Name = "James";
select upper(Name) as [Firstname] from covid21;
use windows;
insert into covid values ("Uma",  101, 30, "Hosur","Female");
set sql_safe_updates = 0;
update covid set city ="Madras"where city = "Chennai";
select * from covid;
delete from covid where patient_id=101;
update covid set city = "Madras" where city = "Chennai";
describe covid;
alter table covid add column country varchar(20);
alter table covid modify column city varchar(20);

alter table covid rename column ï»¿Name to Name;
rename table covid to covid21;
select * from covid21;
update covid21 set country="India" where country is null;
select * from covid21 where left(name,1) in ("a","e","i","o","u");
select * from covid21 where substr(name,1,1) in ("a","e","i","o","u");
use windows;
select avg(age) from covid21;
select min(age) from covid21;
select * from covid21 order by age desc limit 2 offset 4;
select distinct * from covid21;
select distinct(city) from covid21;
select * from covid21 order by age desc;
select * from covid21 order by Name asc limit 3;
select *, if(age>18 and patient_id>100,"pass", "fail") as result from covid21;
select * from covid21 where city="delhi" and gender="female";
select * from covid21 where age between 15 and 30;
select Name, left(name, 1) from covid21;
select Name, right(name, 1)from covid21;
select Name, upper(name) from covid21;
select Name, lower(name) from covid21;
select city, upper(city) from covid21;
select * from covid21 where city="madras"
union all
select * from covid21;
use windows;
select * from covid21 where city="madras"
union
select * from covid21;
select * from dept;
select * from pin;
select * from students;
alter table dept rename column ï»¿id to id;
alter table pin rename column ï»¿pincode to pincode;
alter table students rename column ï»¿id to id;
select * from students
 inner join dept on dept.id=students.dept_id;
select * from students inner join dept on dept.id=students.dept_id inner join pin on students.pincode=pin.pincode;
select * from students left join dept on dept.id=students.dept_id;
select * from students right join dept on dept.id=students.dept_id;
select * from students left join dept on dept.id=students.dept_id
union
select * from students left join dept on dept.id=students.dept_id;
select * from partner;
alter table partner rename column ï»¿id to id;
select * from partner as a inner join partner as b on a.id=b.p_id;
select city,gender,avg(age) from covid21 where gender ="male" group by city,gender having avg(age) >25;
select * from covid21 where (city, age)in
(
select city,max(age) from covid21 group by city);

select *,sum(age) over(partition by city,gender order by name asc)
from covid21;

select *, sum(age) over(partition by city order by age) from covid21;
select *,rank() over(partition by city order by age),
dense_rank() over(partition by city order by age) from covid21;
select *,rank() over(partition by city order by age) as rk
from covid21;
select * from (select *,dense_rank() over(partition by city order by age) as rk
from covid21) as a
where rk <= 3;
