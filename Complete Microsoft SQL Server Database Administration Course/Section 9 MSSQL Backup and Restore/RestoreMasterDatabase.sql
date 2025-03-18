-- #########################################################
-- BACKUP THE MASTER DATABASE
-- #########################################################

-- Back up the master database to disk. The options:
-- NOFORMAT, NOINIT: preserve existing backup media header information.
-- NAME: provides a logical name for the backup.
-- SKIP, NOREWIND, NOUNLOAD: specify behaviors for media management.
-- STATS = 10: report progress every 10%.
BACKUP DATABASE [master] 
TO DISK = N'C:\SQL_BACKUPS\master_backup.bak' 
WITH NOFORMAT, NOINIT,  
     NAME = N'master-Full Database Backup', 
     SKIP, NOREWIND, NOUNLOAD,  
     STATS = 10;
GO

-- #########################################################
-- RESTORE THE MASTER DATABASE
-- #########################################################

-- Restore the master database from the backup file.
-- The WITH REPLACE option forces the restore, replacing the existing master database.
RESTORE DATABASE master 
FROM DISK = 'C:\SQL_BACKUPS\master_backup.bak' 
WITH REPLACE;
GO

-- #########################################################
-- STOP AND RESTART THE SQL SERVER SERVICE WITH SPECIAL OPTIONS
-- #########################################################

-- The following commands (to be run from an elevated command prompt)
-- are not T-SQL commands, but Windows command line instructions.

-- Stop the SQL Server service.
net stop mssqlserver

-- Start the SQL Server service in single-user mode with minimal configuration.
-- The "/m" switch starts SQL Server in single-user mode, which is useful for maintenance.
net start mssqlserver /m

-- #########################################################
-- RESTORE A TEST VERSION OF THE MASTER DATABASE (master_recovery)
-- #########################################################

-- Restore a copy of the master database to a new database called master_recovery.
-- The MOVE option specifies the new physical file paths for the database and log files.
RESTORE DATABASE master_recovery 
FROM DISK = 'C:\SQL_BACKUPS\master_backup_testrestore.bak' 
WITH MOVE 'master' TO 'C:\master_recovery.mdf',
     MOVE 'mastlog' TO 'C:\mastlog_recovery.ldf';
GO

-- Note:
-- The provided comment below shows an example path where data files might be located.
-- C:\SQL_DATA_FILES\MSSQL13.MSSQLSERVER\MSSQL\DATA

-- #########################################################
-- DETACH THE RESTORED DATABASE (master_recovery)
-- #########################################################

USE [master];
GO

-- Detach the restored database master_recovery.
-- Detaching a database makes it unavailable to SQL Server without actually deleting the files.
EXEC master.dbo.sp_detach_db @dbname = N'master_recovery';
GO