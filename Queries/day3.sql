---------SQL JOIN-----------------
-- is used to get data from 2 or more tables that related to each other
-- PRIMARY KEY AND FOREIGN KEY RELATIONSHIP

-- inner join, left outer join, right outer join, full outer join

SELECT COUNTRY_NAME, REGION_NAME
FROM COUNTRIES C INNER JOIN REGIONS R
ON C.REGION_ID = R.REGION_ID ;