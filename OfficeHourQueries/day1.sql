

--Task 1: get me job_title where job_title President, Sales Manager, Finance Manager
SELECT JOB_TITLE
FROM JOBS
WHERE JOB_TITLE IN ('President', 'Sales Manager', 'Finance Manager');

--Task 2 : get me all country names except USA and Canada
SELECT COUNTRY_NAME
FROM COUNTRIES
WHERE COUNTRY_NAME NOT IN ('United States of America', 'Canada');

SELECT COUNTRY_NAME
FROM COUNTRIES
WHERE COUNTRY_NAME <> 'USA'
  AND COUNTRY_NAME <> 'Canada';
--Task 3: get me first name and last name where salary 3000 to 10000
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 3000 AND 10000;


--Task 4: get me first all employees where department id is null
SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL ;

--Task 5: get me first all employees where department id is not null
SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL ;


--Task 6: get me all employees whose first name starts with C
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'C%';


--Task 7: get me 5 letter first names where the middle char is z
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';


--Task 8: get me first name where second char is u
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_u%';


--Task 9: get me all employees information based on who is making more salary to low salary
SELECT SALARY
FROM EMPLOYEES
ORDER BY SALARY DESC ;

SELECT FIRST_NAME,SALARY
FROM EMPLOYEES
ORDER BY 2 DESC ;

--Task 10: get me all employees information order by first name asc and last name desc
SELECT *
FROM EMPLOYEES
ORDER BY FIRST_NAME ASC,
         LAST_NAME DESC ;

--Task 11: get me unique first name row numbers in a table
SELECT DISTINCT FIRST_NAME, COUNT(*) AS "COUNT OF UNIQUE FN"
FROM EMPLOYEES
GROUP BY FIRST_NAME;


--Task 12: get me average salary of employees
SELECT AVG(SALARY) AS "AVERAGE SALARY"
FROM EMPLOYEES;

--Task 13: get me min salary of employees
SELECT MIN(SALARY) AS "LOWEST SALARY"
FROM EMPLOYEES;

--Task 14: get me max salary of employees
SELECT MAX(SALARY) AS "HIGHEST SALARY"
FROM EMPLOYEES;

--Task 15: get me total salary of employees
SELECT SUM(SALARY) AS "TOTAL SALARY"
FROM EMPLOYEES;

--Task 16: add @gmail.com and name new column to full_email
SELECT EMAIL || '@gmail.com' AS "FULL_EMAIL"
FROM EMPLOYEES ;



