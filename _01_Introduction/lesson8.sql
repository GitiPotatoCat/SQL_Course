-- Column Aliases 
USE TSQLMastery; 
GO


SELECT 
    FirstName   AS [First Name], 
    LastName    AS [Last Name], 
    Salary      AS [Monthly Salary (₹)], 
    Salary * 12     AS [Annual Salary (₹)], 
    FORMAT(HireDate, 'dd-MMM-yyyy') AS [Desi Formatted Hire Date], 
    DATEDIFF(YEAR, HireDate, GETDATE()) AS [Years of Service], 
    COALESCE(Department, 'No Department Assigned') AS [Department Status]
FROM dbo.Employees;
GO
