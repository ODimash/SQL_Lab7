
CREATE PROCEDURE GetOrdersByDate @OrderDate DATE
AS
BEGIN
    SELECT
        p.Name AS ProductName,
        soh.SalesOrderNumber,
        c.LastName + ' ' + c.FirstName AS CustomerName
    FROM
        SalesOrderDetail sod
    JOIN
        SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
    JOIN
        vIndividualCustomer c ON soh.CustomerID = c.CustomerID
    JOIN
        Product p ON sod.ProductID = p.ProductID
    WHERE
        soh.OrderDate = @OrderDate
END;

-- Execute the stored procedure
EXEC GetOrdersByDate '1998-01-01';
