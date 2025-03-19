-----------------------------------------------------------
-- Step 1: Verify Initial Data on Both Publisher and Subscriber
-----------------------------------------------------------

-- On the Subscriber:
PRINT 'Initial data from Subscriber (AdventureWorks2019_repl)...';
SELECT TOP (1000) [EmpID],
       [EmpName],
       [SalesNumber],
       [ItemSold]
FROM [AdventureWorks2019_repl].[dbo].[Sales];

-- On the Publisher:
PRINT 'Initial data from Publisher (AdventureWorks2019)...';
SELECT TOP (1000) [EmpID],
       [EmpName],
       [SalesNumber],
       [ItemSold]
FROM [AdventureWorks2019].[dbo].[Sales];

-----------------------------------------------------------
-- Step 2: First Update on Publisher and Verify Replication
-----------------------------------------------------------

-- Update a record on the Publisher:
PRINT 'Updating ItemSold to 2000 on Publisher...';
UPDATE [AdventureWorks2019].[dbo].[Sales]
SET ItemSold = 2000
WHERE EmpID = 3 AND SalesNumber = 8989;

-- Optional: Wait for replication to occur (adjust delay as needed)
WAITFOR DELAY '00:00:05';

-- Verify the update on the Subscriber:
PRINT 'Verifying updated data on Subscriber after first update...';
SELECT TOP (1000) [EmpID],
       [EmpName],
       [SalesNumber],
       [ItemSold]
FROM [AdventureWorks2019_repl].[dbo].[Sales];

-- Check the current date and time on the Publisher:
PRINT 'Current date and time on Publisher:';
SELECT GETDATE() AS [CurrentDateTime];

-----------------------------------------------------------
-- Step 3: Second Update on Publisher and Final Verification
-----------------------------------------------------------

-- Second update on the Publisher:
PRINT 'Updating ItemSold to 3000 on Publisher...';
UPDATE [AdventureWorks2019].[dbo].[Sales]
SET ItemSold = 3000
WHERE EmpID = 3 AND SalesNumber = 8989;

-- Optional: Wait for replication to occur
WAITFOR DELAY '00:00:05';

-- Verify on the Publisher:
PRINT 'Verifying final data on Publisher...';
SELECT TOP (1000) [EmpID],
       [EmpName],
       [SalesNumber],
       [ItemSold]
FROM [AdventureWorks2019].[dbo].[Sales];

-- Verify on the Subscriber:
PRINT 'Verifying final data on Subscriber...';
SELECT TOP (1000) [EmpID],
       [EmpName],
       [SalesNumber],
       [ItemSold]
FROM [AdventureWorks2019_repl].[dbo].[Sales];