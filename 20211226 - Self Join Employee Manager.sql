CREATE TABLE #Employee (
EmployeeID int,
ManagerID int,
Title nvarchar(50));
INSERT INTO #Employee
VALUES (1, NULL, 'Chief Executive Officer');
INSERT INTO #Employee
VALUES (2, 1, 'Engineering Manager');
INSERT INTO #Employee
VALUES (3, 2, 'Senior Tool Designer');
INSERT INTO #Employee
VALUES (4, 2, 'Design Engineer');
INSERT INTO #Employee
VALUES (5, 2, 'Research and Development');
INSERT INTO #Employee
VALUES (6, 1, 'Marketing Manager');
INSERT INTO #Employee
VALUES (7, 6, 'Marketing Specialist');

SELECT a.EmployeeID AS Employee,
a.Title AS Employee_Name,
b.EmployeeID AS ManagerID,
b.Title AS Manager_Name
FROM #Employee AS a
LEFT OUTER JOIN #Employee AS b 
ON a.ManagerID = b.EmployeeID;
DROP TABLE #Employee;