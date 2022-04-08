/*
 group by: multi row functions, CAN USE WITH AGGREGATE FUNCTION
        DIVIDES THE ROWS INTO GROUP

 having: giving condition for group by

 */

SELECT JOB_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY JOB_ID;

SELECT JOB_ID, MAX(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID ;

SELECT JOB_ID, MIN(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID ;

SELECT JOB_ID, AVG(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID ;

SELECT JOB_ID, SUM(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID ;

--HAVING:
SELECT JOB_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING MAX(SALARY) > 2000;

SELECT JOB_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING AVG(SALARY) > 6000;

SELECT JOB_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING MIN(SALARY) > 6000;
