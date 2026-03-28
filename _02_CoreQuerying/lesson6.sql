/* 
    OFFSET/FETCH - Proper Pagination 

    'TOP' can't do "page 2". For real pagination, use 'OFFSET'/ 'FETCH' - the modern SQL Server 
    standard (SQL Server 2012+). 
*/ 

USE TSQLMastery; 
GO


-- Page 1: rows 1-5 
SELECT 
    CONCAT(FirstName, ' ', LastName) AS [Full_Name], 
    Department, 
    Salary
FROM dbo.Employees 
ORDER BY EmployeeID 
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY; 
GO


-- Page 2: rows 6-10 
SELECT 
    CONCAT(FirstName, ' ', LastName) AS [Full_Name], 
    Department, 
    Salary
FROM dbo.Employees 
ORDER BY EmployeeID 
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY; 
GO 


-- Page 3: rows 11-15 
SELECT 
    CONCAT(FirstName, ' ', LastName) AS [Full_Name], 
    Department, 
    Salary
FROM dbo.Employees 
ORDER BY EmployeeID 
OFFSET 10 ROWS 
FETCH NEXT 5 ROWS ONLY;
GO