/* 
    LIKE: Pattern Matching 

    'LIKE' is for partial text matches. SQL Server uses these wildcards: 
*/ 

USE TSQLMastery; 
GO

-- Last name starts with 'M' 
SELECT LastName, Department
FROM dbo.Employees
    WHERE LastName LIKE 'M%'; 
GO


-- First name ends with 'a' 
SELECT FirstName, Department
FROM dbo.Employees 
    WHERE FirstName LIKE '%a';
GO


-- First name contains 'ar' 
SELECT FirstName
FROM dbo.Employees 
    WHERE FirstName LIKE '%ar%' 
GO 


-- First name is exactly 6 characters 
SELECT FirstName
FROM dbo.Employees 
    WHERE FirstName LIKE '______';     -- six underscroes 
GO 


-- Last name starts with J or M 
SELECT LastName
FROM dbo.Employees 
    WHERE LastName LIKE '[JM]%'; 

/*
    Performance Note:
        A leading '%' like '%something' cannot use an index - it forces 
        a full table scan. Avoid it on large tables whenever possible. 
*/