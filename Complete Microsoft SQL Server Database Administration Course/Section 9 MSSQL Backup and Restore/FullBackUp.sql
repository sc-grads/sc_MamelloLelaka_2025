-- Create sample table for demonstration.
CREATE TABLE SQLBackupRestoreTest (
    ID INT NOT NULL PRIMARY KEY,
    loginname VARCHAR(100) NOT NULL,
    logindate DATETIME NOT NULL DEFAULT GETDATE()
)
GO

-- Insert rows representing the state at the full backup.
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (1, 'test1')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (2, 'test2')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (3, 'test3')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (4, 'test4')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (5, 'test5')

USE [master]
RESTORE DATABASE [AdventureWorks2019] 
    FROM DISK = N'C:\SQL_BACKUPS\AdventureWorks2019_full.BAK'
    WITH FILE = 1, NORECOVERY, NOUNLOAD, STATS = 5
GO