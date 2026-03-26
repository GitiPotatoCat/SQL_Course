-- Select Everything 
USE TSQLMastery; 
GO 


SELECT * FROM dbo.Employees; 
GO 


-- Best practice: In production always 'name your columns' explicitly
--      because it's faster and prevents bugs when table structure changes. 
SELECT 
    FirstName, LastName, 
    Department, HireDate 
    FROM dbo.Employees; 
GO