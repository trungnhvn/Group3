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