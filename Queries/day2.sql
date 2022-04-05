
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









