USE [PS19246_NguyenHoangPhuc_JAVA5]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[fullname] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[photo] [varchar](50) NULL,
	[activated] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brands](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [char](4) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[orderId] [int] NULL,
	[productId] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[username] [varchar](50) NULL,
	[createDate] [date] NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[productId] [int] NULL,
	[categoryId] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[price] [float] NULL,
	[createDate] [date] NULL,
	[available] [bit] NULL,
	[brandId] [varchar](10) NULL,
	[images] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleDetails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[accountId] [varchar](50) NULL,
	[roleId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[role] [varchar](10) NOT NULL,
	[description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'bqdinh', N'123456', N'Đinh Quốc Bảo', N'bqdinh@gmail.com', N'93539b97.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'diemntn', N'123', N'Nguyễn Thị Ngọc Diễm', N'diemntn@fpt.edu.vn', N'13883fe2.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'lannt', N'123', N'Nguyễn Thị Lan', N'lannt@gmail.com', N'logo.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'linhnk', N'123456', N'Ngô Khánh Linh', N'linhnk@gmail.com', N'71497417.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'phucnh', N'714379', N'Nguyễn Hoàng Phúc', N'phucnguyenhoang769@gmail.com', N'95f87bbd.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'test', N'123', N'test', N'test@gmail.com', N'logo.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'thiant', N'123', N'Ngô Thị Anh Thi', N'thiant@gmail.com', N'522005a0.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'thunt', N'123456', N'Nguyễn Trang Thư', N'thunt@gmail.com', NULL, 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'tuanth', N'123', N'Tạ Hoàng Tuấn', N'tuanth@gmail.com', N'logo.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'vietdvn', N'123456', N'Đoàn Văn Nhật Việt', N'vietdvn@gmail.com', NULL, 1)
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'AL', N'Alcom', N'4ce4059f.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'ALT', N'Altruist', N'a47ea647.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'BRZ', N'Dermarium', N'dc57e2c3.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'CO', N'Cocoon', N'65dd48d9.png')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'Emmie', N'Emmie By Happy Skin', N'6f4aef1.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'GAL', N'Galderma', N'd53f7c97.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'LRP', N'La roche Posay', N'5d0d1c9c.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'ME', N'Menarini', N'982c4f41.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'OBG', N'Obagi', N'c722e100.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'zak', N'Zakka', N'1569d13c.png')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM01', N'Tẩy trang')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM02', N'Sữa rửa mặt')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM03', N'Toner - Xịt khoáng')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM04', N'Đặc trị')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM05', N'Serum')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM06', N'Kem dưỡng')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM07', N'Mặt nạ')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM08', N'Kem chống nắng')
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (0, 8, 60, 1014000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (1, 8, 1, 350000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (2, 9, 59, 320000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (3, 9, 62, 338000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (4, 10, 63, 116000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (5, 10, 65, 210000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (6, 10, 50, 318000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (7, 11, 6, 210000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (8, 11, 42, 37000, 3)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (9, 12, 48, 350000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (10, 12, 46, 1458000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (11, 13, 56, 552000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (12, 13, 4, 350000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (13, 13, 1, 350000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (14, 14, 48, 350000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (15, 15, 0, 210000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (16, 15, 42, 37000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (17, 15, 6, 850000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (18, 15, 48, 350000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (19, 16, 47, 189000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (20, 17, 57, 280000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (21, 17, 55, 445000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (22, 18, 48, 350000, 2)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (23, 18, 50, 318000, 2)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (24, 18, 0, 210000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (25, 18, 3, 190000, 2)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (26, 18, 6, 850000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (27, 19, 6, 850000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (28, 19, 63, 116000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (29, 19, 66, 85000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (30, 20, 42, 37000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (31, 20, 43, 322000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (32, 20, 48, 350000, 2)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (33, 20, 50, 318000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (34, 20, 0, 210000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (35, 20, 3, 190000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (36, 21, 46, 1458000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (37, 22, 59, 320000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (38, 22, 60, 1014000, 2)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (39, 23, 1, 350000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (40, 23, 3, 190000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (41, 24, 3, 190000, 2)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (42, 24, 42, 37000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (43, 25, 1, 350000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (44, 25, 3, 190000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (45, 25, 42, 37000, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (8, N'linhnk', CAST(N'2022-06-08' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (9, N'phucnh', CAST(N'2022-06-09' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (10, N'vietdvn', CAST(N'2022-06-10' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (11, N'vietdvn', CAST(N'2022-06-11' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (12, N'vietdvn', CAST(N'2022-06-11' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (13, N'thunt', CAST(N'2022-06-12' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (14, N'thunt', CAST(N'2022-06-12' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (15, N'bqdinh', CAST(N'2022-06-14' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (16, N'bqdinh', CAST(N'2022-06-15' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (17, N'bqdinh', CAST(N'2022-06-16' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (18, N'diemntn', CAST(N'2022-06-17' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (19, N'thiant', CAST(N'2022-06-17' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (20, N'lannt', CAST(N'2022-06-17' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (21, N'phucnh', CAST(N'2022-06-18' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (22, N'phucnh', CAST(N'2022-06-18' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (23, N'phucnh', CAST(N'2022-06-18' AS Date), N'99 Điện Biên Phủ')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (24, N'bqdinh', CAST(N'2022-06-18' AS Date), N'103 Huỳnh Tấn Phát')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (25, N'thiant', CAST(N'2022-06-18' AS Date), N'103 Huỳnh Tấn Phát')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (6, 3, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (7, 4, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (10, 6, N'DM05')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (40, 45, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (41, 45, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (50, 50, N'DM06')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (52, 42, N'DM07')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (57, 0, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (58, 0, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (59, 1, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (60, 1, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (61, 6, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (62, 43, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (63, 44, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (64, 46, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (65, 46, N'DM06')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (66, 47, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (67, 48, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (68, 49, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (74, 55, N'DM05')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (75, 55, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (76, 56, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (77, 56, N'DM05')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (78, 57, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (79, 57, N'DM07')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (80, 58, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (81, 59, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (82, 60, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (83, 60, N'DM05')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (84, 61, N'DM05')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (85, 61, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (86, 62, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (87, 63, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (88, 64, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (89, 65, N'DM05')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (91, 66, N'DM04')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (0, N'BHA Tricky Duet', 210000, CAST(N'2021-04-15' AS Date), 1, N'BRZ', N'["fe4e6b99.jpg","1ff6f8b1.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (1, N'AHA Rough Love', 350000, CAST(N'2021-04-15' AS Date), 1, N'BRZ', N'["95f43f64.jpg","f9378f99.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (3, N'Good Night Cleanser', 190000, CAST(N'2021-03-20' AS Date), 1, N'BRZ', N'["c439b11e.jpg","49fee2ff.jpg","b5e67ba7.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (4, N'Fairy Water', 350000, CAST(N'2021-03-20' AS Date), 1, N'BRZ', N'["c34b8e68.jpg","4d52083a.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (6, N'Omnipotent', 850000, CAST(N'2021-03-20' AS Date), 1, N'BRZ', N'["dfb4e8ec.jpg","123ca8be.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (42, N'Mặt Nạ Emmié by Happy Skin B5 Complex', 37000, CAST(N'2021-03-22' AS Date), 1, N'Emmie', N'["62c5848c.jpg","95d67864.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (43, N'Nước Thần Emmié by Happy Skin Brightening Plumping Solution Essence', 322000, CAST(N'2022-04-10' AS Date), 1, N'Emmie', N'["9953761.jpg","afd6bdfd.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (44, N'Gel Rửa Mặt Emmié by Happy Skin Soothing & Hydrating Derma Cleansing Gel', 218000, CAST(N'2021-04-15' AS Date), 1, N'Emmie', N'["257366a9.jpg","e6e4694c.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (45, N'Obagi BHA 2%', 650000, CAST(N'2021-04-15' AS Date), 1, N'OBG', N'["7202c86a.png","d14d6f27.png"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (46, N'Obagi Retinol 0.5%', 1458000, CAST(N'2022-04-12' AS Date), 1, N'OBG', N'["48873d63.jpg","cbb25b16.jpeg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (47, N'Kem chống nắng Altruist SPF 50', 189000, CAST(N'2022-04-12' AS Date), 1, N'ALT', N'["dc83a420.jpg","cbbe7516.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (48, N'Kem chống nắng La roche Posay Anthelios Invisible Fluid', 350000, CAST(N'2022-04-13' AS Date), 1, N'LRP', N'["b797b44e.jpg","c5e1bab8.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (49, N'La Roche Posay Anthelios Anti-Shine Dry Touch Gel Cream SPF 50+', 370000, CAST(N'2022-04-13' AS Date), 1, N'LRP', N'["8b1c902d.webp","261888e8.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (50, N'Kem dưỡng ẩm phục hồi B5 Complex', 318000, CAST(N'2022-04-14' AS Date), 1, N'Emmie', N'["13cb9960.jpg","4114138.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (55, N'Serum Vitamin C Zakka Naturals Glow Fruit Brightening', 445000, CAST(N'2022-03-15' AS Date), 1, N'zak', N'["68a1e12d.jpg","15532ea3.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (56, N'(Serum) B3 Zakka Naturals Revival Ampoule Anti Blemish 10% Niacinamide + NAG', 552000, CAST(N'2022-03-15' AS Date), 1, N'zak', N'["5d33aa51.jpg","b73998bd.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (57, N'Mặt Nạ Giảm Mụn, Gom Cồi Và Ngăn Ngừa Mụn Hinoki Acne Mask Zakka Naturals', 280000, CAST(N'2022-03-15' AS Date), 1, N'zak', N'["66b82d85.jpg","c23ebc2f.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (58, N'Toner (Nước Cân Bằng) Hoa Cúc Zakka Naturals Calendula & Honey Balancing', 275000, CAST(N'2022-04-15' AS Date), 1, N'zak', N'["fba867db.jpg","c753c0ae.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (59, N'Zakka Naturals Chiết Xuất Tảo Biển Lên Men Fermented Sea Kelp Moisturizing Essence', 320000, CAST(N'2022-04-15' AS Date), 1, N'zak', N'["fef54f15.PNG","cb07a1ec.PNG"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (60, N'La Roche-Posay Pure Vitamin C10 Serum', 1014000, CAST(N'2022-04-15' AS Date), 1, N'LRP', N'["652d2a68.jpg","9d80b35f.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (61, N'La Roche-Posay  Retinol B3 Serum', 844000, CAST(N'2022-04-15' AS Date), 1, N'LRP', N'["604cb3e7.jpg","e7ffb48.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (62, N'Altruist Face Fluid SPF50 UVA 50ml', 338000, CAST(N'2022-04-15' AS Date), 1, N'ALT', N'["4c5907c.PNG","1b0c2f17.PNG"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (63, N'Cà Phê Đắk Lắk Cocoon Làm Sạch Da Chết Cho Mặt 150ml', 116000, CAST(N'2022-04-15' AS Date), 1, N'CO', N'["a621c30.jpg","e76979f7.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (64, N'Nước Cân Bằng Cocoon Chiết Xuất Bí Đao 140ml', 140000, CAST(N'2022-04-15' AS Date), 1, N'CO', N'["73104d40.jpg","c3ca2887.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (65, N'Tinh Chất Bí Đao Cocoon Làm Giảm Mụn, Mờ Thâm 70ml', 210000, CAST(N'2022-04-15' AS Date), 1, N'CO', N'["301cf20e.jpg","456bf2f5.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (66, N'Dung Dịch Chấm Mụn Cocoon Chiết Xuất Bí Đao 5ml', 85000, CAST(N'2022-04-15' AS Date), 1, N'CO', N'["1708e069.jpg","53456194.jpg"]')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[RoleDetails] ON 

INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (0, N'phucnh', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (4, N'bqdinh', N'staff')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (6, N'linhnk', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (7, N'thunt', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (11, N'vietdvn', N'staff')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (12, N'thiant', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (13, N'diemntn', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (14, N'tuanth', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (15, N'lannt', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (16, N'test', N'user')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (17, N'phucnh', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (18, N'phucnh', N'director')
SET IDENTITY_INSERT [dbo].[RoleDetails] OFF
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'director', N'director')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'staff', N'staff')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'user', N'user')
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([brandId])
REFERENCES [dbo].[Brands] ([id])
GO
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([role])
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportCost]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ReportCost] (@month INT)
AS BEGIN
SELECT 
			convert(varchar(10), o.createDate, 103) AS NgayBan,		
			COUNT(DISTINCT o.id) AS TongHoaDon,
			SUM(od.quantity * od.price) AS DoanhThu
FROM Orders o, OrderDetails od  WHERE o.id = od.orderId AND MONTH(o.createDate) = @month
GROUP BY createDate
END
GO
