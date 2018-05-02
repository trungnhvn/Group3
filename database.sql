CREATE TABLE [dbo].[tblSetting](
	[STKEY] [nvarchar](30) NOT NULL PRIMARY KEY,
	[VALUE] [ntext] NULL,
)

CREATE TABLE [dbo].[tblUser](
	[User_Acount] NVARCHAR(200) NOT NULL PRIMARY KEY,
	[User_pass] NVARCHAR(200) NOT NULL,
	[User_email] NVARCHAR(200) NULL,
	[User_fullname] NVARCHAR(200) NULL,
	[User_birthday] DATETIME NULL,
	[User_sex] BIT NULL,
	[User_power] NVARCHAR(200) NOT NULL,
	[User_date] DATETIME NULL
)

INSERT INTO [dbo].[tblUser]([User_Acount],[User_pass],[User_power],[User_date]) VALUES ('admin','123','Admin',GETDATE())

CREATE TABLE [dbo].[tblCategory](
	[Cat_Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Cat_Name] NVARCHAR(500) NOT NULL,
	[Cat_Note] NTEXT NULL,
	[Cat_Paren]	INT NULL,
	[User_Acount] NVARCHAR(200) NOT NULL FOREIGN KEY REFERENCES tblUser(User_Acount),
	[Cat_date] DATETIME NULL
)

CREATE TABLE [dbo].[tblNews](
	[News_Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[News_Title] NVARCHAR(500) NOT NULL,
	[News_Description] NVARCHAR(500) NULL,
	[News_Content] NTEXT NULL,
	[News_Image] NVARCHAR(500) NULL,
	[Cat_Id]	INT NULL,
	[News_Status] INT NOT NULL,
	[User_Acount] NVARCHAR(200) NOT NULL FOREIGN KEY REFERENCES tblUser(User_Acount),
	[News_EditBy] NVARCHAR(200) NULL FOREIGN KEY REFERENCES tblUser(User_Acount),
	[News_EditDate] DATETIME NULL,
	[News_Date] DATETIME NULL
)

CREATE TABLE [dbo].[tblMenu](
	[Menu_Id]		INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Menu_Name]		NVARCHAR(500) NOT NULL,
	[Menu_Paren]	INT NULL,
	[Menu_Type]		INT NOT NULL,
	[Menu_Link]		NVARCHAR(500) NULL,
	[ShotOder]		INT NOT NULL
)