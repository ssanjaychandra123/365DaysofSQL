USE AdventureWorks2019; 

SELECT 
PEP.FirstName,
PEP.LastName,
FORMAT(SP.SalesYTD,'N0') AS YTDSales,
NTILE(3) OVER (ORDER BY SP.SalesYTD DESC) AS Bucket,
RANK() OVER(ORDER BY SP.SalesYTD DESC) AS FullRank,
FORMAT(ROUND(SP.SalesYTD,-6),'N0') AS Sales,
RANK() OVER(ORDER BY ROUND(SP.SalesYTD,-6) DESC) AS RoundedRank,
DENSE_RANK() OVER(ORDER BY ROUND(SP.SalesYTD,-6) DESC) AS RoundedDenseRank,
ROW_NUMBER() OVER(ORDER BY ROUND(SP.SalesYTD,-6) DESC) AS RowNum
FROM Sales.SalesPerson AS SP
LEFT JOIN Person.Person AS PEP
ON SP.BusinessEntityID = PEP.BusinessEntityID
WHERE TerritoryID IS NOT NULL 
ORDER BY YTDSales DESC 