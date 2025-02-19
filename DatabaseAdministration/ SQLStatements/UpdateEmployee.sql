-- Use the appropriate database
USE EmployeeDB;
GO

-- Update an employee's salary based on EmployeeID
UPDATE Employees 
SET Salary = 70000 
WHERE EmployeeID = 1;
GO

-- Update email for a specific employee
UPDATE Employees
SET Email = 'new.email@email.com'
WHERE FirstName = 'John' AND LastName = 'Doe';
GO
