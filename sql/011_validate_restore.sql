USE AdventureWorks2022;
GO

SELECT
    DB_NAME() AS DatabaseName,
    DATABASEPROPERTYEX(DB_NAME(), 'Status') AS DatabaseStatus,
    DATABASEPROPERTYEX(DB_NAME(), 'Recovery') AS RecoveryModel,
    DATABASEPROPERTYEX(DB_NAME(), 'Version') AS Version;
GO

SELECT
    COUNT(*) AS NumberOfTables
FROM sys.tables;
GO

SELECT TOP (10)
    Name
FROM Person.Person
ORDER BY Name;
GO

DBCC CHECKDB ('AdventureWorks2022')
WITH NO_INFOMSGS;
GO