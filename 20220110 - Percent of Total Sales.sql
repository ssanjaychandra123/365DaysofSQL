USE AdventureWorks2019; 

SELECT 
PEP.FirstName,
PEP.LastName,
FORMAT(SP.SalesYTD,'N0') AS Sales,
FORMAT(SUM(SP.SalesYTD) OVER(),'N0') AS SalesTotal,
FORMAT(100*SP.SalesYTD/SUM(SP.SalesYTD) OVER(),'0.00') + ' %' AS PercentSales
FROM Sales.SalesPerson AS SP
LEFT JOIN Person.Person AS PEP
ON SP.BusinessEntityID = PEP.BusinessEntityID
WHERE TerritoryID IS NOT NULL 
ORDER BY Sales DESC 