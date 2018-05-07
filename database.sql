CREATE TABLE [dbo].[tblSetting](
	[STKEY] [nvarchar](30) NOT NULL PRIMARY KEY,
	[VALUE] [ntext] NULL,
)
INSERT [dbo].[tblSetting] ([STKEY], [VALUE]) VALUES (N'Name', N'THE coffee')
INSERT [dbo].[tblSetting] ([STKEY], [VALUE]) VALUES (N'Addren', N'Thành phố Vinh - Tỉnh Nghệ An')
INSERT [dbo].[tblSetting] ([STKEY], [VALUE]) VALUES (N'Email', N'thecoffee@gmail.com')
INSERT [dbo].[tblSetting] ([STKEY], [VALUE]) VALUES (N'Phone', N'(+84)1234.123456')


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
INSERT [dbo].[tblCategory] ([Cat_Name], [Cat_Note], [Cat_Paren], [User_Acount]) VALUES (N'Tin tức', N'', 0, N'admin')
INSERT [dbo].[tblCategory] ([Cat_Name], [Cat_Note], [Cat_Paren], [User_Acount]) VALUES (N'Sản phẩm', N'', 0, N'admin')
INSERT [dbo].[tblCategory] ([Cat_Name], [Cat_Note], [Cat_Paren], [User_Acount]) VALUES (N'Dịch vụ', N'', 0, N'admin')


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
INSERT [dbo].[tblNews] ([News_Title], [News_Description], [News_Content], [News_Image], [Cat_Id], [News_Status], [User_Acount], [News_EditBy], [News_EditDate], [News_Date]) VALUES (N'Cà phê nói gì?', N'Cà phê nói gì?
Đừng nên hâm nóng lại cà phê. Mỗi lần bạn pha, cà phê cần phải tươi mới. Chỉ pha vừa đủ để bạn uống lúc đó mà thôi. 
Cuộc sống nói gì?
Đừng hâm lại quá khứ. Quá khứ là chuyện đã rồi, chứ không phải là một lời bào chữa. Hãy để những chuyện quá khứ thuộc về quá khứ.', N'', N'/images/images/mbr-1080x720.jpg', 2, 0, N'admin', N'admin', CAST(N'2018-05-07 16:23:33.683' AS DateTime), CAST(N'2018-05-03 19:59:10.847' AS DateTime))

INSERT [dbo].[tblNews] ( [News_Title], [News_Description], [News_Content], [News_Image], [Cat_Id], [News_Status], [User_Acount], [News_EditBy], [News_EditDate], [News_Date]) VALUES ( N'Cuộc đời là của bạn, để nếm trải', N'“Một tách cà phê uống vào buổi sáng mang lại sự hưng phấn tuyệt vời mà không một tách cà phê nào khác dù là buổi chiều hoặc buổi tối có thể tạo ra được” 
Hãy bảo đảm cà phê bạn uống luôn luôn tươi mới.', N'<p>fgbfbg</p>
', N'/images/images/mbr-1080x720.jpg', 2, 0, N'admin', N'admin', CAST(N'2018-05-07 16:23:23.457' AS DateTime), CAST(N'2018-05-03 20:00:53.433' AS DateTime))

INSERT [dbo].[tblNews] ( [News_Title], [News_Description], [News_Content], [News_Image], [Cat_Id], [News_Status], [User_Acount], [News_EditBy], [News_EditDate], [News_Date]) VALUES (N'Cho niềm đam mê, nghệ thuật và chất lượng.', N'Một tách cà phê đậm đà của THE coffee khởi nguồn từ những vườn cà phê trĩu hạt. Sau mỗi vụ thu hoạch, từng hạt cà phê được chúng tôi chọn lựa kỹ càng bằng “tay”. Đội ngũ công nhân của chúng tôi có trách nhiệm đảm bảo chỉ những hạt cà phê nguyên liệu tốt nhất.', N'', N'/images/images/mbr-1080x720.jpg', 2, 0, N'admin', N'admin', CAST(N'2018-05-07 16:22:32.080' AS DateTime), CAST(N'2018-05-07 16:13:35.533' AS DateTime))



CREATE TABLE [dbo].[tblProduct](
	[Product_Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Product_Name] NVARCHAR(500) NOT NULL,
	[Product_Description] NVARCHAR(500) NULL,
	[Product_Component] NVARCHAR(500) NULL,
	[Product_Content] NTEXT NULL,
	[Product_Image] NVARCHAR(500) NULL,
	[Product_Price] NVARCHAR(100) NULL,
	[Cat_Id]	INT NULL,
	[Product_Status] INT NOT NULL,
	[User_Acount] NVARCHAR(200) NOT NULL FOREIGN KEY REFERENCES tblUser(User_Acount),
	[Product_EditBy] NVARCHAR(200) NULL FOREIGN KEY REFERENCES tblUser(User_Acount),
	[Product_EditDate] DATETIME NULL,
	[Product_Date] DATETIME NULL
)
INSERT [dbo].[tblProduct] ([Product_Name], [Product_Description], [Product_Component], [Product_Content], [Product_Image], [Product_Price], [Cat_Id], [Product_Status], [User_Acount], [Product_EditBy], [Product_EditDate], [Product_Date]) VALUES ( N'Coffee Latte', N'Coffee latte thực chất được làm chính từ espresso và sữa. Nếu người “thưởng thức” không thật sành sẽ rất hay nhầm lẫn vị của Latte với Cappuccino bởi cả hai đều có 3 thành phần cơ bản: coffee, espresso, sữa nóng và bọt sữa. Tuy nhiên ở Cappuccino người ta cho lượng sữa nóng có thể tương đương so với bọt sữa còn ở Cafe Latte lại chứa 1/3 espresso, 1/3 sữa và 1/3 bọt sữa.', N'f fg nf', N'<p>dbaefb</p>', N'/images/images/mbr-676x451.jpg', N'35.000 VNĐ', 4, 0, N'admin', N'admin', CAST(N'2018-05-07 17:02:58.410' AS DateTime), CAST(N'2018-05-05 10:34:37.260' AS DateTime))

INSERT [dbo].[tblProduct] ([Product_Name], [Product_Description], [Product_Component], [Product_Content], [Product_Image], [Product_Price], [Cat_Id], [Product_Status], [User_Acount], [Product_EditBy], [Product_EditDate], [Product_Date]) VALUES ( N'Coffee Latte', N'Coffee latte thực chất được làm chính từ espresso và sữa. Nếu người “thưởng thức” không thật sành sẽ rất hay nhầm lẫn vị của Latte với Cappuccino bởi cả hai đều có 3 thành phần cơ bản: coffee, espresso, sữa nóng và bọt sữa. Tuy nhiên ở Cappuccino người ta cho lượng sữa nóng có thể tương đương so với bọt sữa còn ở Cafe Latte lại chứa 1/3 espresso, 1/3 sữa và 1/3 bọt sữa.', N'', N'', N'/images/images/mbr-676x451.jpg', N'35.000 VNĐ', 4, 0, N'admin', NULL, CAST(N'2018-05-07 17:03:57.377' AS DateTime), CAST(N'2018-05-07 17:03:57.377' AS DateTime))


CREATE TABLE [dbo].[tblMenu](
	[Menu_Id]		INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Menu_Name]		NVARCHAR(500) NOT NULL,
	[Menu_Paren]	INT NULL,
	[Menu_Type]		INT NOT NULL,
	[Menu_Link]		NVARCHAR(500) NULL,
	[ShotOder]		INT NOT NULL
)

INSERT [dbo].[tblMenu] ([Menu_Name], [Menu_Paren], [Menu_Type], [Menu_Link], [ShotOder]) VALUES ( N'Trang chủ', 0, 1, N'0', 0)
INSERT [dbo].[tblMenu] ([Menu_Name], [Menu_Paren], [Menu_Type], [Menu_Link], [ShotOder]) VALUES ( N'Tin tức', 0, 1, N'1', 1)
INSERT [dbo].[tblMenu] ([Menu_Name], [Menu_Paren], [Menu_Type], [Menu_Link], [ShotOder]) VALUES ( N'Sản phẩm', 0, 1, N'2', 2)
INSERT [dbo].[tblMenu] ([Menu_Name], [Menu_Paren], [Menu_Type], [Menu_Link], [ShotOder]) VALUES ( N'Liên hệ', 0, 1, N'3', 3)


CREATE TABLE [dbo].[tblPhoto](
	[Photo_Id]			INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Photo_Name]		NVARCHAR(500) NOT NULL,
	[Photo_Description]	NTEXT NULL,
	[Photo_Url]			NVARCHAR(500) NOT NULL,
	[Photo_Link]		NVARCHAR(500) NOT NULL,
	[Photo_Group]		NVARCHAR(50) NOT NULL,
	[Photo_Date]		DATETIME NULL,
	[ShotOder]			INT NOT NULL
) 

CREATE TABLE [dbo].[tblContact](
	[Contact_Id]			INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Contact_Name]			NVARCHAR(100) NOT NULL,
	[Contact_Description]	NTEXT NULL,
	[Contact_Phone]			NVARCHAR(20) NULL,
	[Contact_Email]			NVARCHAR(100) NULL,
	[Contact_Status]		INT NOT NULL,
	[Contact_Note]			NTEXT NULL,
	[Contact_Date]			DATETIME NULL
) 