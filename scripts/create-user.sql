USE [master];
GO

-- Criar login para o usuário
IF NOT EXISTS (SELECT name FROM sys.server_principals WHERE name = '${DB_USER}')
BEGIN
    CREATE LOGIN [${DB_USER}] WITH PASSWORD = '${DB_PASSWORD}';
END;
GO

-- Associar o login ao banco de dados
USE [${DB_NAME}];
GO

IF NOT EXISTS (SELECT name FROM sys.database_principals WHERE name = '${DB_USER}')
BEGIN
    CREATE USER [${DB_USER}] FOR LOGIN [${DB_USER}];
    EXEC sp_addrolemember N'db_owner', N'${DB_USER}';
END;
GO
