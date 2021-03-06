USE [master]
GO
/****** Object:  Database [jspmkyzxjszwglxtdzkf10]    Script Date: 04/04/2018 16:37:17 ******/
CREATE DATABASE [jspmkyzxjszwglxtdzkf10] ON  PRIMARY 
( NAME = N'jspmkyzxjszwglxtdzkf10', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\jspmkyzxjszwglxtdzkf10.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'jspmkyzxjszwglxtdzkf10_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\jspmkyzxjszwglxtdzkf10_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [jspmkyzxjszwglxtdzkf10].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET ANSI_NULLS OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET ANSI_PADDING OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET ARITHABORT OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET  DISABLE_BROKER
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET  READ_WRITE
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET RECOVERY SIMPLE
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET  MULTI_USER
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [jspmkyzxjszwglxtdzkf10] SET DB_CHAINING OFF
GO
USE [jspmkyzxjszwglxtdzkf10]
GO
/****** Object:  Table [dbo].[yuyue]    Script Date: 04/04/2018 16:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[yuyue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yuyuedanhao] [varchar](50) NULL,
	[xinxibianhao] [varchar](50) NULL,
	[louhao] [varchar](50) NULL,
	[cenghao] [varchar](50) NULL,
	[jiaoshihao] [varchar](50) NULL,
	[zuoweihao] [varchar](50) NULL,
	[yuyueshijian] [varchar](50) NULL,
	[xuehao] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[yuyue] ON
INSERT [dbo].[yuyue] ([ID], [yuyuedanhao], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [yuyueshijian], [xuehao], [xingming], [shouji], [addtime]) VALUES (1, N'03262206022063', N'03262200186073', N'1号楼', N'1层', N'101号', N'1号', N'2018-03-28 22:06:04', N'111', N'刘伟', N'13353356988', CAST(0x0000A8AF016C3968 AS DateTime))
INSERT [dbo].[yuyue] ([ID], [yuyuedanhao], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [yuyueshijian], [xuehao], [xingming], [shouji], [addtime]) VALUES (2, N'03262212141005', N'03262200039519', N'1号楼', N'2层', N'201号', N'2号', N'2018-03-29 22:12:15', N'111', N'刘伟', N'13353356988', CAST(0x0000A8AF016DEC2C AS DateTime))
SET IDENTITY_INSERT [dbo].[yuyue] OFF
/****** Object:  Table [dbo].[xueshengxinxi]    Script Date: 04/04/2018 16:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xueshengxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[xuehao] [varchar](50) NULL,
	[mima] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[xingbie] [varchar](50) NULL,
	[yuanxi] [varchar](50) NULL,
	[zhuanye] [varchar](50) NULL,
	[shouji] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[xueshengxinxi] ON
INSERT [dbo].[xueshengxinxi] ([ID], [xuehao], [mima], [xingming], [xingbie], [yuanxi], [zhuanye], [shouji], [addtime]) VALUES (1, N'111', N'111', N'刘伟', N'男', N'计算机系', N'计算机', N'13353356988', CAST(0x0000A8AF016A51E8 AS DateTime))
INSERT [dbo].[xueshengxinxi] ([ID], [xuehao], [mima], [xingming], [xingbie], [yuanxi], [zhuanye], [shouji], [addtime]) VALUES (2, N'222', N'222', N'高峰', N'男', N'计算机系', N'计算机', N'13353356988', CAST(0x0000A8AF016D9DA8 AS DateTime))
SET IDENTITY_INSERT [dbo].[xueshengxinxi] OFF
/****** Object:  Table [dbo].[quxiao]    Script Date: 04/04/2018 16:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quxiao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yuyuedanhao] [varchar](50) NULL,
	[xinxibianhao] [varchar](50) NULL,
	[louhao] [varchar](50) NULL,
	[cenghao] [varchar](50) NULL,
	[jiaoshihao] [varchar](50) NULL,
	[zuoweihao] [varchar](50) NULL,
	[xuehao] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[quxiao] ON
INSERT [dbo].[quxiao] ([ID], [yuyuedanhao], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [xuehao], [xingming], [addtime]) VALUES (1, N'03262206022063', N'03262200186073', N'1号楼', N'1层', N'101号', N'1号', N'111', N'刘伟', CAST(0x0000A8AF016C9278 AS DateTime))
INSERT [dbo].[quxiao] ([ID], [yuyuedanhao], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [xuehao], [xingming], [addtime]) VALUES (2, N'03262212141005', N'03262200039519', N'1号楼', N'2层', N'201号', N'2号', N'111', N'刘伟', CAST(0x0000A8AF016DF334 AS DateTime))
SET IDENTITY_INSERT [dbo].[quxiao] OFF
/****** Object:  Table [dbo].[likai]    Script Date: 04/04/2018 16:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[likai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[yuyuedanhao] [varchar](50) NULL,
	[xinxibianhao] [varchar](50) NULL,
	[louhao] [varchar](50) NULL,
	[cenghao] [varchar](50) NULL,
	[jiaoshihao] [varchar](50) NULL,
	[zuoweihao] [varchar](50) NULL,
	[likaiyuanyin] [varchar](300) NULL,
	[xuehao] [varchar](50) NULL,
	[xingming] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[likai] ON
INSERT [dbo].[likai] ([ID], [yuyuedanhao], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [likaiyuanyin], [xuehao], [xingming], [addtime]) VALUES (1, N'03262206022063', N'03262200186073', N'1号楼', N'1层', N'101号', N'1号', N'豆腐干反对', N'111', N'刘伟', CAST(0x0000A8AF016C5EE8 AS DateTime))
INSERT [dbo].[likai] ([ID], [yuyuedanhao], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [likaiyuanyin], [xuehao], [xingming], [addtime]) VALUES (2, N'03262212141005', N'03262200039519', N'1号楼', N'2层', N'201号', N'2号', N'似的发射点', N'111', N'刘伟', CAST(0x0000A8AF016DFB68 AS DateTime))
SET IDENTITY_INSERT [dbo].[likai] OFF
/****** Object:  Table [dbo].[jiaoshixinxi]    Script Date: 04/04/2018 16:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jiaoshixinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[xinxibianhao] [varchar](50) NULL,
	[louhao] [varchar](50) NULL,
	[cenghao] [varchar](50) NULL,
	[jiaoshihao] [varchar](50) NULL,
	[zuoweihao] [varchar](50) NULL,
	[zhuangtai] [varchar](50) NULL,
	[issh] [varchar](2) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[jiaoshixinxi] ON
INSERT [dbo].[jiaoshixinxi] ([ID], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [zhuangtai], [issh], [addtime]) VALUES (1, N'03262159477462', N'1号楼', N'2层', N'201号', N'1号', N'空', N'否', CAST(0x0000A8AF016A8ED8 AS DateTime))
INSERT [dbo].[jiaoshixinxi] ([ID], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [zhuangtai], [issh], [addtime]) VALUES (2, N'03262200039519', N'1号楼', N'2层', N'201号', N'2号', N'空', N'否', CAST(0x0000A8AF016AA198 AS DateTime))
INSERT [dbo].[jiaoshixinxi] ([ID], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [zhuangtai], [issh], [addtime]) VALUES (3, N'03262200186073', N'1号楼', N'1层', N'101号', N'1号', N'无人', N'否', CAST(0x0000A8AF016ACCF4 AS DateTime))
INSERT [dbo].[jiaoshixinxi] ([ID], [xinxibianhao], [louhao], [cenghao], [jiaoshihao], [zuoweihao], [zhuangtai], [issh], [addtime]) VALUES (4, N'03262211361431', N'1号楼', N'3层', N'303', N'2号', N'空', N'否', CAST(0x0000A8AF016DCC88 AS DateTime))
SET IDENTITY_INSERT [dbo].[jiaoshixinxi] OFF
/****** Object:  Table [dbo].[gonggaoxinxi]    Script Date: 04/04/2018 16:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gonggaoxinxi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[biaoti] [varchar](300) NULL,
	[fenlei] [varchar](50) NULL,
	[neirong] [text] NULL,
	[tianjiaren] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[gonggaoxinxi] ON
INSERT [dbo].[gonggaoxinxi] ([ID], [biaoti], [fenlei], [neirong], [tianjiaren], [addtime]) VALUES (1, N'士大夫但是', N'的风格', N'豆腐干地方的风格地方', N'hsg', CAST(0x0000A8AF016DB518 AS DateTime))
SET IDENTITY_INSERT [dbo].[gonggaoxinxi] OFF
/****** Object:  Table [dbo].[allusers]    Script Date: 04/04/2018 16:37:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allusers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[cx] [varchar](50) NULL,
	[addtime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allusers] ON
INSERT [dbo].[allusers] ([ID], [username], [pwd], [cx], [addtime]) VALUES (1, N'hsg', N'hsg', N'管理者', CAST(0x0000A8AF015BC62E AS DateTime))
SET IDENTITY_INSERT [dbo].[allusers] OFF
/****** Object:  Default [DF__yuyue__addtime__07020F21]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[yuyue] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__xueshengx__addti__0519C6AF]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[xueshengxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__quxiao__addtime__03317E3D]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[quxiao] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__likai__addtime__014935CB]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[likai] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__jiaoshixin__issh__0AD2A005]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[jiaoshixinxi] ADD  DEFAULT ('否') FOR [issh]
GO
/****** Object:  Default [DF__jiaoshixi__addti__0BC6C43E]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[jiaoshixinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__gonggaoxi__addti__08EA5793]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[gonggaoxinxi] ADD  DEFAULT (getdate()) FOR [addtime]
GO
/****** Object:  Default [DF__allusers__cx__7E6CC920]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT ('管理者') FOR [cx]
GO
/****** Object:  Default [DF__allusers__addtim__7F60ED59]    Script Date: 04/04/2018 16:37:17 ******/
ALTER TABLE [dbo].[allusers] ADD  DEFAULT (getdate()) FOR [addtime]
GO
