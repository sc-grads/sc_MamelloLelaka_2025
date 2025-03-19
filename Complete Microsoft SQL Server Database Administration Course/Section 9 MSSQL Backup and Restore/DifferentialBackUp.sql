-- Create sample table for demonstration.
CREATE TABLE SQLBackupRestoreTest (
    ID INT NOT NULL PRIMARY KEY,
    loginname VARCHAR(100) NOT NULL,
    logindate DATETIME NOT NULL DEFAULT GETDATE()
)
GO

-- Insert rows representing changes after the full backup.
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (6, 'test6')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (7, 'test7')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (8, 'test8')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (9, 'test9')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (10, 'test10')

USE [master]
RESTORE DATABASE [AdventureWorks2019] 
    FROM DISK = N'C:\SQL_BACKUPS\AdventureWorks2019_diff_1.diff'
    WITH FILE = 1, NORECOVERY, NOUNLOAD, STATS = 5
GO