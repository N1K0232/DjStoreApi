CREATE TABLE [dbo].[Suppliers]
(
	[Id] UNIQUEIDENTIFIER NOT NULL default newid(),
    [ContactName] NVARCHAR(100) NOT NULL,
    [CompanyName] NVARCHAR(100) NOT NULL,
    [City] NVARCHAR(50) NOT NULL,
    [CreationDate] DATETIME NOT NULL,
    [UpdatedDate] DATETIME NULL,

    PRIMARY KEY(Id)
)