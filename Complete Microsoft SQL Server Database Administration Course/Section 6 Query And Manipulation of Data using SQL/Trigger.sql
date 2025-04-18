SELECT TOP (1000) [EmpName],
       [EmpTitle],
       [EmpID]
FROM [AdventureWorks2019].[dbo].[Employee]

-----------------------------------------------------
CREATE TABLE [dbo].[EmployeeTriggerHistory](
    [ID] [int] NULL,
    [Statement] [nchar](10) NULL
) ON [PRIMARY]
GO

select * from [dbo].[EmployeeTriggerHistory]
-----------------------------------------------

CREATE TRIGGER [dbo].[EmployeeInsert] 
   ON  [dbo].[Employee] 
   AFTER INSERT
AS 
BEGIN
    -- SET NOCOUNT ON prevents extra result sets from interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for trigger here:
    Insert into EmployeeTriggerHistory 
    values ((select max(EmpID) from employee),'Insert')
END
GO

-------------------------------------------
-- Option 2: Provide a value for EmpID on insert:
insert into [Employee] ([EmpID], [EmpName],[EmpTitle]) 
values (101, 'Qasim','Area Manager')
---------------------------------

select * from [dbo].[EmployeeTriggerHistory]
------------------------------