-- #############################################################
-- Query existing permissions for specific logins
-- #############################################################
-- This query returns the principal_id, name, state_desc, and permission_name
-- for the specified logins:LAPTOP-4KISL5TR\MamelloLelaka and sqluser01.
SELECT 
    pr.principal_id, 
    pr.name, 
    pe.state_desc, 
    pe.permission_name
FROM sys.server_principals pr 
INNER JOIN sys.server_permission pe
    ON pr.principal_id = pe.grantee_principal_id
WHERE pr.principal_id = SUSER_ID('LAPTOP-4KISL5TR\MamelloLelaka')
   OR pr.principal_id = SUSER_ID('sqluser01');
GO

-- #############################################################
-- Grant Impersonation Permissions
-- #############################################################
-- Grant the permission to impersonate any login to both LABMSSQL\winuser01 and sqluser01.
GRANT IMPERSONATE ANY LOGIN TO [LAPTOP-4KISL5TR\MamelloLelaka], sqluser01;
GO

-- #############################################################
-- Create and Configure a Server Role
-- #############################################################
-- Create a new server role called 'devops'.
CREATE SERVER ROLE devops;
GO

-- Grant the 'ALTER ANY DATABASE' permission to the devops role.
GRANT ALTER ANY DATABASE TO devops;
GO

-- Add LAPTOP-4KISL5TR\MamelloLelaka as a member of the devops role.
ALTER SERVER ROLE devops ADD MEMBER [LAPTOP-4KISL5TR\MamelloLelaka];
GO

-- #############################################################
-- Verify the Permissions of the Server Role
-- #############################################################
-- Query the permissions assigned to the 'devops' server role to verify its configuration.
SELECT 
    pe.state_desc, 
    pe.permission_name
FROM sys.server_principals pr 
INNER JOIN sys.server_permission pe  
    ON pr.principal_id = pe.grantee_principal_id
WHERE pr.principal_id = SUSER_ID('devops');
GO