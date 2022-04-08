/*
 Aggregate Functions:
    min() : selects the min value from the column
            select min(columnName) from TableName;
    max() : selects the max value from the column
            select max(columnName) from TableName;
    avg(): selects the average value from the column
            select avg(columnName) from TableName;
    sum(): returns the sum of all values
            select sum(columnName) from TableName;
 -------------------------------------------------
 count():
        select count(columnName) from TableName where Condition;

 round(): USED FOR DECIMAL FORMAT
        select Round(avg(columnName), 2) from tableName;

*/

--MIN():
SELECT MIN(SALARY)
FROM EMPLOYEES ;

SELECT MIN(LOCATION_ID)
FROM DEPARTMENTS ; --1400

SELECT * FROM DEPARTMENTS WHERE LOCATION_ID = 1400 ;

SELECT * FROM DEPARTMENTS
WHERE LOCATION_ID = ( SELECT MIN(LOCATION_ID) FROM DEPARTMENTS) ;

--MAX():
SELECT MAX(LOCATION_ID)
FROM DEPARTMENTS ; --2700

SELECT * FROM DEPARTMENTS
WHERE LOCATION_ID = ( SELECT MAX(LOCATION_ID) FROM DEPARTMENTS) ;

SELECT * FROM DEPARTMENTS WHERE LOCATION_ID = 2700 ;

SELECT MAX(SALARY)
FROM EMPLOYEES ;

SELECT *
FROM EMPLOYEES
WHERE SALARY = ( SELECT MAX(SALARY) FROM EMPLOYEES);

SELECT *
FROM EMPLOYEES
WHERE SALARY = ( SELECT MIN(SALARY) FROM EMPLOYEES);

-- AVG() AND SUM() :
SELECT ROUND( AVG(SALARY), 2)
FROM EMPLOYEES ;

SELECT SUM(SALARY)
FROM EMPLOYEES ; --RETURN THE SUM OF VALUE

--COUNT():
SELECT COUNT(*)
FROM EMPLOYEES WHERE MANAGER_ID = 100; --14

SELECT COUNT(*)
FROM EMPLOYEES WHERE SALARY < 10000; -- NUMBER OF EMPLOYEES THAT ARE MAKING LESS THAN 10000