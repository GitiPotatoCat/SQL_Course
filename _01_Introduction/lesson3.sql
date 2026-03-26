-- Insert Sample data 
USE TSQLMastery; 
GO

INSERT INTO dbo.Employees(
    EmployeeID, FirstName, LastName, 
    Department, Salary, HireDate, 
    IsActive
) VALUES 
    (1, 'Subham', 'Sinha', 'Engineering', 95000.00, '2019-03-15', 1), 
    (2, 'Baibhav', 'Raj', 'Marketing', 72000.00, '2020-07-01', 1), 
    (3, 'Chaitanya', 'Yadav', 'Engineering', 105000.00, '2017-11-20', 1), 
    (4, 'Dibyendu', 'Sarkar', 'HR', 65000.00, '2021-01-10', 0),  
    (5, 'Elikiya', 'Balasubhramanian', 'Marketing', 78000.00, '2018-05-22', 1), 
    (6, 'Ayesha', 'Pradhan', 'Marketing', 78000.00, '2022-09-05', 1), 
    (7, 'Amitesh', 'Gharai', NULL, 60000.00, '2023-02-14', 0), 
    (8, 'Alia', 'Chetan', 'HR', 67000.00, '2020-12-01', 0), 
    (9, 'Velraj', 'T', 'Engineering', 102000.00, '2017-05-04', 1), 
    (10, 'Mahima', 'Thakur', 'HR', 67000.00, '2020-12-01', 0);
