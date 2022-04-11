----From Employees table

--1.1 Display Employee_ID , FIRST_NAME ,  LAST_NAME
        --for Employee_ID , 100 , 110 , 120
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (100,110,120);

   -- 1.1 Display Employee_ID , FIRST_NAME ,  LAST_NAME
        --for Employee_ID 100 to 115  excluding 110
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE EMPLOYEE_ID BETWEEN 100 AND 115 AND EMPLOYEES.EMPLOYEE_ID NOT IN 110;

    --1.2 Display Employee
--with No Manager_ID
SELECT *
FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;

    --1.3 Display Employee with No DEPARTMENT_ID
SELECT * FROM EMPLOYEES
    WHERE DEPARTMENT_ID IS NULL ;
   -- 1.4 Display All Employees from Department 40 to 70
SELECT *
FROM EMPLOYEES WHERE DEPARTMENT_ID BETWEEN 40 AND 70;
   -- 1.5 Display All Employees with with JOB_ID ST_CLERK AND SALARY more than 3000
        --ORDER the result by FIRST_NAME
SELECT *
FROM EMPLOYEES WHERE JOB_ID LIKE 'ST_CLERK' AND SALARY > 3000
ORDER BY FIRST_NAME;
    --1.6 Display Employee FIRST_NAME , SALARY , COMMISSION_VALUE  (SALARY*COMMISSION_PCT)
    --if the Employee has COMMISSION_PCT value
    --Order the result in COMMISSION_VALUE hight to low (can not use alias, you can use index 3)
SELECT FIRST_NAME, SALARY, SALARY*COMMISSION_PCT AS "COMMISSION VALUE"
FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL
                     ORDER BY SALARY*COMMISSION_PCT DESC ;
    --1.7 Display UNIQUE MANAGER_ID
SELECT DISTINCT MANAGER_ID
FROM EMPLOYEES;
   -- 1.8 Display UNIQUE DEPARTMENT_ID
SELECT DISTINCT DEPARTMENT_ID
FROM EMPLOYEES;
    --1.9 Display UNIQUE JOB_ID
SELECT DISTINCT JOB_ID
FROM EMPLOYEES;
    --1.10 Display All Employee Full Name that report to Manager_ID 100
SELECT CONCAT(CONCAT(FIRST_NAME, ' '), LAST_NAME) AS "FULL_NAME"
FROM EMPLOYEES WHERE MANAGER_ID = 100;
--FROM Departments Table

    --1.11 Display All Department that HAS MANAGER_ID  AND AT LOCATION_ID 1700
SELECT *
FROM DEPARTMENTS
    WHERE MANAGER_ID IS NOT NULL AND LOCATION_ID = 1700;
    --1.12 Display DEPARMENT_NAME of DEPARTMENT_ID 10, 20 , 130
SELECT DEPARTMENT_NAME
FROM DEPARTMENTS
    WHERE DEPARTMENT_ID IN (10,20,130);
    --1.12 Display DEPARMENT_NAME of DEPARTMENT_ID NOT BETWEEN 30 - 100
SELECT DEPARTMENT_NAME
FROM DEPARTMENTS
WHERE DEPARTMENT_ID NOT BETWEEN 30 AND 100;
   -- 1.13 Display Unique LOCATION_ID
SELECT DISTINCT LOCATION_ID
FROM DEPARTMENTS;
--FROM Locations Table

    --1.14 Display All Locations that has STATE_PROVINCE value
       -- ORDER the result by COUNTRY_ID
SELECT *
FROM LOCATIONS
WHERE STATE_PROVINCE IS NOT NULL
ORDER BY COUNTRY_ID     ;
   -- 1.15 Display All Locations that does not have POSTAL_CODE
SELECT *
FROM LOCATIONS
WHERE POSTAL_CODE IS NOT NULL ;

    --1.16 Display All Unique COUNTRY_ID
SELECT DISTINCT COUNTRY_ID
FROM LOCATIONS;
    --1.17 Display All Locations if STREET_ADDRESS contains Street or St
SELECT *
FROM LOCATIONS WHERE STREET_ADDRESS LIKE '%Street%' OR STREET_ADDRESS LIKE '%St%';
   -- 1.18 Display the CITY for Location 1700 , 2100 , 2200
