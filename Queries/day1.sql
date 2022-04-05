-- This is how you write comment in sql
-- single line comment look like this
/*
 This is multi line comments
 same as java
 */
-- each query you write known as sql SELECT statement
-- * means all, here it means all columns
-- from some table that exist in the database
-- just like Java,
-- SQL statements end in semi-colon ; and it's mandatory
SELECT * FROM REGIONS ;
-- If you want to run second statement
-- you just need to click the query to focus the cursor and click run
SELECT * FROM COUNTRIES;

SELECT * FROM LOCATIONS, REGIONS;

select * from DEPARTMENTS;

select * from JOBS;

select * from JOB_HISTORY;

select * from EMPLOYEES;

-- restricting columns in the result
-- SQL is space insensitive
select FIRST_NAME
from EMPLOYEES; -- 107 rows

-- More than one columns can be specified separated by comma ","
select FIRST_NAME, LAST_NAME, EMAIL
from EMPLOYEES;

/*
 task: select specific columns from other tables to get yourself familiar with Hr database
 */

/*
 Only getting unique value from the result
    for ex: only get unique first name from employee table
 */

select distinct FIRST_NAME from EMPLOYEES; --91 rows

-- get only unique last names
select distinct LAST_NAME from EMPLOYEES; -- 102 rows

-- this is looking for people with unique first name and last name -> full name
select distinct FIRST_NAME, LAST_NAME from EMPLOYEES; -- 107 rows

--Restricting rows in the result using WHERE clause
/*
 operators: =, <, >, <=, >=, !=, <>, and, or
 */

--Display the Employee information for the employee with first_name Ellen
--in SQL we use single quote for String.
select * from EMPLOYEES where FIRST_NAME = 'Ellen'; -- Ellen != ellen != ELLEN, values are case sensitive

-- Display the employee Firstname, last name, salary for the employee with salary 11000
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY = 11000; -- 3 rows

-- for the employee with salary 4800 and first name David
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY = 4800 and FIRST_NAME = 'David';

-- for the employee with salary 4800 or first name David
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY = 4800 or FIRST_NAME = 'David'; -- 4 rows

--displays the employees that make more than 5000 and less than 12000
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY > 5000 and SALARY < 12000; -- 49 rows

-- display the employees that have JOB_ID of AD_VP, AD_ASST, FI_ACCOUNT, AC_ACCOUNT
select FIRST_NAME, LAST_NAME, JOB_ID from EMPLOYEES
where JOB_ID = 'AC_ACCOUNT'
or JOB_ID = 'AD_ASST'
or JOB_ID = 'FI_ACCOUNT'
or JOB_ID = 'AD_VP' ; --9rows

-- Range checking is much simpler in SQL using
-- Between .... And
-- is same as column value >= lowerLimit and column value <= upperLimit
-- Above query can be much simpler and more readable as below
select * from EMPLOYEES where SALARY between 5000 and 12000; -- 50 rows

-- Using keyword IN for multiple possible value of same column in condition
select FIRST_NAME, LAST_NAME, JOB_ID from EMPLOYEES
where JOB_ID in ('AC_ACCOUNT', 'AD_ASST', 'FI_ACCOUNT', 'AD_VP' ) ; --9 rows

-- How to say not in SQL
-- for equality check != <>,
    -- Find out all regions except the region with region ID of 1
    select * from REGIONS where REGION_ID <> 1;
-- select * from REGIONS where REGION_ID != 1;
select * from REGIONS where REGION_NAME <> 'Americas';
-- for Between and --> not between.. AND
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY not between 5000 and 12000; -- 57 rows
-- for In --> Not In
select FIRST_NAME, LAST_NAME, JOB_ID from EMPLOYEES
where JOB_ID not in ('AC_ACCOUNT', 'AD_ASST', 'FI_ACCOUNT', 'AD_VP' ) ; -- 98 rows

-- how to use null in condition ?
--for example: find out all departments with null manager_id
select * from DEPARTMENTS
where MANAGER_ID is null; -- 16 rows

--for example: find out all departments without null manager_id
select * from DEPARTMENTS
where MANAGER_ID is not null; -- 11 rows

--sorting the result in ascending ( Low to high)
-- or descending order (high to low)
-- order by clause can be used to order the result of your query
-- it use neither column name or column index
-- it must be the last part of the statement
-- ASC for (Low to high), DESC ( high to low)

-- display employee first name and last name and salary
-- try to sort by below criteria separately
-- First name ASC
-- salary DESC
-- Last name DESC

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
--order by FIRST_NAME asc ;
--order by SALARY desc ;
--order by LAST_NAME desc ;
order by 1 desc ; -- this means sort the result by first column
-- SQL index start with 1 NOT 0 !!!!!!!!!

-- what about the partial search
-- we use LIKE AND % (Wild Card)
-- % can represent 0 or more character of any kind
-- _ can represent exactly one character of any kind

-- display all the first name that start with letter A in employees tables
select FIRST_NAME from EMPLOYEES where FIRST_NAME like 'A%'; -- 10 rows

-- display all the first name that end with letter a in employees tables
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '%a'; -- 16 rows

-- display all the first name that contains letter a in employees tables
-- display all the first name that end with letter a in employees tables
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '%a%'; -- 66 rows











