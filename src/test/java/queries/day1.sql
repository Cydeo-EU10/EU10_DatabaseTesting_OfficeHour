select * from JOB_HISTORY;

select JOB_ID from JOB_HISTORY;

-- ctrl + enter

select START_DATE, END_DATE, EMPLOYEE_ID from JOB_HISTORY;

select  FIRST_NAME from EMPLOYEES;

select distinct FIRST_NAME from EMPLOYEES;

select count(FIRST_NAME) from EMPLOYEES;

select count(COMMISSION_PCT) from EMPLOYEES;

select distinct SALARY from EMPLOYEES;

select SALARY from EMPLOYEES
where
     SALARY > 10000;

select SALARY from EMPLOYEES
where SALARY <> 2100;

select SALARY from EMPLOYEES
where SALARY != 2100;



