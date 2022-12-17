CREATE TABLE [dbo].[Categories]
(
	[Id] UNIQUEIDENTIFIER NOT NULL default newid(),
    [Name] NVARCHAR(256) NOT NULL,
    [Description] NVARCHAR(512) NULL,
    [CreationDate] DATETIME NOT NULL,
    [UpdatedDate] DATETIME NULL,

    PRIMARY KEY(Id)
)