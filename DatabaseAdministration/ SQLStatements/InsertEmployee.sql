-- Use the appropriate database
USE EmployeeDB;
GO

-- Insert a new employee into the Employees table
INSERT INTO Employees (FirstName, LastName, Email, Salary)
VALUES ('John', 'Doe', 'john.doe@email.com', 60000);
GO

-- Insert multiple employees
INSERT INTO Employees (FirstName, LastName, Email, Salary)
VALUES 
    ('Jane', 'Smith', 'jane.smith@email.com', 75000),
    ('Robert', 'Brown', 'robert.brown@email.com', 55000);
GO
