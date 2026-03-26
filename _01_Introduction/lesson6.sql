-- NULL Handling Basics 
USE TSQLMastery; 
GO

-- WRONG: This returns nothing, even though Amitesh has NULL department 
SELECT * FROM dbo.Employees 
    WHERE Department = NULL; 
GO

-- CORRECT: Use IS NULL 
SELECT * FROM dbo.Employees 
    WHERE Department IS NULL; 
GO

-- Find everyone WITH a department 
SELECT 
    FirstName, 
    LastName, 
    Department, 
    HireDate, 
    IsActive
    FROM dbo.Employees 
        WHERE Department IS NOT NULL; 
GO