SELECT CITY
FROM LOCATIONS WHERE LOCATION_ID IN (1700, 2100, 2200);
    --1.19 Display the LOCATION_ID, STATE_PROVINCE for Location IN JP , US, CA
        --ORDER BY LOCATION_ID
SELECT LOCATION_ID, STATE_PROVINCE
FROM LOCATIONS
WHERE COUNTRY_ID IN ('IN', 'JP', 'US', 'CA') ;
--FROM Countries Table

    --1.20 Display Unique REGION_ID
SELECT DISTINCT REGION_ID
FROM COUNTRIES ;
   -- 1.21 Display COUNTRY_NAME from Region 1 and 3
SELECT COUNTRY_NAME
FROM COUNTRIES
WHERE REGION_ID IN (1,3);
--FROM Jobs Table
    --1.22 Display All JObs that has MIN_SALARY more than 10000 and MAX_SALARY less than 30000
SELECT *
FROM JOBS WHERE MIN_SALARY > 10000 AND
                MAX_SALARY < 30000 ;
   -- 1.23 Display Max Salary for JOB_TITLE President
SELECT MAX_SALARY
FROM JOBS WHERE JOB_TITLE LIKE 'President';
   --1.24 Display Programmer JOB_TITLE MAX_SALARY
SELECT JOB_TITLE, MAX_SALARY
FROM JOBS
WHERE JOB_TITLE LIKE 'Programmer';


--Employee Table

    --2.1  Display All Employees FIRST_NAME , JOB_ID , SALARY
       -- if the JOB_ID ends with ACCOUNT
SELECT FIRST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE JOB_ID LIKE '%ACCOUNT';
   -- 2.2  Display All Employees FIRST_NAME , JOB_ID , SALARY
       -- if the JOB_ID ends with REP BUT not equal SA_REP
       -- ORDER the result by SALARY DESC
SELECT FIRST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE JOB_ID LIKE '%REP' AND JOB_ID NOT LIKE 'SA_REP'
ORDER BY SALARY DESC ;
    --2.3 Display All Employees FIRST_NAME if second Character is a
        --ORDER the result by LENGTH of FIRST_NAME
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_a%'
ORDER BY LENGTH(FIRST_NAME) ;
--Department Table

   -- 2.4 Display All Departments with DEPARTMENT_NAME Contains IT
        -- if the MANAGER_ID is not 103
SELECT *
FROM DEPARTMENTS
WHERE DEPARTMENT_NAME LIKE '%IT%' AND MANAGER_ID != 103;

   -- 2.5 Display All Departments with DEPARTMENT_NAME has more than 1 word (Contains space)
SELECT *
FROM DEPARTMENTS
WHERE LENGTH(DEPARTMENT_NAME) > 1 ;

--Jobs Table

   -- 2.6 Display All JOB_TITLE that contains Manager
SELECT JOB_TITLE
FROM JOBS
WHERE JOB_TITLE LIKE '%Manager%';
   -- 2.7 Display All JOB_TITLE that starts with A , sort in descending order
SELECT JOB_TITLE
FROM JOBS
WHERE JOB_TITLE LIKE 'A%'
ORDER BY JOB_TITLE DESC
 ;


--Employees Table

    --3.1  Display Employees FIRST_NAME , LAST_NAME , FULL_NAME, LENTH OF FULL_NAME
         --if the LENGTH OF FULL_NAME is more than 12 , SORT FIRST_NAME ASC
SELECT FIRST_NAME, LAST_NAME, CONCAT(CONCAT(FIRST_NAME, ' '), LAST_NAME) AS "FULL_NAME",
       LENGTH(CONCAT(CONCAT(FIRST_NAME, ' '), LAST_NAME)) AS "LENGTH OF FULL_NAME"
FROM EMPLOYEES ;
    --3.2 Display the Employee Count for employees make more than 10000
SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY > 10000;
   -- 3.2 Display the Employee Count for employees that has Manager_ID 108
SELECT COUNT(*)
FROM EMPLOYEES
WHERE MANAGER_ID = 108 ;
   -- 3.3 Display the Employee Count for EACH Manager_ID
SELECT MANAGER_ID,COUNT(*)
FROM EMPLOYEES
GROUP BY MANAGER_ID ;
   -- 3.4 Display the Employee Count for EACH FIRST_NAME (yeah and observe what you got)
           -- Filter the grouped result to only display if the count is more than 1
