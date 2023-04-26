-- %

select FIRST_NAME from EMPLOYEES;

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'Ha%';


select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '%na';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'D%a';


--  _
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '____';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '__i_';


-- aggregate functions
-- max, min, avg(round), sum

select salary from EMPLOYEES;

select max(SALARY) from EMPLOYEES;

select min(salary) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;

select avg(SALARY) from EMPLOYEES;

select round(avg(SALARY)) from EMPLOYEES;

select round(avg(SALARY), 2) from EMPLOYEES;

-- group by
select JOB_TITLE from JOBS;

select JOB_TITLE from JOBS
group by JOB_TITLE;

select JOB_ID from EMPLOYEES;

select JOB_ID from EMPLOYEES
group by JOB_ID;

select DEPARTMENT_ID from EMPLOYEES
group by DEPARTMENT_ID;

select JOB_ID, sum(SALARY) from EMPLOYEES
group by JOB_ID;

select DEPARTMENT_ID, avg(SALARY) from EMPLOYEES
group by DEPARTMENT_ID;


select DEPARTMENT_ID, avg(SALARY) from EMPLOYEES
group by DEPARTMENT_ID
having avg(salary) > 10000;

-- group by is used with having, nor where

-- sub query
select max(salary) from EMPLOYEES;

select FIRST_NAME from EMPLOYEES
where SALARY = 24000;  -- return max salary earner

select FIRST_NAME from EMPLOYEES
where SALARY = (select max(salary) from EMPLOYEES);

-- string functions
select first_name, last_name from EMPLOYEES;

select first_name || last_name from EMPLOYEES;

select first_name || ' ' ||last_name from EMPLOYEES;

select first_name || '+' ||last_name from EMPLOYEES;

select first_name || '.' || last_name || '.' || '@email' from EMPLOYEES;

select lower(JOB_ID) from EMPLOYEES;

select upper(FIRST_NAME) from EMPLOYEES;

select FIRST_NAME, length(first_name) from EMPLOYEES;

select substr(LAST_NAME,1,4) from EMPLOYEES;

select initcap(EMAIL) from EMPLOYEES;

--view
create view email1 as select initcap(EMAIL) as initemail from EMPLOYEES;

-- join
-- left join   get all values from left(first) table, get only macthing ones
-- from right (second)table
select city, COUNTRY_NAME from LOCATIONS left join COUNTRIES
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

select city, COUNTRY_NAME from COUNTRIES left join LOCATIONS
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

-- right join
-- right join   get all values from right(second) table, get only macthing ones
-- from left (first)table
select city, COUNTRY_NAME from LOCATIONS right join COUNTRIES
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

-- inner join
-- get data from both table which is common
select city, COUNTRY_NAME from LOCATIONS inner join COUNTRIES
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

-- full outer join
select city, COUNTRY_NAME from LOCATIONS full outer join COUNTRIES
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID
where CITY != 'null';

-- DDL & DML ( DDL is about table, DML is about data)


-- create table
create table iceCream (
    id integer primary key ,
    taste char(15),
    color char(15)
);

select * from iceCream;


-- insert data
insert into iceCream values (1,'banana','yellow');
insert into iceCream values (2,'chocolate','brown');
insert into iceCream values (3,'strawberry','red');
insert into iceCream values (4,'milk','white');


-- update data
update iceCream
set color='cream'
where id=4;


-- delete data
delete iceCream
where id=3;

--alter
--changing column name
alter table iceCream rename column id to ice_id;

-- add column
alter table iceCream
add price integer;

-- delete column
alter table iceCream drop column price;

create table yogure(
    id integer primary key ,
    taste char(15),
    color char(15)
);

insert into yogure values (1,'fruit','blue');
insert into yogure values (2,'mango','yello');
insert into yogure values (3,'peach','pink');

select * from yogure;

select taste from iceCream
union
select taste from yogure;