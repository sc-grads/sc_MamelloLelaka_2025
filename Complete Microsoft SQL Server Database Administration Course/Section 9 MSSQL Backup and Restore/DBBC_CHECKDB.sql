-- Check the integrity of the AdventureWorks2019 database.
DBCC CHECKDB('AdventureWorks2019');

-- Perform the integrity check without informational messages.
DBCC CHECKDB('AdventureWorks2019') WITH NO_INFOMSGS;

-- Switch the database to SINGLE_USER mode to prepare for repair.
-- ROLLBACK IMMEDIATE forces any active transactions to rollback immediately.
ALTER DATABASE AdventureWorks2019 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- Attempt to repair any corruption in the database.
-- REPAIR_ALLOW_DATA_LOSS may result in some data being removed if necessary.
DBCC CHECKDB('AdventureWorks2019', REPAIR_ALLOW_DATA_LOSS);
GO

-- Switch the database back to MULTI_USER mode for normal operation.
ALTER DATABASE AdventureWorks2019 SET MULTI_USER WITH ROLLBACK IMMEDIATE;
GO