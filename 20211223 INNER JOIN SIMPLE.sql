USE AdventureWorks2019; 

SELECT HRE.JobTitle, HRE.BirthDate, PEP.FirstName, PEP.LastName
FROM HumanResources.Employee AS HRE
INNER JOIN Person.Person AS PEP
ON HRE.BusinessEntityID = PEP.BusinessEntityID