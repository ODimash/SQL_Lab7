
SELECT
    soh.SalesOrderNumber,
    p.Name AS ProductName,
    sod.UnitPrice,
    sod.OrderQty
FROM
    SalesOrderDetail sod
JOIN
    SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
JOIN
    Product p ON sod.ProductID = p.ProductID;
