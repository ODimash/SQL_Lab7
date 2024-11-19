
-- Creating tables and inserting sample data for the lab tasks

-- Table: vIndividualCustomer
CREATE TABLE vIndividualCustomer (
    CustomerID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    AddressLine1 NVARCHAR(100),
    City NVARCHAR(50),
    StateProvinceName NVARCHAR(50),
    PostalCode NVARCHAR(20)
);

INSERT INTO vIndividualCustomer (CustomerID, FirstName, LastName, AddressLine1, City, StateProvinceName, PostalCode)
VALUES
(1, 'John', 'Doe', '123 Elm St', 'Somewhere', 'CA', '90001'),
(2, 'Jane', 'Smith', '456 Oak St', 'Somewhere', 'CA', '90002');

-- Table: SalesOrderHeader
CREATE TABLE SalesOrderHeader (
    SalesOrderID INT PRIMARY KEY,
    SalesOrderNumber NVARCHAR(25),
    OrderDate DATE,
    CustomerID INT,
    SalesPersonID INT
);

INSERT INTO SalesOrderHeader (SalesOrderID, SalesOrderNumber, OrderDate, CustomerID, SalesPersonID)
VALUES
(1, 'SO123', '2003-01-01', 1, 1),
(2, 'SO124', '2003-01-01', 2, 2);

-- Table: SalesOrderDetail
CREATE TABLE SalesOrderDetail (
    SalesOrderDetailID INT PRIMARY KEY,
    SalesOrderID INT,
    ProductID INT,
    UnitPrice DECIMAL(10, 2),
    OrderQty INT
);

INSERT INTO SalesOrderDetail (SalesOrderDetailID, SalesOrderID, ProductID, UnitPrice, OrderQty)
VALUES
(1, 1, 1, 100.00, 2),
(2, 2, 2, 150.00, 1);

-- Table: Product
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name NVARCHAR(100)
);

INSERT INTO Product (ProductID, Name)
VALUES
(1, 'Product A'),
(2, 'Product B');

-- Table: vEmployee
CREATE TABLE vEmployee (
    BusinessEntityID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    AddressLine1 NVARCHAR(100),
    City NVARCHAR(50),
    StateProvinceName NVARCHAR(50),
    PostalCode NVARCHAR(20)
);

INSERT INTO vEmployee (BusinessEntityID, FirstName, LastName, AddressLine1, City, StateProvinceName, PostalCode)
VALUES
(1, 'Alice', 'Johnson', '789 Pine St', 'Somewhere', 'CA', '90003'),
(2, 'Bob', 'Brown', '101 Maple St', 'Somewhere', 'CA', '90004');

-- Table: vVendor
CREATE TABLE vVendor (
    VendorID INT PRIMARY KEY,
    Name NVARCHAR(100),
    AddressLine1 NVARCHAR(100),
    City NVARCHAR(50),
    StateProvinceName NVARCHAR(50),
    PostalCode NVARCHAR(20)
);

INSERT INTO vVendor (VendorID, Name, AddressLine1, City, StateProvinceName, PostalCode)
VALUES
(1, 'Vendor A', '202 Birch St', 'Somewhere', 'CA', '90005'),
(2, 'Vendor B', '303 Cedar St', 'Somewhere', 'CA', '90006');
