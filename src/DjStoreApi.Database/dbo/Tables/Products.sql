CREATE TABLE [dbo].[Products]
(
    [Id] UNIQUEIDENTIFIER NOT NULL default newid(),
    [CategoryId] UNIQUEIDENTIFIER NOT NULL,
    [SupplierId] UNIQUEIDENTIFIER NOT NULL,
    [Name] NVARCHAR(256) NOT NULL,
    [Brand] NVARCHAR(100) NOT NULL,
    [Model] NVARCHAR(100) NOT NULL,
    [Color] NVARCHAR(20) NOT NULL,
    [UnitsInStock] INTEGER NOT NULL,
    [Price] DECIMAL(10,2) NOT NULL,
    [Description] NVARCHAR(4000) NOT NULL,
    [CreationDate] DATETIME NOT NULL,
    [UpdatedDate] DATETIME NULL,
    [IsDeleted] BIT NOT NULL,
    [DeletedDate] DATETIME NULL,

    PRIMARY KEY(Id),
    FOREIGN KEY(CategoryId) REFERENCES Categories(Id),
    FOREIGN KEY(SupplierId) REFERENCES Suppliers(Id),
)