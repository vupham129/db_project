/*
 Aliases: used to give temporary to tables and columns
    column aliases: we use "As" keyword to give temporary name to the column
            select column as "name" from Table;
    table aliases: given with a space
            select column from tableName Name;

 */

--column aliases:

SELECT FIRST_NAME AS "GIVEN NAME"
FROM EMPLOYEES ;

SELECT FIRST_NAME || ' '|| LAST_NAME AS "FULL NAME"
FROM EMPLOYEES ;

SELECT CONCAT(EMAIL,'@gmail.com') AS "EMAIL ADDRESS"
FROM EMPLOYEES ;

--table aliases:
SELECT *
FROM EMPLOYEES, JOB_HISTORY ;

SELECT EMPLOYEES.EMPLOYEE_ID, JOB_HISTORY.JOB_ID
FROM EMPLOYEES, JOB_HISTORY ;

SELECT E.EMPLOYEE_ID, J.JOB_ID
FROM EMPLOYEES E, JOB_HISTORY J ;