---------------------------------------------------------------------
-- Block 1: Granting and Testing CONTROL Permission on Sales Schema
---------------------------------------------------------------------

-- Grant full control on the Sales schema to sqluser01.
GRANT CONTROL ON SCHEMA::Sales TO sqluser01;
GO

-- Impersonate sqluser01 to view effective permissions on the Sales schema.
EXECUTE AS USER = 'sqluser01';
    -- This returns the permissions that sqluser01 has on the Sales schema.
    SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');
REVERT;
GO

-- Revoke the CONTROL permission and deny the EXECUTE permission on Sales.
REVOKE CONTROL ON SCHEMA::Sales TO sqluser01;
DENY EXECUTE ON SCHEMA::Sales TO sqluser01;
GO

---------------------------------------------------------------------
-- Block 2: Granting CONTROL Permission and Querying a Table in Sales
---------------------------------------------------------------------

-- Grant CONTROL on the Sales schema to sqluser01 again.
GRANT CONTROL ON SCHEMA::Sales TO sqluser01;
GO

-- Impersonate sqluser01 and query the CreditCard table from the Sales schema.
EXECUTE AS USER = 'sqluser01';
    -- (Optional) Uncomment the next line to view effective permissions.
    -- SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');
    SELECT * FROM [Sales].[CreditCard];
REVERT;
GO

-- Revoke UPDATE on the Sales schema and deny EXECUTE permission.
REVOKE UPDATE ON SCHEMA::Sales TO sqluser01;
DENY EXECUTE ON SCHEMA::Sales TO sqluser01;
GO

---------------------------------------------------------------------
-- Block 3: Granting SELECT Permission on Sales Schema and Testing It
---------------------------------------------------------------------

-- Grant SELECT permission on the Sales schema to sqluser01.
GRANT SELECT ON SCHEMA::Sales TO sqluser01;
GO

-- Impersonate sqluser01 to view effective permissions (instead of selecting table data).
EXECUTE AS USER = 'sqluser01';
    SELECT * FROM fn_my_permissions ('Sales', 'SCHEMA');
    -- Alternatively, you could query data, e.g., SELECT * FROM [Sales].[CreditCard];
REVERT;
GO

-- Revoke UPDATE permission and deny SELECT on the Sales schema for sqluser01.
REVOKE UPDATE ON SCHEMA::Sales TO sqluser01;
DENY SELECT ON SCHEMA::Sales TO sqluser01;
GO