CREATE TABLE [dbo].[TablesToProcess](
	[Id] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[IsActive] [bit] NULL,
	[S3Path] [nvarchar](1000) NULL,
	[RAWPath] [nvarchar](1000) NULL,
	[NotebookPath] [nvarchar](1000) NULL,
	[OUTPUTPATH] [nvarchar](1000) NULL,
	[S3FilePath] [nvarchar](1000) NULL,
	[Source] [varchar](100) NULL,
	[Load] [varchar](20) NULL,
	[Expression] [varchar](100) NULL,
	[KeyValue] [varchar](100) NULL,
	[JoinColumn] [varchar](100) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[Employee](
	[Personnel code] [varchar](100) NULL,
	[Personnel name] [varchar](100) NULL,
	[Personnel type] [varchar](100) NULL,
	[Geographic Area] [varchar](100) NULL,
	[English name] [varchar](100) NULL,
	[Mobile Phone] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Title] [varchar](100) NULL,
	[Remarks] [varchar](4000) NULL,
	[Note I] [varchar](100) NULL,
	[Note II] [varchar](100) NULL,
	[Note III] [varchar](100) NULL,
	[Note IIII] [varchar](100) NULL,
	[Submit time (Local)] [varchar](100) NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Employee_Stage](
	[Personnel code] [varchar](100) NULL,
	[Personnel name] [varchar](100) NULL,
	[Personnel type] [varchar](100) NULL,
	[Geographic Area] [varchar](100) NULL,
	[English name] [varchar](100) NULL,
	[Mobile Phone] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Title] [varchar](100) NULL,
	[Remarks] [varchar](4000) NULL,
	[Note I] [varchar](100) NULL,
	[Note II] [varchar](100) NULL,
	[Note III] [varchar](100) NULL,
	[Note IIII] [varchar](100) NULL,
	[Submit time (Local)] [varchar](100) NULL
) ON [PRIMARY]

Create Procedure [dbo].[Load_Employee]
AS

Truncate table dbo.Employee;

Insert Into dbo.Employee
Select * From dbo.Employee_Stage




Create Procedure [dbo].[TruncateTables]  @TableName varchar(300)
AS
Declare @SQLText Nvarchar(2000)

set @SQLText = 'Truncate Table dbo.'+@TableName

execute sp_executesql @SQLText