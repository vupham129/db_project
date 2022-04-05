
-- what about the partial search
-- we use LIKE AND % (Wild Card)
-- % can represent 0 or more character of any kind
-- _ can represent exactly one character of any kind
/*
    'D%' -- anything that starts with D
            David, Danny, Dog
    '%d' -- anything that ends with d
            Sid, Bid, Kid, Dad
    '%d%' -- anything that contains d
            Aladdin, Cassandra, Adam, Brandon
            Sid, Bid, Kid, Dad
            david, danny, dog

    'D%a' -- anything starts with D and end with a
            Diane, Donna, Damla, Daria

    'S%e%n' -- anything starts with S and has e something in the middle and ends with n
            Steven, Stephen, Selen, Serkan, Sebastian

    'T_' -- starts with T and followed by exactly one character of any kind
            Tj, TD, Ta, T! , TV, T2

    '_a_' -- starts with any one character, followed by a and followed by any one character
            Dad, man, Fat, Cat, Tab, Gap, Map, Mad

 */

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'D%a' ; -- 1 row

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'S%e%n' ;-- 3 rows

SELECT FIRST_NAME FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_a_'; -- 1 row

SELECT FIRST_NAME FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'Da%'; -- 5 rows

select FIRST_NAME from EMPLOYEES
--where FIRST_NAME like 'D%'; -- 9 rows
--where FIRST_NAME like '%d'; -- 6 rows
--where FIRST_NAME like '%d%'; -- 15 rows
where FIRST_NAME like 'T_'; -- 1 row

select PHONE_NUMBER from EMPLOYEES
--where PHONE_NUMBER like '515%' ; -- 21 rows -- starts with 515
where PHONE_NUMBER like '%.121.%' ; -- 8 rows -- contains 121 in the middle

-- YOU CAN OPTIONALLY GIVEN AN ALIAS(NICKNAME) FOR YOUR COLUMN
-- TO CHANGE THE RESULTING COLUMN NAME (ONLY CHANGING DISPLAY NOT ACTUAL DATA VALUE)
-- USING THE KEYWORD "AS" RIGHT AFTER COLUM NAME
-- AND PROVIDE NICKNAME EITHER WITHOUT "" IF SINGLE WORD
-- AND USE "" IF MORE THAN WORD
-- display all first name, salary in employees table
-- modify the column name for salary in result to Money
select FIRST_NAME, SALARY as Money
from EMPLOYEES;

-- display all first name, last name in employees table
-- modify the column name for as below
-- First name --> given name   last name --> family name
SELECT FIRST_NAME AS  GIVEN_NAME, LAST_NAME AS FAMILY_NAME
FROM EMPLOYEES;

-- CONCATENATION IN SQL USE DOUBLE PIPE || (THIS IS NOT OR)
--DISPLAY FIRST NAME, LAST NAME, FULL NAME FOR EMPLOYEE
SELECT FIRST_NAME, LAST_NAME, FIRST_NAME || ' '|| LAST_NAME AS FULL_NAME
FROM EMPLOYEES;

-- ARITHMETIC OPERATOR: + - * /
-- DISPLAY EMPLOYEE NAME AND SALARY
-- AND INCREASED_SALARY AFTER 5000$ RAISE
-- AND DECREASED_SALARY AFTER 2000$ CUT
-- AND YEARLY_SALARY -- * 12
-- AND WEEKLY_SALARY -- / 4
SELECT FIRST_NAME, SALARY,
       SALARY + 5000 AS INCREASED_SALARY,
       SALARY - 2000 AS DECREASED_SALARY,
       SALARY * 12 AS YEARLY_SALARY,
       SALARY / 4 AS WEEKLY_SALARY

FROM EMPLOYEES;

--SQL BUILT-IN FUNCTION:
-- REUSABLE CODE THAT WRAPPED INTO FUNCTION FOR COMMON TASKS
-- LIKE ROUNDING NUMBERS, GETTING LENGTH OF STR AND MORE
-- SINGLE ROW FUNCTION:
    -- IT AFFECT EACH AND EVERY ROW AND RETURN SAME NUMBER OF ROW
    -- FEW TEXT FUNCTION:
    -- UPPER, ACCEPT ONE PARAMETER (COLUMN NAME) AND RETURN UPPERCASE
    -- LOWER, ACCEPT ONE PARAMETER (COLUMN NAME) AND RETURN LOWERCASE
    -- LENGTH: ACCEPT ONE PARAMETER (COLUMN NAME) AND RETURN THE LENGTH OF STRING

    -- DISPLAY FIRST_NAME, AND UPPERCASE FIRSTNAME IN EMPLOYEE TABLE
SELECT FIRST_NAME ,
       UPPER(FIRST_NAME) AS "UPPERCASE_NAME",
       LOWER(FIRST_NAME) AS "LOWERCASE_NAME",
       LENGTH(FIRST_NAME) AS "CHAR_COUNT"
FROM EMPLOYEES;

--FIND OUT FIRST_NAME AND CHARACTER COUNT ONLY DISPLAY IF CHARACTER COUNT IS EXACTLY 5
SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS "CHAR_COUNT"
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) = 5; -- 35 ROWS

-- DISPLAY FN IF FN CHARACTER COUNT IS MORE THAN 10
SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS "CHAR_COUNT"
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) > 10; -- 2 ROWS
-- DISPLAY FN IF FN CHARACTER COUNT IS BETWEEN 7-9
SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS "CHAR_COUNT"
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) BETWEEN 7 AND 9; -- 32 ROWS
-- DISPLAY FN IF FN CHARACTER COUNT IS NOT BETWEEN 5-10
SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS "CHAR_COUNT"
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) NOT BETWEEN 5 AND 10; -- 17 ROWS
-- DISPLAY FN IF FN CHARACTER COUNT IS 2 OR 9 OR 13
SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS "CHAR_COUNT"
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) IN (2,9,13);-- 6 ROWS

-- MULTI ROW FUNCTION:
    --













