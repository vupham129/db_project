SELECT * FROM COUNTRIES ;
select * from DEPARTMENTS ;
select DEPARTMENT_NAME from DEPARTMENTS;
/*
 select two columns in same table
 */
select DEPARTMENT_NAME, DEPARTMENT_ID from DEPARTMENTS;
select * from EMPLOYEES;
select * from DEPARTMENTS;

/*
 select two Tables or more
 */
select * from EMPLOYEES, DEPARTMENTS;
/*
 select one column from one table, one column from another table
 */
select EMPLOYEES.EMPLOYEE_ID, DEPARTMENTS.DEPARTMENT_ID from EMPLOYEES, DEPARTMENTS;
/*
 distinct keyword: only display the result without the duplicates
 */

select distinct DEPARTMENT_ID from DEPARTMENTS;
select distinct SALARY from EMPLOYEES;
select distinct MAX_SALARY from JOBS;

/*
 where clause: used as the filter option
 select column(s) from Table(s) where Conditions;
 Operators: >, <, >=, <=, =, !=, or, and
 */
select * from EMPLOYEES;
/*
 display the employee has salary less than 5000
 */
 select * from EMPLOYEES where SALARY < 5000;

select * from EMPLOYEES where SALARY < 5000 and MANAGER_ID = 114;

/*
 between statement: used for specifying the range of the condition
        value between Lowest and highest;
 */
select * from DEPARTMENTS where LOCATION_ID between 1800 and 2400;
select * from EMPLOYEES where SALARY between 3500 and 5000;

/*
 in statement: used for specifying the range of the condition
        within ()
        value in ();
 */
select * from EMPLOYEES where DEPARTMENT_ID in (60,30,110);

select * from COUNTRIES where REGION_ID in (1,4);

/*
 Like statement: partial search
        starts with: Chars%
        ends with: %Chars
        contains: %chars%
 syntax:
    select Column(s) from table(s) where value Like WildCard;
 */

 -- starts with:
select * from COUNTRIES where COUNTRY_NAME like 'A%';
select * from COUNTRIES where COUNTRY_NAME like 'Au%';

-- ends with:
select count(COUNTRY_NAME) over () from COUNTRIES where COUNTRY_NAME like '%a';

-- starts with and ends with:
select count(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like 'A%' and COUNTRY_NAME like '%a'   ;

--contains:
select COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like '%b%';


