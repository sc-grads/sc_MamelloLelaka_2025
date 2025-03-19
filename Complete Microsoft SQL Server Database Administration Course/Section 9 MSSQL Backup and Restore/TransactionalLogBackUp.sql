-- Create sample table for demonstration.
CREATE TABLE SQLBackupRestoreTest (
    ID INT NOT NULL PRIMARY KEY,
    loginname VARCHAR(100) NOT NULL,
    logindate DATETIME NOT NULL DEFAULT GETDATE()
)
GO

-- Inserts simulating further transactions.
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (11, 'test11')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (12, 'test12')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (13, 'test13')

INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (14, 'test14')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (15, 'test15')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (16, 'test16')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (17, 'test17')

-- Later transactions (simulating a second transaction log backup batch)
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (114, 'test14')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (115, 'test15')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (116, 'test16')
INSERT INTO SQLBackupRestoreTest (ID, loginname) VALUES (117, 'test17')

-- Restore a transaction log backup.
RESTORE LOG [AdventureWorks2019] 
    FROM DISK = N'C:\SQL_BACKUPS\AdventureWorks2019_tran_3.trn'
    WITH FILE = 1, NORECOVERY, NOUNLOAD, STATS = 10
GO

-- In the alternate restore scenario with file relocation:
RESTORE LOG [AdventureWorks2019_RestoreTest]
    FROM DISK = N'C:\SQL_BACKUPS\AdventureWorks2019_tran_final.trn'
    WITH FILE = 1, NOUNLOAD, STATS = 10, 
         STOPAT = N'2025-03-18T08:54:23'
GO

RESTORE DATABASE [AdventureWorks2019_RestoreTest] WITH RECOVERY
GO