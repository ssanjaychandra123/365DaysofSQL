USE AdventureWorks2019;

SELECT PEP.FirstName, PEP.MiddleName, PEP.LastName, SSOH.SalesOrderID ,SSP.SalesQuota, SSP.Bonus
FROM Sales.SalesOrderHeader AS SSOH
INNER JOIN Sales.SalesPerson AS SSP
ON SSOH.SalesPersonID = SSP.BusinessEntityID
INNER JOIN Person.Person AS PEP
ON SSOH.SalesPersonID = PEP.BusinessEntityID 