SELECT FIRST_NAME, COUNT(*)
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*) > 1;
    --3.5 Display the Sum of All Salary for  employees with JOB_ID Contains Clerk
SELECT  SUM(SALARY)
FROM EMPLOYEES
WHERE JOB_ID LIKE '%CLERK%';
   -- 3.6 Display the Max Salary for  employees with JOB_ID contains SA
SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE JOB_ID LIKE '%SA%' ;
    --3.7 Display the AVERAGE Salary for employees with JOB_ID ends with REP
SELECT ROUND(AVG(SALARY),2)
FROM EMPLOYEES
WHERE JOB_ID LIKE '%REP' ;
   -- 3.8 Display the Average Salary for Each Department_ID
        -- if the Average Salary is from 5000- 10000
SELECT DEPARTMENT_ID, AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) BETWEEN 5000 AND 10000 ;
--Departments Table

   --3.9 Display the Count of Departments in LOCATION_ID 1700
SELECT COUNT(*)
FROM DEPARTMENTS
WHERE LOCATION_ID = 1700;
  -- 3.10 Display the Count of Departments in EACH LOCATION_ID
SELECT LOCATION_ID, COUNT(*)
FROM DEPARTMENTS
GROUP BY LOCATION_ID ;
  -- 3.11 Display the Count of Departments that has manager
SELECT  COUNT(*)
FROM DEPARTMENTS
WHERE MANAGER_ID IS NOT NULL;
  -- 3.12 Display the Count of Departments that contains IT in DEPARTMENT_NAME
SELECT COUNT(*)
FROM DEPARTMENTS
WHERE DEPARTMENT_NAME LIKE '%IT%'
;
--Locations Table

  -- 3.13 Display the count of Location that does not have STATE_PROVINCE
SELECT COUNT(*)
FROM LOCATIONS
WHERE STATE_PROVINCE IS NULL;
 --  3.14 Display the count of Location in US, CA, IN
SELECT COUNTRY_ID, COUNT(*)
FROM LOCATIONS
GROUP BY COUNTRY_ID
HAVING COUNTRY_ID IN ('US', 'CA', 'IN');
   --3.15 Display the count of Location in EACH COUNTRY (COUNTRY_ID)
SELECT COUNTRY_ID,COUNT(*)
FROM LOCATIONS
GROUP BY COUNTRY_ID;
--   3.16 Display the count of Location for those location Contains st, Street in STREET_ADDRESS
SELECT COUNT(*)
FROM LOCATIONS
WHERE STREET_ADDRESS LIKE '%st%' OR STREET_ADDRESS LIKE '%Street%';
  -- 3.15 Display the count of Location in EACH COUNTRY (COUNTRY_ID)
         --if the count is less than 3
SELECT COUNTRY_ID, COUNT(*)
FROM LOCATIONS
GROUP BY COUNTRY_ID
HAVING COUNT(*) < 3;

--Countries Table

   --3.16 Display the count of Countries
SELECT COUNT(*)
FROM COUNTRIES ;
   --3.17 Display the count of Countries in Region 3
SELECT COUNT(*)
FROM COUNTRIES
WHERE REGION_ID = 3;
  -- 3.18 Display the count of Countries that has COUNTRY_NAME ended with a
SELECT COUNT(*)
FROM COUNTRIES
WHERE COUNTRY_NAME LIKE '%a';
   --3.19 Display the count if Countries for each REGION (REGION_ID)
SELECT REGION_ID,COUNT(*)
FROM COUNTRIES
GROUP BY REGION_ID;
  -- 3.19 Display the count if Countries for each REGION (REGION_ID)
       -- if the count is more than 5
SELECT REGION_ID,COUNT(*)
FROM COUNTRIES
GROUP BY REGION_ID
HAVING COUNT(*) > 5;

 --Jobs Table

    --3.2O Find out MAX(MIN_SALARY) in all JOBS
SELECT MAX(MIN_SALARY)
FROM JOBS;
   -- 3.21 Find out MAX (MAX_SALARY) for JOBS excluding President
SELECT MAX(MAX_SALARY)
FROM JOBS
WHERE JOB_TITLE NOT LIKE 'President';
    --3.22 Display AVG(MAX_SALARY) (this is column name) for JOBS that has Manager in TITLE
SELECT AVG(MAX_SALARY)
FROM JOBS
WHERE JOB_TITLE LIKE '%Manager%' ;













