USE AdventureWorks2019;

SELECT SalesPersonID, SalesYTD, SalesOrderID, PEP.FirstName, PEP.LastName
FROM Sales.SalesPerson as P
LEFT OUTER JOIN Sales.SalesOrderHeader AS S
ON  P.BusinessEntityID = S.SalesPersonID
LEFT OUTER JOIN Person.Person as PEP
ON P.BusinessEntityID = PEP.BusinessEntityID 