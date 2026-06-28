/*
    File: 001_server_information.sql
    Author: Michael Bather
    Purpose:
        Display key SQL Server instance information.
*/

SELECT @@VERSION AS SQLVersion;
GO

SELECT
    SERVERPROPERTY('MachineName')     AS MachineName,
    SERVERPROPERTY('ServerName')      AS ServerName,
    SERVERPROPERTY('Edition')         AS Edition,
    SERVERPROPERTY('ProductVersion')  AS ProductVersion,
    SERVERPROPERTY('ProductLevel')    AS ProductLevel;
GO

SELECT
    name,
    state_desc,
    recovery_model_desc
FROM sys.databases
ORDER BY name;
GO
