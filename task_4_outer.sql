
SELECT
    soh.SalesOrderNumber,
    p.Name AS ProductName,
    sod.UnitPrice,
    sod.OrderQty
FROM
    SalesOrderDetail sod
RIGHT JOIN
    SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
LEFT JOIN
    Product p ON sod.ProductID = p.ProductID;
