create database scott;
GO

USE scott;
CREATE LOGIN scott WITH PASSWORD = 'tiger22$';
CREATE USER scott FOR LOGIN scott; 
ALTER USER scott WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE db_datareader ADD MEMBER scott;
ALTER ROLE db_datawriter ADD MEMBER scott;
GRANT CREATE VIEW TO scott;

create database vereinuser;
GO

USE vereinuser;
CREATE LOGIN vereinuser WITH PASSWORD = 'tiger22$';
CREATE USER vereinuser FOR LOGIN vereinuser; 
ALTER USER vereinuser WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE db_datareader ADD MEMBER vereinuser;
ALTER ROLE db_datawriter ADD MEMBER vereinuser;
GRANT CREATE VIEW TO vereinuser;