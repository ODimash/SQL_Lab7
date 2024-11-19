
SELECT
    c.LastName + ' ' + c.FirstName AS CustomerName,
    c.AddressLine1 + ', ' + c.City + ', ' + c.StateProvinceName + ', ' + c.PostalCode AS CustomerAddress
FROM
    vIndividualCustomer c

UNION ALL

SELECT
    v.Name AS VendorName,
    v.AddressLine1 + ', ' + v.City + ', ' + v.StateProvinceName + ', ' + v.PostalCode AS VendorAddress
FROM
    vVendor v

UNION ALL

SELECT
    e.LastName + ' ' + e.FirstName AS EmployeeName,
    e.AddressLine1 + ', ' + e.City + ', ' + e.StateProvinceName + ', ' + e.PostalCode AS EmployeeAddress
FROM
    vEmployee e;
