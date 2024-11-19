
SELECT DISTINCT
    c.LastName + ' ' + c.FirstName AS CustomerName,
    soh.SalesOrderNumber,
    soh.OrderDate
FROM
    vIndividualCustomer c
JOIN
    SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
WHERE
    soh.OrderDate >= '2003-01-01';
