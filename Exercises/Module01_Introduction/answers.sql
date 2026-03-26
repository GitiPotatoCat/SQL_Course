USE TSQLMastery; 
GO

-- exercise 1 
SELECT 
    FirstName, 
    LastName, 
    HireDate
FROM dbo.Employees; 
GO 


-- exercise 2
SELECT 
    EmployeeID, 
    FirstName, 
    LastName, 
    Department
FROM dbo.Employees
    WHERE Department = 'HR'; 
GO 


-- exercise 3 
SELECT 
    EmployeeID, 
    LastName, 
    Department, 
    Salary, 
    IsActive
FROM dbo.Employees
    WHERE IsActive = 1
        AND 
        Salary > 75000; 
GO 


-- exercise 4 
SELECT 
    FirstName, 
    LastName, 
    Department
FROM dbo.Employees
    WHERE Department IS NULL; 
GO

SELECT 
    LastName, 
    ISNULL(Department, 'Not Assigned') AS Department
FROM dbo.Employees
    WHERE Department IS NULL; 
GO 


-- exercise 5
SELECT 
    EmployeeId      AS [EmpId],
    FirstName + ' ' + LastName      AS [FullName], 
    Salary      AS [Monthly Salary (₹)], 
    Salary * 12 * 0.10      AS [Bonus Amount (₹)], 
    Salary * 12 * 1.10      AS [YearlySalaryWithBonus(₹)]
FROM dbo.Employees; 
GO
