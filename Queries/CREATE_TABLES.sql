/*
 CUSTOMER TABLE COLUMNS :
    CustomerID
    CustomerName
    ContactName
    Address
    City
    PostalCode
    Country

    RELATED TO ORDERS TABLE BY CustomerID COLUMN

ORDERS TABLE COLUMNS :
    OrderID
    CustomerID
    EmployeeID
    OrderDate
    ShipperID

    RELATED TO CUSTOMER TABLE BY CustomerID COLUMN
    RELATED TO EMPLOYEES TABLE BY EmployeeID COLUMN
    RELATED TO ORDERDETAILS TABLE BY OrderID COLUMN
    RELATED TO SHIPPERS COLUMN BY ShipperID COLUMN

EMPLOYEES TABLE COLUMNS
    EmployeeID
    LastName
    FirstName
    BirthDate
    Photo
    Notes

     RELATED TO ORDERS TABLE BY EmployeeID COLUMN

ORDERDETAILS TABLE COLUMNS :
    OrderDetailID
    OrderID
    ProductID
    Quantity

    RELATED TO ORDERS TABLE BY OrderID COLUMN
    RELATED TO PRODUCTS TABLE BY ProductID COLUMN

PRODUCTS TABLE COLUMNS

    ProductID
    ProductName
    SupplierID
    CategoryID
    Unit
    Price

    RELATED TO SUPPLIER TABLE BY SupplierID COLUMN
    RELATED TO CATEGORIES TABLE BY CategoryID COLUMN

SHIPPERS TABLE COLUMNS
    ShipperID
    ShipperName
    Phone

    RELATED TO ORDERS TABLE BY ShipperID COLUMN

CATEGORIES TABLE COLUMNS
    CategoryID
    CategoryName
    Description

    RELATED TO PRODUCTS TABLE BY  CategoryID COLUMN
 */


--  CUSTOMER TABLE COLUMNS :

CREATE TABLE CUSTOMER_NEW(
    CUSTOMER_ID INTEGER PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(50) NOT NULL,
    CONTACT_NAME VARCHAR(50),
    ADDRESS VARCHAR(50), CITY VARCHAR(50), POSTAL_CODE INTEGER, COUNTRY VARCHAR(50)
);

/*
 ORDERS TABLE COLUMNS :
    OrderID
    CustomerID
    EmployeeID
    OrderDate
    ShipperID

    RELATED TO CUSTOMER TABLE BY CustomerID COLUMN
    RELATED TO EMPLOYEES TABLE BY EmployeeID COLUMN
    RELATED TO ORDERDETAILS TABLE BY OrderID COLUMN
    RELATED TO SHIPPERS COLUMN BY ShipperID COLUMN
 */
