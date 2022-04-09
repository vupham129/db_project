/*
 LEFT OUTER JOIN: produces a complete set of records from table customer, with the matching records
 (where available) in table address. if there is no match, the right side will contain null
    syntax: select customer_id, first_name, last_name, address, phone
            from customer left outer join address
            on customer.address_id = address.address_id ;
 --> matching will be combined, the rest no matching will be null

 -- left outer join with where:
    -> to produce the set of records only in customer table, but not in address table, we perform the same
 left outer join,

 RIGHT OUTER JOIN: produces a complete set of record from table address, with the matching records
 (where available) in table customer. If there is no match, left side will contain null
        syntax: select customer_id, first_name, last_name, address, phone
            from customer right outer join address
            on customer.address_id = address.address_id ;
-- right outer join with where:
    -> to produce the set of records only in address table, but not in customer table, we perform the same
right outer join,

 FULL OUTER JOIN: produces the set of all records in table customer and table address with matching records
 from both sides where available. if there is no match, the missing side will contain null
    syntax: select customer_id, first_name, last_name, address, phone
            from customer full outer join address
            on customer.address_id = address.address_id ;
-- full outer join with where:
    -> to produce the set of records unique to Customer table and address table, we perform the same
 full outer join, then exclude the records we dont want from both sides via where clause

 SELF JOIN: joining the table to itself
    syntax: select Columns from Table1 a join Table1 b on a.key = b.key ;
 */

 -- left outer join
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID ; -- everything

-- left outer join with where: returns the none matching records from left table
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID
where A.ADDRESS_ID is null ;-- not matching

select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID
where A.ADDRESS_ID is not null ; -- matching only

-- right outer join
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C right outer join ADDRESS A
 on C.ADDRESS_ID = A.ADDRESS_ID ; -- everything

-- right outer join with where: returns the none matching records from left table
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C right outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID
where C.ADDRESS_ID is null ;-- not matching


-- full outer join:
select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C full outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID ; -- 7 rows: 3 rows matching, 2 rows right outer join, 2 rows left outer join

select C.CUSTOMER_ID, C.FIRST_NAME, C.LAST_NAME, A.ADDRESS, A.PHONE
from CUSTOMER C full outer join ADDRESS A
 on C.ADDRESS_ID = A.ADDRESS_ID
where C.ADDRESS_ID is null or A.ADDRESS_ID is null ; -- 4 rows: 2 rows right outer join, 2 rows left outer join

--SELF JOIN:
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES ;

select e1.EMPLOYEE_ID, e1.FIRST_NAME, e1.LAST_NAME, e1.MANAGER_ID, e2.FIRST_NAME, e2.LAST_NAME
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID;

select  e2.FIRST_NAME ||' '|| e2.LAST_NAME as "MANAGER_FULL_NAME"
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
group by  e2.FIRST_NAME ||' '|| e2.LAST_NAME; -- 18 rows -- manager full name

select  e2.FIRST_NAME ||' '|| e2.LAST_NAME as "MANAGER_FULL_NAME", count(*)
from EMPLOYEES e1 join EMPLOYEES e2
on e1.MANAGER_ID = e2.EMPLOYEE_ID
group by  e2.FIRST_NAME ||' '|| e2.LAST_NAME;
