-- Create my first table 
USE TSQLMastery; 
GO 

CREATE TABLE Employees (
    EmployeeID INT NOT NULL, 
    FirstName NVARCHAR(50) NOT NULL, 
    LastName NVARCHAR(50) NOT NULL, 
    Department NVARCHAR(50) NULL, 
    Salary DECIMAL(10, 2) NOT NULL, 
    HireDate DATE NOT NULL, 
    IsActive BIT NOT NULL DEFAULT 1
);
GO