-- ORDER BY : Sorting Results 

USE TSQLMastery; 
GO 


-- Sort by salary, highest first 
SELECT CONCAT(FirstName, ' ', LastName) AS [Full_Name] , Salary, Department
FROM dbo.Employees 
ORDER BY Salary DESC; 


-- Sort by department A-Z, then salary highest-first within each dept 
SELECT FirstName
FROM dbo.Employees 
ORDER BY Department ASC, Salary DESC;