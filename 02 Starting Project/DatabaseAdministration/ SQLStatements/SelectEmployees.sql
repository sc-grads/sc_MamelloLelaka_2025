-- Use the appropriate database
USE EmployeeDB;
GO

-- Retrieve all employees
SELECT * FROM Employees;
GO

-- Retrieve specific columns (e.g., EmployeeID, Name, Email)
SELECT EmployeeID, FirstName, LastName, Email FROM Employees;
GO

-- Retrieve employees with salary greater than 50000
SELECT * FROM Employees WHERE Salary > 50000;
GO
