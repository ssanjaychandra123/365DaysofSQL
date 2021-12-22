USE AdventureWorks2019;

SELECT 
FirstName,
LastName,
PersonType
FROM Person.Person
ORDER BY 
CASE 
WHEN PersonType IN ('IN','SP','SC') THEN LastName
ELSE FirstName END 