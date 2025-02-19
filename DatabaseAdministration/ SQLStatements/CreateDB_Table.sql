CREATE DATABASE EmployeeDB;
GO

-- Use the newly created database
USE EmployeeDB;
GO

-- Create a table to store employee details
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key
    FirstName NVARCHAR(50) NOT NULL, 
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE, 
    Salary DECIMAL(10,2) CHECK (Salary > 0), -- Ensuring salary is positive
    HireDate DATE DEFAULT GETDATE() -- Default to the current date
);
GO
