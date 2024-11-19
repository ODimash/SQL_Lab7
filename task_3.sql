
SELECT
    soh.SalesOrderNumber,
    c.LastName + ' ' + c.FirstName AS CustomerName,
    e.LastName + ' ' + e.FirstName AS EmployeeName
FROM
    SalesOrderHeader soh
JOIN
    vIndividualCustomer c ON soh.CustomerID = c.CustomerID
JOIN
    vEmployee e ON soh.SalesPersonID = e.BusinessEntityID;
