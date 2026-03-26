-- ISNULL() - Replace NULL with a default 

USE TSQLMastery; 
GO


-- ISNULL(expression, replacement_value) is MSSQL-specific. 
--      The ANSI-standard equivalent is COALESCE() 
SELECT 
    FirstName, 
    LastName, 
    ISNULL(Department, 'Unassigned') AS Department
FROM dbo.Employees;
GO