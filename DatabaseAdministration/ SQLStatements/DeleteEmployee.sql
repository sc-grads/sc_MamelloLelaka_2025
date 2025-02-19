USE EmployeeDB;
GO

-- Delete an employee by EmployeeID
DELETE FROM Employees 
WHERE EmployeeID = 2;
GO

-- Delete all employees with salary less than 50000
DELETE FROM Employees 
WHERE Salary < 50000;
GO
