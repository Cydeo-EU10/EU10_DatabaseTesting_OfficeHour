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

