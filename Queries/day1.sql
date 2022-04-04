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
from EMPLOYEES;

-- More than one columns can be specified separated by comma ","
select FIRST_NAME, LAST_NAME, EMAIL
from EMPLOYEES;

/*
 task: select specific columns from other tables to get yourself familiar with Hr database
 */




