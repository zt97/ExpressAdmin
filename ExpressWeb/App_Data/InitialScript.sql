USE [master]
GO
/****** Object:  Database [Express]    Script Date: 5018/6/50 10:26:51 ******/
CREATE DATABASE [Express]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Express', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Express.mdf' , SIZE = 5150KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Express_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Express_log.ldf' , SIZE = 1280KB , MAXSIZE = 5048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Express] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Express].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Express] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Express] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Express] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Express] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Express] SET ARITHABORT OFF 
GO
ALTER DATABASE [Express] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Express] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Express] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Express] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Express] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Express] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Express] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Express] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Express] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Express] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Express] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Express] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Express] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Express] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Express] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Express] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Express] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Express] SET RECOVERY FULL 
GO
ALTER DATABASE [Express] SET  MULTI_USER 
GO
ALTER DATABASE [Express] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Express] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Express] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Express] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Express] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Express', N'ON'
GO
USE [Express]
GO
/****** Object:  Table [dbo].[authconfig]    Script Date: 5018/6/50 10:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authconfig](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employeeid] [int] NOT NULL DEFAULT ((0)),
	[menuid] [int] NOT NULL DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cityarea]    Script Date: 5018/6/50 10:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cityarea](
	[areaid] [int] IDENTITY(1,1) NOT NULL,
	[areaprovince] [nvarchar](255) NOT NULL,
	[areacity] [nvarchar](255) NOT NULL,
	[areapostcode] [nvarchar](50) NOT NULL,
	[created] [nvarchar](20) NOT NULL,
	[created_time] [datetime] NULL,
	[updated] [nvarchar](20) NOT NULL,
	[updated_time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee]    Script Date: 5018/6/50 10:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employeeaccount] [nvarchar](20) NOT NULL DEFAULT (''),
	[employeename] [nvarchar](20) NOT NULL DEFAULT (''),
	[employeepwd] [nvarchar](50) NOT NULL DEFAULT (''),
	[employeedesc] [nvarchar](max) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[goodrelation]    Script Date: 5018/6/50 10:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goodrelation](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[originalname] [nvarchar](255) NOT NULL,
	[taxnumber] [nvarchar](50) NOT NULL,
	[newname1] [nvarchar](255) NOT NULL,
	[newname2] [nvarchar](255) NOT NULL,
	[newname3] [nvarchar](255) NOT NULL,
	[newname4] [nvarchar](255) NOT NULL,
	[newname5] [nvarchar](255) NOT NULL,
	[newname6] [nvarchar](255) NOT NULL,
	[newname7] [nvarchar](255) NOT NULL,
	[newname8] [nvarchar](255) NOT NULL,
	[newname9] [nvarchar](255) NOT NULL,
	[newname10] [nvarchar](255) NOT NULL,
	[newname11] [nvarchar](255) NOT NULL,
	[newname12] [nvarchar](255) NOT NULL,
	[newname13] [nvarchar](255) NOT NULL,
	[newname14] [nvarchar](255) NOT NULL,
	[newname15] [nvarchar](255) NOT NULL,
	[newname16] [nvarchar](255) NOT NULL,
	[newname17] [nvarchar](255) NOT NULL,
	[newname18] [nvarchar](255) NOT NULL,
	[newname19] [nvarchar](255) NOT NULL,
	[newname20] [nvarchar](255) NOT NULL,
	[created] [nvarchar](20) NOT NULL,
	[created_time] [datetime] NULL,
	[updated] [nvarchar](20) NOT NULL,
	[updated_time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[goodtaxnumber]    Script Date: 5018/6/50 10:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[goodtaxnumber](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[ptaxnumber] [nvarchar](50) NOT NULL,
	[ptaxprice] [decimal](18, 2) NOT NULL,
	[ptaxrate] [decimal](18, 2) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[menu]    Script Date: 5018/6/50 10:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentid] [int] NOT NULL DEFAULT ((0)),
	[menucode] [nvarchar](255) NOT NULL DEFAULT (''),
	[menuname] [nvarchar](255) NOT NULL DEFAULT (''),
	[menuurl] [nvarchar](255) NOT NULL DEFAULT (''),
	[menusort] [int] NOT NULL DEFAULT ((0)),
	[menuicon] [nvarchar](255) NOT NULL DEFAULT ('')
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[prohibitedgood]    Script Date: 5018/6/50 10:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prohibitedgood](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [nvarchar](255) NOT NULL,
	[premark] [nvarchar](max) NOT NULL,
	[type] [int] NOT NULL,
	[created] [nvarchar](20) NOT NULL,
	[created_time] [datetime] NULL,
	[updated] [nvarchar](20) NOT NULL,
	[updated_time] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[waybill]    Script Date: 5018/6/50 10:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[waybill](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[warehousingno] [nvarchar](255) NOT NULL,
	[waybillnumber] [nvarchar](255) NOT NULL,
	[settlementweight] [decimal](18, 2) NOT NULL,
	[singlechannel] [nvarchar](255) NOT NULL,
	[recipient] [nvarchar](255) NOT NULL,
	[recphone] [nvarchar](255) NOT NULL,
	[recaddress] [nvarchar](500) NOT NULL,
	[reccity] [nvarchar](255) NOT NULL,
	[recprovince] [nvarchar](255) NOT NULL,
	[recpostcode] [nvarchar](255) NOT NULL,
	[goodsname1] [nvarchar](255) NOT NULL,
	[customsno1] [nvarchar](255) NOT NULL,
	[price1] [decimal](18, 2) NOT NULL,
	[piecenum1] [int] NOT NULL,
	[pieceweight1] [decimal](18, 2) NOT NULL,
	[goodsname2] [nvarchar](255) NOT NULL,
	[customsno2] [nvarchar](255) NOT NULL,
	[price2] [decimal](18, 2) NOT NULL,
	[piecenum2] [int] NOT NULL,
	[pieceweight2] [decimal](18, 2) NOT NULL,
	[goodsname3] [nvarchar](255) NOT NULL,
	[customsno3] [nvarchar](255) NOT NULL,
	[price3] [decimal](18, 2) NOT NULL,
	[piecenum3] [int] NOT NULL,
	[pieceweight3] [decimal](18, 2) NOT NULL,
	[declaredvalue] [decimal](18, 2) NOT NULL,
	[declaredcurrency] [nvarchar](255) NOT NULL,
	[ispayduty] [int] NOT NULL,
	[insured] [decimal](18, 2) NOT NULL,
	[typingtype] [nvarchar](255) NOT NULL,
	[destination] [nvarchar](500) NOT NULL,
	[destinationpoint] [nvarchar](255) NOT NULL,
	[sender] [nvarchar](255) NOT NULL,
	[sendphone] [nvarchar](255) NOT NULL,
	[sendaddress] [nvarchar](500) NOT NULL,
	[freight] [decimal](18, 2) NOT NULL,
	[customerquotation] [decimal](18, 2) NOT NULL,
	[tax] [decimal](18, 2) NOT NULL,
	[phonecount] [int] NOT NULL,
	[importbatch] [nvarchar](255) NOT NULL,
	[exportbatch] [nvarchar](255) NOT NULL,
	[created] [nvarchar](20) NOT NULL,
	[created_time] [datetime] NULL,
	[updated] [nvarchar](20) NOT NULL,
	[updated_time] [datetime] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[authconfig] ON 

INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (1, 1, 1)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (2, 1, 2)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (3, 1, 3)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (4, 1, 4)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (5, 1, 5)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (6, 1, 6)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (7, 1, 7)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (8, 1, 8)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (9, 1, 9)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (10, 2, 5)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (11, 2, 6)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (12, 2, 7)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (13, 2, 8)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (14, 2, 9)
INSERT [dbo].[authconfig] ([id], [employeeid], [menuid]) VALUES (15, 2, 4)
SET IDENTITY_INSERT [dbo].[authconfig] OFF
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id], [employeeaccount], [employeename], [employeepwd], [employeedesc]) VALUES (1, N'admin', N'管理员', N'AnS7dF91gNw=', N'')
SET IDENTITY_INSERT [dbo].[employee] OFF
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (1, 0, N'0101', N'菜单管理', N'/menu/index', 19, N'icon-menu')
INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (2, 0, N'0102', N'人员管理', N'/employee/index', 17, N'icon-team')
INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (3, 0, N'0103', N'员工菜单', N'/employee/authconfig', 18, N'icon-wwjgwh')
INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (4, 0, N'0104', N'修改密码', N'/employee/updatepassword', 50, N'icon-security')
INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (5, 0, N'0105', N'运单管理', N'/waybill/index', 1, N'icon-epay')
INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (6, 0, N'0106', N'对应关系', N'/relation/index', 2, N'icon-epay')
INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (7, 0, N'0107', N'禁运管理', N'/prohibited/index', 3, N'icon-epay')
INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (8, 0, N'0108', N'税号管理', N'/taxnumber/index', 4, N'icon-epay')
INSERT [dbo].[menu] ([id], [parentid], [menucode], [menuname], [menuurl], [menusort], [menuicon]) VALUES (9, 0, N'0109', N'地区管理', N'/cityarea/index', 5, N'icon-epay')
SET IDENTITY_INSERT [dbo].[menu] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cityarea_areacity]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_cityarea_areacity] ON [dbo].[cityarea]
(
	[areacity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cityarea_areaprovince]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_cityarea_areaprovince] ON [dbo].[cityarea]
(
	[areaprovince] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cityarea_created]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_cityarea_created] ON [dbo].[cityarea]
(
	[created] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cityarea_updated]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_cityarea_updated] ON [dbo].[cityarea]
(
	[updated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_goodrelation_created]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_goodrelation_created] ON [dbo].[goodrelation]
(
	[created] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_goodrelation_originalname]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_goodrelation_originalname] ON [dbo].[goodrelation]
(
	[originalname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_goodrelation_taxnumber]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_goodrelation_taxnumber] ON [dbo].[goodrelation]
(
	[taxnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_goodrelation_updated]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_goodrelation_updated] ON [dbo].[goodrelation]
(
	[updated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_goodtaxnumber_ptaxnumber]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_goodtaxnumber_ptaxnumber] ON [dbo].[goodtaxnumber]
(
	[ptaxnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_prohibitedgood_created]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_prohibitedgood_created] ON [dbo].[prohibitedgood]
(
	[created] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_prohibitedgood_pname]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_prohibitedgood_pname] ON [dbo].[prohibitedgood]
(
	[pname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_prohibitedgood_type]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_prohibitedgood_type] ON [dbo].[prohibitedgood]
(
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_prohibitedgood_update]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_prohibitedgood_update] ON [dbo].[prohibitedgood]
(
	[updated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_waybill_created]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_waybill_created] ON [dbo].[waybill]
(
	[created] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_waybill_exportbatch]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_waybill_exportbatch] ON [dbo].[waybill]
(
	[exportbatch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_waybill_importbatch]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_waybill_importbatch] ON [dbo].[waybill]
(
	[importbatch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_waybill_updated]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_waybill_updated] ON [dbo].[waybill]
(
	[updated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_waybill_warehousingno]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_waybill_warehousingno] ON [dbo].[waybill]
(
	[warehousingno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_waybill_waybillnumber]    Script Date: 5018/6/50 10:26:51 ******/
