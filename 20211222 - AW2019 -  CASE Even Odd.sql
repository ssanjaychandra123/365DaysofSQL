USE AdventureWorks2019;

SELECT
BusinessEntityID,
CASE 
WHEN BusinessEntityID%2=0 THEN 'Even'
WHEN BusinessEntityID%2<>0 THEN 'Odd'
END AS 'Business_ID'
FROM
HumanResources.Employee