USE AdventureWorks2019;

SELECT PEP.FirstName, PEP.LastName, SC.TerritoryID, SC.StoreID, SC.CustomerID, SOH.SalesOrderID
FROM Sales.Customer AS SC
INNER JOIN Person.Person AS PEP
ON SC.PersonID = PEP.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader AS SOH 
ON SC.CustomerID = SOH.CustomerID