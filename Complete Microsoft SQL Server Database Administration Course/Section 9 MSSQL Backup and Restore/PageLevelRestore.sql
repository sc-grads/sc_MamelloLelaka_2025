-- Use master database for administrative commands
USE master;
GO

-- Drop existing CorruptionTest database if it exists
DROP DATABASE IF EXISTS [CorruptionTest];
GO

-- Create a new database named CorruptionTest
CREATE DATABASE [CorruptionTest];
GO

-- Set the database recovery model to FULL
ALTER DATABASE [CorruptionTest] SET RECOVERY FULL;
GO

-- Enable page verification using CHECKSUM to detect page-level corruption
ALTER DATABASE [CorruptionTest] SET PAGE_VERIFY CHECKSUM;
GO

-- Create table for online (clean) data
CREATE TABLE [CorruptionTest].[dbo].[mssqltips_online]
(
    increment INT, 
    randomGUID UNIQUEIDENTIFIER, 
    randomValue INT, 
    BigCol CHAR(2000) DEFAULT 'a',
    INDEX CIX_MSSQLTips_increment1 UNIQUE CLUSTERED (increment)
);
GO

-- Create table to be used for corruption simulation
CREATE TABLE [CorruptionTest].[dbo].[mssqltips_corrupt]
(
    increment INT, 
    randomGUID UNIQUEIDENTIFIER, 
    randomValue INT, 
    BigCol CHAR(2000) DEFAULT 'a',
    INDEX CIX_MSSQLTips_increment1 UNIQUE CLUSTERED (increment)
);
GO

-- Insert 250,000 rows into both tables
SET NOCOUNT ON;
DECLARE @counter INT = 1;
BEGIN TRAN
   WHILE @counter <= 250000
   BEGIN
      INSERT INTO CorruptionTest.dbo.mssqltips_online (increment, randomGUID, randomValue) 
      VALUES (@counter, NEWID(), ABS(CHECKSUM(NEWID())) % 140000000);

      INSERT INTO CorruptionTest.dbo.mssqltips_corrupt (increment, randomGUID, randomValue)
      VALUES (@counter, NEWID(), ABS(CHECKSUM(NEWID())) % 140000000);

      SET @counter += 1;
   END;
COMMIT TRAN;
GO

-- Check database integrity (suppressing informational messages)
DBCC CHECKDB('CorruptionTest') WITH NO_INFOMSGS;
GO

-- Backup the database to disk with compression (adjust file path as needed)
BACKUP DATABASE [CorruptionTest] TO DISK = 'C:\SQL_BACKUPS\CorruptionTest_Full.BAK' WITH COMPRESSION;
GO

-- (Optional) Query data from tables.
-- Note: The table mssqltips is referenced below; ensure it exists or update the table name as required.
SELECT * FROM CorruptionTest.dbo.mssqltips;
SELECT * FROM CorruptionTest.dbo.mssqltips_online;
---------------------------------------------------

-- Display physical location information for rows in the corrupt table
SELECT TOP 10
   sys.fn_PhysLocFormatter(%%physloc%%) AS PageId,
   *
FROM [CorruptionTest].[dbo].[mssqltips_corrupt];
GO

-- Enable DBCC output trace flag so that DBCC PAGE output is returned to the client
DBCC TRACEON (3604);
GO

-- Display detailed information about a specific page (file 1, page 354)
DBCC PAGE ('CorruptionTest', 1, 354, 3);
GO

-- Convert a number to VARBINARY(8); used to verify page information
SELECT CONVERT(VARBINARY(8), 95868367);
GO
----------------------------------------------
-- Expected output (example): 0x05B6D5CF

-- Switch back to master for low-level page modification commands
USE master;
GO  

-- Set the database to SINGLE_USER mode to allow direct page modifications
ALTER DATABASE [CorruptionTest] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- Write directly to a page to simulate corruption:
-- Parameters: (database, file number, page number, offset, length, new data, action mode)
DBCC WRITEPAGE ('CorruptionTest', 1, 354, 2151, 4, 0xCFD5B605, 1);
GO

-- Return the database to MULTI_USER mode after modification
ALTER DATABASE [CorruptionTest] SET MULTI_USER;
GO

-- Query physical location and data from the mssqltips table after corruption (update table name if needed)
SELECT TOP 10
   sys.fn_PhysLocFormatter(%%physloc%%) AS PageId,
   *
FROM [CorruptionTest].[dbo].[mssqltips];
GO

-- Re-inspect the affected page to verify the corruption
DBCC PAGE ('CorruptionTest', 1, 354, 3);
GO