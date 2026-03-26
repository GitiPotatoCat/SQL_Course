-- Filter with 'WHERE' keyword 

USE TSQLMastery; 
GO


-- Only for Engineering employees 
SELECT 
    FirstName, 
    LastName, 
    Department, 
    Salary
    FROM dbo.Employees
        WHERE Department = 'Engineering';
GO


-- Employees earning more than 1,00,000 rupees 
SELECT 
    FirstName, 
    LastName, 
    Department, 
    Salary
    FROM dbo.Employees 
        WHERE Salary > 100000; 
GO


-- Active Engineering employees 
SELECT 
    FirstName, 
    LastName, 
    Department, 
    HireDate, 
    IsActive
    FROM dbo.Employees 
        WHERE IsActive = 1;
GO