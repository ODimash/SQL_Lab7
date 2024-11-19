
SELECT
    e.FirstName + ' ' + e.LastName AS EmployeeName,
    p.Name AS ProductName
FROM
    vEmployee e
CROSS JOIN
    Product p;
