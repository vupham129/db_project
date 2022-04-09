/*
 Set operators: union, union all, intersect, minus

 for set operators to work:
    you need 2 independent queries
    same number of columns in select statement
    same data type in same order

 -- UNION: combines result sets of two or more SELECT statements into a single result set
            removes all duplicate rows unless the UNION all is used
        Select column1, column2 ... from Table1
        UNION
        Select column1, column2... from table2;

 -- MINUS: returns records from first query that is not presnet in second query
           WILL ONLY RETURN VALUES(FROM 1ST QUERY) THAT ARE NOT COMMON IN 2 QUERIES

-- INTERSECT: returns records that are present/common/appear in both query result
                will sort and remove duplicates

 */

create table Developers(

                           Id_Number Integer primary key,

                           Names varchar(30),

                           Salary Integer

);

create table Testers(

                        Id_Number Integer primary key,

                        Names varchar(30),

                        Salary Integer

);



insert all

    into developers values (1, 'Nurullah', 155000)

into developers values (2, 'Safwan', 142000)

into developers values (3, 'Erhan', 850000)

into developers values (4, 'Seyfo', 120000)

into testers values (1, 'Seyfo', 110000)

into testers values(2, 'Hakan', 105000)

into testers values (3, 'Ibrohim', 100000)

select * from dual;

commit work;

--SET OPERATORS:
    --UNION: REMOVES THE DUPLICATED ROWS, SORT IN ASCENDING ORDER
SELECT NAMES FROM DEVELOPERS
UNION
SELECT NAMES FROM TESTERS ; -- 6 ROWS, BECAUSE OF SEYFO NAME IS DUPLICATED

    -- UNION ALL: DOES NOT REMOVE DUPLICATED ROWS, AND DOES NOT SORT
SELECT NAMES FROM DEVELOPERS
UNION ALL
SELECT NAMES FROM TESTERS ; -- 7 ROWS


    --MINUS: SORT IN ASCENDING ORDER, DISPLAY ON THE DATA FROM FIRST QUERIES THAT NOT MATCHED
SELECT NAMES FROM DEVELOPERS
MINUS
SELECT NAMES FROM TESTERS ; -- 3 ROWS FROM DEVELOPERS TABLE

    --INTERSECT: returns the one that is matched from both queries, and sort and remove duplicates
SELECT NAMES FROM DEVELOPERS
INTERSECT
SELECT NAMES FROM TESTERS ; --1 ROW -- Seyfo