CREATE NONCLUSTERED INDEX [IX_waybill_waybillnumber] ON [dbo].[waybill]
(
	[waybillnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cityarea] ADD  DEFAULT ('') FOR [areaprovince]
GO
ALTER TABLE [dbo].[cityarea] ADD  DEFAULT ('') FOR [areacity]
GO
ALTER TABLE [dbo].[cityarea] ADD  DEFAULT ('') FOR [areapostcode]
GO
ALTER TABLE [dbo].[cityarea] ADD  DEFAULT ('') FOR [created]
GO
ALTER TABLE [dbo].[cityarea] ADD  DEFAULT ('') FOR [updated]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [originalname]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [taxnumber]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname1]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname2]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname3]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname4]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname5]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname6]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname7]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname8]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname9]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname10]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname11]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname12]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname13]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname14]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname15]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname16]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname17]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname18]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname19]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [newname20]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [created]
GO
ALTER TABLE [dbo].[goodrelation] ADD  DEFAULT ('') FOR [updated]
GO
ALTER TABLE [dbo].[goodtaxnumber] ADD  DEFAULT ('') FOR [ptaxnumber]
GO
ALTER TABLE [dbo].[goodtaxnumber] ADD  DEFAULT ((0.00)) FOR [ptaxprice]
GO
ALTER TABLE [dbo].[goodtaxnumber] ADD  DEFAULT ((0.00)) FOR [ptaxrate]
GO
ALTER TABLE [dbo].[prohibitedgood] ADD  DEFAULT ('') FOR [pname]
GO
ALTER TABLE [dbo].[prohibitedgood] ADD  DEFAULT ('') FOR [premark]
GO
ALTER TABLE [dbo].[prohibitedgood] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[prohibitedgood] ADD  DEFAULT ('') FOR [created]
GO
ALTER TABLE [dbo].[prohibitedgood] ADD  DEFAULT ('') FOR [updated]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__warehou__4AB81AF0]  DEFAULT ('') FOR [warehousingno]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__waybill__4BAC3F29]  DEFAULT ('') FOR [waybillnumber]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__settlem__4CA06362]  DEFAULT ((0.00)) FOR [settlementweight]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__singlec__4D94879B]  DEFAULT ('') FOR [singlechannel]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__recipie__4E88ABD4]  DEFAULT ('') FOR [recipient]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__recphon__4F7CD00D]  DEFAULT ('') FOR [recphone]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__recaddr__10070F446]  DEFAULT ('') FOR [recaddress]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__reccity__5165187F]  DEFAULT ('') FOR [reccity]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__recprov__52593CB8]  DEFAULT ('') FOR [recprovince]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__recpost__534D60F1]  DEFAULT ('') FOR [recpostcode]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__goodsna__5441852A]  DEFAULT ('') FOR [goodsname1]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__customs__5535A963]  DEFAULT ('') FOR [customsno1]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__price1__5629CD9C]  DEFAULT ((0.00)) FOR [price1]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__piecenu__571DF1D5]  DEFAULT ((0)) FOR [piecenum1]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__piecewe__5812160E]  DEFAULT ((0.00)) FOR [pieceweight1]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__goodsna__59063A47]  DEFAULT ('') FOR [goodsname2]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__customs__59FA5E80]  DEFAULT ('') FOR [customsno2]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__price2__5AEE82B9]  DEFAULT ((0.00)) FOR [price2]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__piecenu__5BE2A6F2]  DEFAULT ((0)) FOR [piecenum2]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__piecewe__5CD6CB2B]  DEFAULT ((0.00)) FOR [pieceweight2]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__goodsna__5DCAEF64]  DEFAULT ('') FOR [goodsname3]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__customs__5EBF139D]  DEFAULT ('') FOR [customsno3]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__price3__5FB337D6]  DEFAULT ((0.00)) FOR [price3]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__piecenu__60A75C0F]  DEFAULT ((0)) FOR [piecenum3]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__piecewe__619B8048]  DEFAULT ((0.00)) FOR [pieceweight3]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__declare__628FA481]  DEFAULT ((0.00)) FOR [declaredvalue]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__declare__6383C8BA]  DEFAULT ('') FOR [declaredcurrency]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__ispaydu__6477ECF3]  DEFAULT ((0)) FOR [ispayduty]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__insured__656C112C]  DEFAULT ((0.00)) FOR [insured]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__typingt__66603565]  DEFAULT ('') FOR [typingtype]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__destina__6754599E]  DEFAULT ('') FOR [destination]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__destina__68487DD7]  DEFAULT ('') FOR [destinationpoint]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__sender__693CA210]  DEFAULT ('') FOR [sender]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__sendpho__6A30C649]  DEFAULT ('') FOR [sendphone]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__sendadd__6B24EA82]  DEFAULT ('') FOR [sendaddress]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__freight__6C190EBB]  DEFAULT ((0.00)) FOR [freight]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__custome__6D0D32F4]  DEFAULT ((0.00)) FOR [customerquotation]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__tax__6E01572D]  DEFAULT ((0.00)) FOR [tax]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__phoneco__6EF57B66]  DEFAULT ((0)) FOR [phonecount]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__importb__6FE99F9F]  DEFAULT ('') FOR [importbatch]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__exportb__70DDC3D8]  DEFAULT ('') FOR [exportbatch]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__created__71D1E811]  DEFAULT ('') FOR [created]
GO
ALTER TABLE [dbo].[waybill] ADD  CONSTRAINT [DF__waybill__updated__73BA3083]  DEFAULT ('') FOR [updated]
GO
USE [master]
GO
ALTER DATABASE [Express] SET  READ_WRITE 
GO
