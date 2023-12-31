USE [master]
GO
/****** Object:  Database [TICKET_DAXPOLY]    Script Date: 10/10/2023 4:44:32 PM ******/
CREATE DATABASE [TICKET_DAXPOLY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TICKET_DAXPOLY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TICKET_DAXPOLY.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TICKET_DAXPOLY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TICKET_DAXPOLY_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TICKET_DAXPOLY] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TICKET_DAXPOLY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TICKET_DAXPOLY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET ARITHABORT OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET RECOVERY FULL 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET  MULTI_USER 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TICKET_DAXPOLY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TICKET_DAXPOLY] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TICKET_DAXPOLY', N'ON'
GO
USE [TICKET_DAXPOLY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 10/10/2023 4:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Brands]    Script Date: 10/10/2023 4:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Categories]    Script Date: 10/10/2023 4:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/10/2023 4:44:33 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 10/10/2023 4:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 10/10/2023 4:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Products]    Script Date: 10/10/2023 4:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 10/10/2023 4:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Roles]    Script Date: 10/10/2023 4:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'Dong', N'123', N'Ngo Truong Dong', N'Dong@gmail.com', NULL, 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'hoang', N'123', N'Nguyen Duy Hoang', N'hoang@gmail.com', NULL, 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'lam', N'123', N'Nguyen Tuan Lam', N'lamntps22778@gmail.com', NULL, 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'nguoidung', N'123', N'nguoidung', N'nguoidung@gmail.com', NULL, 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'Van', N'123', N'Phung Long Van', N'Van@gmail.com', NULL, 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'Vy', N'123', N'Ho Thi Thao Vy', N'Vy@gmail.com', NULL, 1)
GO
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'ALT', N'Alan Walker', N'alan.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'BP', N'Black Pink', N'Blackpick.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'BRZ', N'Marshmello', N'maselow.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'CO', N'DC', N'DC.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'Emmie', N'VN', N'vn.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'LRP', N'Kat', N'kat.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'MA', N'Marvel', N'marvel.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'OBG', N'Cat', N'cat.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'zak', N'BingBang', N'bingbang.jpg')
GO
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM01', N'Live Music')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM02', N'Meetups')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM03', N'Theater & Plays')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM04', N'Art & Culture')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM05', N'Courses')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM06', N'Conference')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM07', N'Sports')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM08', N'Movie')
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (6, 3, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (7, 4, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (10, 6, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (40, 45, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (41, 45, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (50, 50, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (52, 42, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (57, 0, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (58, 0, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (59, 1, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (60, 1, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (61, 6, N'DM04')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (62, 43, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (63, 44, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (64, 46, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (65, 46, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (66, 47, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (67, 48, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (68, 49, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (74, 55, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (75, 55, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (76, 56, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (77, 56, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (78, 57, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (79, 57, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (80, 58, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (81, 59, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (82, 60, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (83, 60, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (84, 61, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (85, 61, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (86, 62, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (87, 63, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (88, 64, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (89, 65, N'DM08')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (91, 66, N'DM08')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (0, N'WOW K-MUSIC FESTIVAL IN VIETNAM', 210000, CAST(N'2021-04-15' AS Date), 1, N'ALT', N'["alan.jpg","f9378f99.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (1, N'Born Pink', 350000, CAST(N'2021-04-15' AS Date), 1, N'BP', N'["blackpinkk.jpg","f9378f99.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (3, N'Ngày Chưa Giông Bão', 190000, CAST(N'2021-03-20' AS Date), 1, N'Emmie', N'["phanmanhquynh.jpg","49fee2ff.jpg","b5e67ba7.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (4, N'Trung Quân 15 Year', 350000, CAST(N'2021-03-20' AS Date), 1, N'Emmie', N'["trungquan.jpg","4d52083a.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (6, N'GENfest', 850000, CAST(N'2021-03-20' AS Date), 1, N'Emmie', N'["congnhac.jpg","123ca8be.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (42, N'Vòng Tròn Xanh', 37000, CAST(N'2021-03-22' AS Date), 1, N'Emmie', N'["Vongtronxanh.jpg","95d67864.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (43, N'BigBang', 322000, CAST(N'2022-04-10' AS Date), 1, N'zak', N'["bingbangvip.jpg","afd6bdfd.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (44, N'PinkVeNom', 218000, CAST(N'2021-04-15' AS Date), 1, N'BP', N'["pinkvemon.jpg","e6e4694c.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (45, N'Black Pink Movie', 650000, CAST(N'2021-04-15' AS Date), 1, N'BP', N'["blackpinkmovi.jpg","d14d6f27.png"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (46, N'Thor love & thunder', 1458000, CAST(N'2022-04-12' AS Date), 1, N'MA', N'["thor.jpg","cbb25b16.jpeg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (47, N'Wonder woman', 189000, CAST(N'2022-04-12' AS Date), 1, N'CO', N'["w.jpg","cbbe7516.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (48, N'Marshmello tour', 350000, CAST(N'2022-04-13' AS Date), 1, N'BRZ', N'["mas.jpg","c5e1bab8.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (49, N'Fat cat', 370000, CAST(N'2022-04-13' AS Date), 1, N'OBG', N'["cat.jpg","261888e8.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (50, N'Iron man', 318000, CAST(N'2022-04-14' AS Date), 1, N'MA', N'["iron.jpg","4114138.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (55, N'The Flash', 445000, CAST(N'2022-03-15' AS Date), 1, N'CO', N'["thef.jpg","15532ea3.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (56, N'Mono', 552000, CAST(N'2022-03-15' AS Date), 1, N'Emmie', N'["mono.jpg","b73998bd.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (57, N'Mono two', 280000, CAST(N'2022-03-15' AS Date), 1, N'Emmie', N'["mono2.jpg","c23ebc2f.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (58, N'G- Dragon BB ', 275000, CAST(N'2022-04-15' AS Date), 1, N'zak', N'["bingbanggr.jpg","c753c0ae.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (59, N'Captain Marvel', 320000, CAST(N'2022-04-15' AS Date), 1, N'MA', N'["captaim.jpg","cb07a1ec.PNG"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (60, N'Black Window', 1014000, CAST(N'2022-04-15' AS Date), 1, N'MA', N'["bl.jpg","9d80b35f.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (61, N'Wanda', 844000, CAST(N'2022-04-15' AS Date), 1, N'MA', N'["wanda.jpg","e7ffb48.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (62, N'Aquaman', 338000, CAST(N'2022-04-15' AS Date), 1, N'CO', N'["aqua.jpg","1b0c2f17.PNG"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (63, N'Superman vs Batman', 116000, CAST(N'2022-04-15' AS Date), 1, N'CO', N'["super.jpg","e76979f7.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (64, N'Aint man', 140000, CAST(N'2022-04-15' AS Date), 1, N'MA', N'["asmen.jpg","c3ca2887.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (65, N'WW84', 210000, CAST(N'2022-04-15' AS Date), 1, N'CO', N'["ww84.jpg","456bf2f5.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (66, N'Thor 3', 85000, CAST(N'2022-04-15' AS Date), 1, N'MA', N'["thor2.jpg","53456194.jpg"]')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleDetails] ON 

INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (22, N'Dong', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (23, N'hoang', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (24, N'lam', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (25, N'Van', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (26, N'Vy', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (27, N'nguoidung', N'staff')
SET IDENTITY_INSERT [dbo].[RoleDetails] OFF
GO
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'director', N'director')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'staff', N'staff')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'user', N'user')
GO
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
/****** Object:  StoredProcedure [dbo].[sp_ReportCost]    Script Date: 10/10/2023 4:44:33 PM ******/
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
USE [master]
GO
ALTER DATABASE [TICKET_DAXPOLY] SET  READ_WRITE 
GO
