
/*
 --     TABLE NAME. COLUMNNAME
 SELECT CUSTOMER.CUSTOMER_ID, FIRST NAME, LAST NAME, ADDRESS, PHONE
 FROM ADDRESS INNER JOIN CUSTOMER
 ON ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID ;
 --  PRIMARY KEY           FOREIGN KEY

    INNER JOIN PRODUCES ONLY THE SET OF RECORDS THAT MATCH IN BOTH TABLE CUSTOMER AND TABLE ADDRESS
 */

CREATE TABLE address(

                        address_id Integer PRIMARY KEY,
                        address VARCHAR(50) NOT NULL,
                        phone Integer NOT NULL

);


INSERT INTO address (address_id, address, phone) VALUES (5,  '1913 Hanoi Way'  ,  28303384);
INSERT INTO address (address_id, address, phone) VALUES (7,  '692 Joliet Street'  ,  44847719);
INSERT INTO address (address_id, address, phone) VALUES (8,  '1566 Inegl Manor'  ,  70581400);
INSERT INTO address (address_id, address, phone) VALUES (10,  '1795 Santiago '  ,  86045262);
INSERT INTO address (address_id, address, phone) VALUES (11,  '900 Santiago '  ,  16571220);


CREATE TABLE customer(

                         customer_id Integer PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50)NOT NULL,
                         address_id Integer REFERENCES address(address_id)

);


INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (1, 'Mary' ,  'Smith',  5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (2,  'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (3,  'Linda' ,  'Williams' ,  7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara' ,  'Jones' , 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (5,  'Elizabeth' ,  'Brown' ,  NULL);

SELECT * FROM CUSTOMER INNER JOIN ADDRESS
ON customer.address_id = address.address_id;

SELECT customer.address_id, customer.first_name, customer.last_name, address.address, address.phone
FROM CUSTOMER INNER JOIN ADDRESS
ON customer.address_id = address.address_id;

SELECT C.customer_id, C.first_name, C.last_name, A.address, A.phone
FROM CUSTOMER C INNER JOIN ADDRESS A
ON C.address_id = A.address_id;

SELECT C.COUNTRY_NAME, L.CITY
FROM LOCATIONS L INNER JOIN COUNTRIES C
ON L.COUNTRY_ID = C.COUNTRY_ID ;
;

-- INNER JOIN: RETURNS ONLY THE MATCHING RECORDS FROM THE TWO TABLES, AND TWO TABLES NEED TO BE RELATED

commit work;
