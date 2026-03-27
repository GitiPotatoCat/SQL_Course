/*
    WHERE : Full Filter Toolkit 
        We see basic 'Where' in Module1. Here's the complete toolkit. 
*/
USE TSQLMastery; 
GO


-- Comparison Operators 

-- Equal 
SELECT 
    FirstName + ' ' + LastName      AS [Full Name], 
    Department, 
    Salary      AS [Monthly Salary (₹)]
FROM dbo.Employees 
    WHERE Salary = 78000;
GO 


-- Not equal (both syntaxes work in T-SQL: <> is ANSI standard) 
SELECT 
    CONCAT(FirstName, ' ', LastName)    AS [Full_Name], 
    Department
FROM dbo.Employees 
    WHERE Department <> 'Engineering';
GO 

/* 
Another way to do this: 

    SELECT 
        CONCAT(FirstName, ' ', LastName)    AS [Full_Name], 
        Department
    FROM dbo.Employees 
        WHERE Department != 'Engineering';
    GO 


NOTE: T-SQL MSSQL built-in method 'CONCAT()' is better to use 
    because it provides type safety. 

*/ 


-- Greater / less than 
SELECT 
    CONCAT(FirstName, ' ', LastName)        AS [Full_Name], 
    Department, 
    Salary      AS [Monthly Salary (₹)]
FROM dbo.Employees
    WHERE Salary > 100000; 
GO

SELECT 
    LastName, 
    Department, 
    HireDate, 
    IsActive
FROM dbo.Employees
    WHERE HireDate < '2018-01-01'; 
GO



-- =====================================================

-- AND/OR/NOT


-- AND: both conditions must be true 
SELECT 
    CONCAT(FirstName, ' ', LastName), 
    Department, 
    Salary
FROM dbo.Employees
    WHERE Department = 'Engineering'
        AND Salary > 95000; 
GO


-- OR: either condition must be true 
/*
    Operator precedence: 'AND' binds tighter than 'OR'. 
        Always use parentheses when mixing them - don't rely on precendence. 

    -- BUG: returns ALL Engineering employees + anyone in HR earning > 80k 
        (because AND binds first)

    SELECT 
        FirstName, Department, Salary 
    FROM dbo.Employees
        WHERE Department = 'Engineering'
            OR Department = 'HR' 
            AND Salary < 80000;
    
*/ 
-- CORRECT: use parenthesis to express actual intent 
SELECT 
    CONCAT(FirstName, ' ', LastName)    AS [Full_Name], 
    Department, 
    HireDate
FROM dbo.Employees
    WHERE (Department = 'HR' OR Department = 'Finance'); 


-- NOT: inverts a condition 
SELECT 
    FirstName, LastName, IsActive
FROM dbo.Employees 
    WHERE NOT IsActive = 1;     -- same as IsActive = 0 
GO

-- =========================================================

/* 
    IN - Match Against a List 
     Instead of chaining multiple 'OR' conditions: 
*/

-- Verbose way 
SELECT 
    CONCAT(FirstName, ' ', LastName)    AS [Full_Name], 
    Department
FROM dbo.Employees 
    WHERE Department = 'Engineering' 
        OR Department = 'Finance' 
        OR Department = 'HR';
GO


-- Clean way with IN 
SELECT EmployeeID, LastName, Department
FROM dbo.Employees 
    WHERE Department IN ('Engineering', 'Finance', 'HR'); 
GO 


-- NOT IN: exclude a list 
/*

    SELECT EmployeeID, LastName, Department
    FROM dbo.Employees 
        WHERE Department NOT IN ('HR', 'Marketing'); 
    GO


    NOTE: 
        NULL trap with NOT IN 
        If the list contains a NULL, 'NOT IN' returns no rows. 
        Always filter NULLs seperately when using 'NOT IN'. 

    
    Correct & Safe Ways to implement 'NOT IN' 
    Option 1: Explicitly Exclude NULLs 
    [
        WHERE Department IS NOT NULL
            AND Department NOT IN ('HR', 'Marketing'); 
    ]

    Options 2: USE NOT EXISTS (Best Practice)
    [
        WHERE NOT EXISTS (
            SELECT 1
            FROM (VALUES ('HR'), ('Marketing')) AS x(Dept)
                WHERE x.Dept = Employees.Department
        );
    ]
*/ 

SELECT EmployeeID, LastName, Department
FROM dbo.Employees 
    WHERE NOT EXISTS (
        SELECT 1 
        FROM (VALUES ('HR'), ('Marketing')) AS x(Dept) 
            WHERE x.Dept = dbo.Employees.Department
    );
GO

-- ============================================================= 

/*
    BETWEEN: Range Filtering 

    'BETWEEN a AND b' is inclusive: equivalent to '>= a AND <= b'. 
*/ 

-- Salary between 70k and 95k (inclusive on both ends) 
SELECT EmployeeID, LastName, Salary
FROM dbo.Employees
    WHERE Salary BETWEEN 70000 AND 95000; 
GO 


-- Date range 
SELECT EmployeeID, LastName, HireDate
FROM dbo.Employees 
    WHERE HireDate BETWEEN '2019-01-01' AND '2021-12-31'; 
GO 


-- NOT BETWEEN 
SELECT FirstName, Salary
FROM dbo.Employees 
    WHERE Salary NOT BETWEEN 70000 AND 90000; 
GO 

-- ====================================================== 

