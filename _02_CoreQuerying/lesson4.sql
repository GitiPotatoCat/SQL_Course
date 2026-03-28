-- ORDER BY : Sorting Results 

USE TSQLMastery; 
GO 


-- Sort by salary, highest first 
SELECT CONCAT(FirstName, ' ', LastName) AS [Full_Name] , Salary, Department
FROM dbo.Employees 
ORDER BY Salary DESC; 


-- Sort by department A-Z, then salary highest-first within each dept 
SELECT CONCAT(FirstName, ' ', LastName) AS [Full_Name], 
    Department, Salary
FROM dbo.Employees 
ORDER BY Department ASC, Salary DESC;
GO 


-- You can ORDER BY a column not in the SELECT list 
SELECT LastName, HireDate
FROM dbo.Employees 
ORDER BY HireDate ASC;
GO 


-- You can ORDER BY column position (not recommended in production - fragile) 
-- we called total 4 columns for section so upto call from (1 - 4) with ASC or DESC
SELECT FirstName, LastName, Salary, HireDate
FROM dbo.Employees
ORDER BY 4 DESC;    -- 4th column = HireDate 
GO 

SELECT EmployeeID, LastName, Salary
FROM dbo.Employees
ORDER BY 3 ASC;     -- 3rd column = Salary
GO


/*
    NOTES:

    Best practice: Always use column names, not positions, in 'ORDER BY'. 
        Positions break silently if someone reorders the 'SELECT' list. 
    
    Important: SQL Server does not guarantee row order unless you specify 
        'ORDER BY'. Never assume rows come back in insertion order. 
*/
