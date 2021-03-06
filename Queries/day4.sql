SELECT * FROM EMPLOYEES;

--CASE WHEN STATEMENT TO CONDITIONALLY DISPLAY VALUES

-- DISPLAY EMPLOYEES FIRST_NAME, SALARY, SALARY_GRADE
    -- SALARY_GRADE COLUMN SHOULD BE BELOW VALUES
    -- WHEN SALARY> 8000 "ABOVE AVERAGE"
    -- ELSE "BELOW AVERAGE"
SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY > 8000 THEN 'ABOVE AVERAGE'
           ELSE 'BELOW AVERAGE'
       END AS "SALARY_GRADE"
FROM EMPLOYEES ;

SELECT FIRST_NAME, SALARY,
       CASE
           WHEN SALARY > 20000 THEN 'A'
           WHEN SALARY BETWEEN 10000 AND 20000 THEN 'B'
           WHEN SALARY BETWEEN 5000 AND 10000 THEN 'C'
           ELSE 'D'
       END AS "SALARY_GRADE"
FROM EMPLOYEES
ORDER BY SALARY;

-- TO_DATE ACCEPTS 2 PARAMETERS
-- THE DATE STRING
-- THE FORMAT OF DATE PROVIDED IN PREVIOUS PARAMETER
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE < TO_DATE('2002-08-16', 'YYYY-MM-DD');

-- FILTER THE RESULT BY HIRE DATE BETWEEN 2001-01-13 AND 2006-01-03
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN TO_DATE('2002-08-16', 'YYYY-MM-DD') AND TO_DATE('2006-01-03', 'YYYY-MM-DD');

-- SUB QUERY: QUERY INSIDE ANOTHER QUERY
SELECT MAX(SALARY)
FROM EMPLOYEES ;

SELECT FIRST_NAME
FROM EMPLOYEES WHERE SALARY = 24000;

SELECT FIRST_NAME
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY)
                FROM EMPLOYEES );

SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE SALARY != (SELECT MAX(SALARY) FROM EMPLOYEES);

SELECT FIRST_NAME, SALARY,
       DENSE_RANK() over (ORDER BY SALARY DESC ) AS SALARY_RANK
FROM EMPLOYEES ;

SELECT * FROM (SELECT FIRST_NAME, SALARY,
                      DENSE_RANK() over (ORDER BY SALARY DESC ) AS SALARY_RANK
               FROM EMPLOYEES)
WHERE SALARY_RANK = 3;