USE AdventureWorks2019;

SELECT
OrderQty,
CASE 
WHEN OrderQty<10 THEN 'Under 10'
WHEN OrderQty<20 THEN '10-19'
WHEN OrderQty<30 THEN '20-29'
WHEN OrderQty<40 THEN '30-39'
WHEN OrderQty>=40 THEN '40 and over'
END AS 'OrderQtyCalc'

FROM
Sales.SalesOrderDetail
ORDER BY OrderQty DESC 