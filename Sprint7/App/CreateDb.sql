USE [MountainDb]
GO

IF OBJECT_ID(N'dbo.File', N'U') IS NULL
BEGIN 
    CREATE TABLE [dbo].[Files](
        [File_id]           [int]           IDENTITY NOT NULL PRIMARY KEY,
        [File_name]         [nvarchar](20)  NOT NULL UNIQUE,
        [File_n_columns]    [int]           NOT NULL,  
        [File_n_rows]       [int]           NOT NULL,       
    )
END

IF OBJECT_ID(N'DataPoint', N'U') IS NULL
BEGIN   
    CREATE TABLE [dbo].[DataPoints](
        [DataPoint_id]          [int]           IDENTITY(1,1) NOT NULL PRIMARY KEY,
        [DataPoint_elevation]   [float]         NOT NULL,
        [DataPoint_base_color]  [nvarchar](20)  NOT NULL,
        [File_id]               [int]           NOT NULL FOREIGN KEY REFERENCES [dbo].[Files](File_id)
    )
END

USE [MountainDb]
GO