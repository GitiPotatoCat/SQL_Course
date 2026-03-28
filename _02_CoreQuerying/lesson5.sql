/*
    TOP : Limited Rows Returned 

    'TOP' is SQL Server's way to limit result rows (other databases use 'LIMIT'). 
*/ 

USE TSQLMastery;
GO

-- Top 5 highest-paid employees 
SELECT TOP 5 
    CONCAT(FirstName, ' ', LastName) AS [Full_Name], 
    Salary
FROM dbo.Employees 
ORDER BY Salary DESC; 
GO 


-- Top 10 pecent 
SELECT TOP 10 PERCENT FirstName, Salary 
FROM dbo.Employees 
ORDER BY Salary DESC; 
GO 


-- TOP WITH TIES: includes extra rows if they tie for the last position 
SELECT TOP 2 WITH TIES LastName, Salary
FROM dbo.Employees 
ORDER BY Salary DESC
GO

SELECT TOP 4 WITH TIES FirstName, Salary 
FROM dbo.Employees 
ORDER BY Salary DESC; 
GO 

/*
    TOP 'number' WITH TIES 
    It includes extra row position if it ties with #2 position. 
    You can see the TIES example of 2 and 4. 
    For calling the '2' still it includes an extra row because 
    it ties with second highest at #2. 


    'TOP' without 'ORDER BY' is non-deterministic - you get random rows. Always pair 
    'TOP' with 'ORDER BY'. 
*/ 
