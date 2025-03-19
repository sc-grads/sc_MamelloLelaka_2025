------------------------------------------------------------------
-- Switch to the AdventureWorks2019 database
------------------------------------------------------------------
USE [AdventureWorks2019];
GO

------------------------------------------------------------------
-- Add logins as members of the database role [dbdev]
------------------------------------------------------------------
-- Add the login LAPTOP-4KISL5TR\MamelloLelaka to the role [dbdev]
ALTER ROLE [dbdev] ADD MEMBER [LAPTOP-4KISL5TR\MamelloLelaka];
GO

-- Add the login sqluser01 to the role [dbdev]
ALTER ROLE [dbdev] ADD MEMBER [sqluser01];
GO

------------------------------------------------------------------
-- Create a database user for the login sqluser01
------------------------------------------------------------------
USE [AdventureWorks2019];
GO

-- Create the user for login sqluser01 if it doesn't already exist.
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'sqluser01')
BEGIN
    CREATE USER [sqluser01] FOR LOGIN [sqluser01];
END;
GO

------------------------------------------------------------------
-- Query the permissions for the user sqluser01
------------------------------------------------------------------
SELECT 
    pe.state_desc, 
    pe.permission_name  
FROM sys.database_principals pr 
INNER JOIN sys.database_permissions pe  
    ON pr.principal_id = pe.grantee_principal_id 
WHERE pr.principal_id = USER_ID('sqluser01');
GO

------------------------------------------------------------------
-- Query the permissions for the user LAPTOP-4KISL5TR\MamelloLelaka
------------------------------------------------------------------
SELECT 
    pe.state_desc, 
    pe.permission_name  
FROM sys.database_principals pr 
INNER JOIN sys.database_permissions pe  
    ON pr.principal_id = pe.grantee_principal_id 
WHERE pr.principal_id = USER_ID('LAPTOP-4KISL5TR\MamelloLelaka');
GO