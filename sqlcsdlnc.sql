USE [master]
GO
/****** Object:  Database [CSDL_Nangcao]    Script Date: 11/29/2021 8:48:06 PM ******/
CREATE DATABASE [CSDL_Nangcao]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSDL_Nangcao', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CSDL_Nangcao.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CSDL_Nangcao_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CSDL_Nangcao_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CSDL_Nangcao] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDL_Nangcao].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDL_Nangcao] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CSDL_Nangcao] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSDL_Nangcao] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSDL_Nangcao] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CSDL_Nangcao] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSDL_Nangcao] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CSDL_Nangcao] SET  MULTI_USER 
GO
ALTER DATABASE [CSDL_Nangcao] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSDL_Nangcao] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSDL_Nangcao] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSDL_Nangcao] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CSDL_Nangcao] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CSDL_Nangcao] SET QUERY_STORE = OFF
GO
USE [CSDL_Nangcao]
GO
/****** Object:  Table [dbo].[Chithidongbang]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chithidongbang](
	[Machithidongbang] [varchar](10) NOT NULL,
	[Tenchithidongbang] [nvarchar](10) NULL,
 CONSTRAINT [PK_Chithidongbang] PRIMARY KEY CLUSTERED 
(
	[Machithidongbang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chithinhietdo]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chithinhietdo](
	[Machithinhietdo] [varchar](10) NOT NULL,
	[Tenchithinhietdo] [nvarchar](10) NULL,
 CONSTRAINT [PK_Chithinhietdo] PRIMARY KEY CLUSTERED 
(
	[Machithinhietdo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitietphhieutiem]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietphhieutiem](
	[Machitietphieutiem] [varchar](10) NOT NULL,
	[Ngaytiem] [date] NULL,
	[Loaimui] [varchar](10) NULL,
	[Phanung] [nvarchar](50) NULL,
	[Mathuoc] [varchar](10) NULL,
	[Sophieutiem] [varchar](10) NULL,
 CONSTRAINT [PK_Chitietphhieutiem] PRIMARY KEY CLUSTERED 
(
	[Machitietphieutiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diemtiem]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diemtiem](
	[Madiemtiem] [varchar](10) NOT NULL,
	[Tendiemtiem] [nvarchar](100) NULL,
	[Tennguoidungdau] [nvarchar](50) NULL,
	[Maquan] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Madiemtiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dongkiemke]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dongkiemke](
	[Sophieukiem] [varchar](10) NOT NULL,
	[SLtoncu] [int] NULL,
	[SLnhap] [int] NULL,
	[SLxuat] [int] NULL,
	[SLhethan] [int] NULL,
	[SLhuhong] [int] NULL,
	[SLcuoingay] [int] NULL,
	[Mathuoc] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sophieukiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donglinh]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donglinh](
	[Sophieulinh] [varchar](10) NOT NULL,
	[Mathuoc] [varchar](10) NOT NULL,
	[SLyeucau] [int] NULL,
	[SLcapphat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sophieulinh] ASC,
	[Mathuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dongxuat]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dongxuat](
	[Sophieuxuat] [varchar](10) NOT NULL,
	[Mathuoc] [varchar](10) NOT NULL,
	[SLxuat] [int] NULL,
	[Dongia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sophieuxuat] ASC,
	[Mathuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadonnhap]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadonnhap](
	[Sohoadon] [varchar](10) NOT NULL,
	[Ngaynhap] [date] NULL,
	[Diadiem] [nvarchar](100) NULL,
	[Manhanvien] [varchar](10) NULL,
	[Mancc] [varchar](10) NULL,
	[Manguon] [varchar](10) NULL,
	[Ghichu] [nvarchar](50) NULL,
	[Makhonhap] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sohoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[Makho] [varchar](10) NOT NULL,
	[Tenkho] [nvarchar](30) NULL,
	[Diadiem] [nvarchar](30) NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[Makho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lo]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lo](
	[Malo] [varchar](10) NOT NULL,
	[SLnhap] [int] NULL,
	[Dongia] [int] NULL,
	[Sohoadon] [varchar](10) NULL,
	[Solieutrenmotcai] [int] NULL,
	[SDK_gnpk] [varchar](50) NULL,
	[NSX] [date] NULL,
	[HSD] [date] NULL,
	[Nongdo] [varchar](10) NULL,
	[Hopchat] [varchar](100) NULL,
	[Dangdonggoi] [nvarchar](10) NULL,
	[Machithidongbang] [varchar](10) NULL,
	[Machithinhietdo] [varchar](10) NULL,
	[Mavattu] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Malo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loaivattuyte]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaivattuyte](
	[Maloaivattu] [varchar](10) NOT NULL,
	[Tenloaivattu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loaivattuyte] PRIMARY KEY CLUSTERED 
(
	[Maloaivattu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidan]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidan](
	[Manguoidan] [varchar](10) NOT NULL,
	[Tennguoidan] [nvarchar](100) NULL,
	[Ngaysinh] [date] NULL,
	[CCCD] [varchar](12) NULL,
	[SDT] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Manguoidan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguon]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguon](
	[Manguon] [varchar](10) NOT NULL,
	[Tennguon] [nvarchar](30) NULL,
 CONSTRAINT [PK_Nguon] PRIMARY KEY CLUSTERED 
(
	[Manguon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[Mancc] [varchar](10) NOT NULL,
	[Tencc] [nvarchar](100) NULL,
	[Sdt] [varchar](10) NULL,
	[Diachi] [nvarchar](100) NULL,
	[Fax] [varchar](10) NULL,
	[Sotaikhoan] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[Manhanvien] [varchar](10) NOT NULL,
	[Tennhanvien] [nvarchar](100) NULL,
	[Chucvu] [nvarchar](20) NULL,
	[Taikhoan] [char](30) NULL,
	[Manhom] [varchar](10) NULL,
	[SDT] [varchar](15) NULL,
	[Email] [varchar](55) NULL,
	[Trangthai] [bit] NULL,
	[Matkhau] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvienkiemke]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvienkiemke](
	[Sophieu] [varchar](10) NOT NULL,
	[Ngaykiem] [date] NULL,
	[Manhanvien] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sophieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhasanxuat]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhasanxuat](
	[Mansx] [varchar](10) NOT NULL,
	[Tennsx] [nvarchar](30) NULL,
	[Quocgia] [nvarchar](30) NULL,
 CONSTRAINT [PK_Nhasanxuat] PRIMARY KEY CLUSTERED 
(
	[Mansx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhomnhanvien]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhomnhanvien](
	[Manhomnv] [varchar](10) NOT NULL,
	[Tennhomnv] [nvarchar](30) NULL,
 CONSTRAINT [PK_Nhomnhanvien] PRIMARY KEY CLUSTERED 
(
	[Manhomnv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhomnv_Quyen]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhomnv_Quyen](
	[Manhomnv] [varchar](10) NOT NULL,
	[Maquyen] [varchar](10) NOT NULL,
	[Chuthich] [nvarchar](30) NULL,
 CONSTRAINT [PK_Nhanvien_Quyen] PRIMARY KEY CLUSTERED 
(
	[Manhomnv] ASC,
	[Maquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieulinh]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieulinh](
	[Sophieulinh] [varchar](10) NOT NULL,
	[Ngayyeucau] [date] NULL,
	[Manhanvien] [varchar](10) NULL,
	[Madiemtiem] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sophieulinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieuthongke]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieuthongke](
	[Sophieu] [varchar](10) NOT NULL,
	[SLtiem] [smallint] NULL,
	[Sltrieuchung] [smallint] NULL,
	[Ngaytiem] [date] NULL,
	[Manhanvien] [varchar](10) NULL,
	[Madiemtiem] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sophieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieutiem]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieutiem](
	[Sophieu] [varchar](10) NOT NULL,
	[Madiemtiem] [varchar](10) NULL,
	[Manguoidan] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sophieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phieuxuat]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phieuxuat](
	[Sophieuxuat] [varchar](10) NOT NULL,
	[Ngayxuat] [date] NULL,
	[Khoxuat] [nvarchar](100) NULL,
	[Khonhan] [nvarchar](100) NULL,
	[Manhanvien] [varchar](10) NULL,
	[Madiemtiem] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sophieuxuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quan]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quan](
	[Maquan] [varchar](10) NOT NULL,
	[Tenquan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maquan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[Maquyen] [varchar](10) NOT NULL,
	[Tenquyen] [nvarchar](30) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[Maquyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vattuyte]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vattuyte](
	[Mavattu] [varchar](10) NOT NULL,
	[Tenvattu] [nvarchar](100) NULL,
	[Malo] [varchar](10) NULL,
	[Mansx] [varchar](10) NULL,
	[Maloaivattu] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Mavattu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Chithidongbang] ([Machithidongbang], [Tenchithidongbang]) VALUES (N'ctdb001', N'Tốt')
INSERT [dbo].[Chithidongbang] ([Machithidongbang], [Tenchithidongbang]) VALUES (N'ctdb003', N'BìnhThường')
GO
INSERT [dbo].[Chithinhietdo] ([Machithinhietdo], [Tenchithinhietdo]) VALUES (N'ctnd001', N'Tốt')
INSERT [dbo].[Chithinhietdo] ([Machithinhietdo], [Tenchithinhietdo]) VALUES (N'ctnd003', N'BìnhThường')
GO
INSERT [dbo].[Diemtiem] ([Madiemtiem], [Tendiemtiem], [Tennguoidungdau], [Maquan]) VALUES (N'dt001', N'Trạm yt p Yên Nghĩa', N'Mạnh', N'q001')
INSERT [dbo].[Diemtiem] ([Madiemtiem], [Tendiemtiem], [Tennguoidungdau], [Maquan]) VALUES (N'dt002', N'BV 103', N'Tuấn', N'q001')
INSERT [dbo].[Diemtiem] ([Madiemtiem], [Tendiemtiem], [Tennguoidungdau], [Maquan]) VALUES (N'dt003', N'BV E', N'Hùng', N'q002')
GO
INSERT [dbo].[Hoadonnhap] ([Sohoadon], [Ngaynhap], [Diadiem], [Manhanvien], [Mancc], [Manguon], [Ghichu], [Makhonhap]) VALUES (N'hd001', CAST(N'1989-06-06' AS Date), N'pham hung', NULL, N'ncc002', N'nguon002', NULL, N'kho002')
INSERT [dbo].[Hoadonnhap] ([Sohoadon], [Ngaynhap], [Diadiem], [Manhanvien], [Mancc], [Manguon], [Ghichu], [Makhonhap]) VALUES (N'hd003', CAST(N'1999-09-09' AS Date), N'le loi', NULL, N'ncc002', N'nguon002', NULL, N'kho002')
INSERT [dbo].[Hoadonnhap] ([Sohoadon], [Ngaynhap], [Diadiem], [Manhanvien], [Mancc], [Manguon], [Ghichu], [Makhonhap]) VALUES (N'hd059', CAST(N'2021-12-29' AS Date), NULL, NULL, N'ncc002', N'nguon002', NULL, N'kho002')
GO
INSERT [dbo].[Kho] ([Makho], [Tenkho], [Diadiem]) VALUES (N'kho001', N'Kho BV 103', N'bv103')
INSERT [dbo].[Kho] ([Makho], [Tenkho], [Diadiem]) VALUES (N'kho002', N'Kho Vinmec', N'HCM')
GO
INSERT [dbo].[Lo] ([Malo], [SLnhap], [Dongia], [Sohoadon], [Solieutrenmotcai], [SDK_gnpk], [NSX], [HSD], [Nongdo], [Hopchat], [Dangdonggoi], [Machithidongbang], [Machithinhietdo], [Mavattu]) VALUES (N'11', 2, 1, N'hd059', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'ctdb003', N'ctnd003', NULL)
INSERT [dbo].[Lo] ([Malo], [SLnhap], [Dongia], [Sohoadon], [Solieutrenmotcai], [SDK_gnpk], [NSX], [HSD], [Nongdo], [Hopchat], [Dangdonggoi], [Machithidongbang], [Machithinhietdo], [Mavattu]) VALUES (N'lo001', 9000, 150, N'hd001', 100, NULL, NULL, NULL, N'100', NULL, N'lo', N'ctdb001', N'ctnd003', NULL)
INSERT [dbo].[Lo] ([Malo], [SLnhap], [Dongia], [Sohoadon], [Solieutrenmotcai], [SDK_gnpk], [NSX], [HSD], [Nongdo], [Hopchat], [Dangdonggoi], [Machithidongbang], [Machithinhietdo], [Mavattu]) VALUES (N'lo003', 8000, 190, N'hd003', 90, NULL, NULL, NULL, N'100', NULL, N'lo', N'ctdb001', N'ctnd001', NULL)
INSERT [dbo].[Lo] ([Malo], [SLnhap], [Dongia], [Sohoadon], [Solieutrenmotcai], [SDK_gnpk], [NSX], [HSD], [Nongdo], [Hopchat], [Dangdonggoi], [Machithidongbang], [Machithinhietdo], [Mavattu]) VALUES (N'loabc', 11, 9, N'hd059', 18, NULL, NULL, NULL, NULL, NULL, NULL, N'ctdb001', N'ctnd001', NULL)
GO
INSERT [dbo].[Nguoidan] ([Manguoidan], [Tennguoidan], [Ngaysinh], [CCCD], [SDT]) VALUES (N'nd001', N'Nguyễn Quỳnh Mai', CAST(N'1999-10-17' AS Date), N'999777111', N'09761111')
INSERT [dbo].[Nguoidan] ([Manguoidan], [Tennguoidan], [Ngaysinh], [CCCD], [SDT]) VALUES (N'nd002', N'Nguyễn Văn Hiếu', CAST(N'2004-06-04' AS Date), N'71612638713', N'098871167')
GO
INSERT [dbo].[Nguon] ([Manguon], [Tennguon]) VALUES (N'nguon001', N'UNICEF')
INSERT [dbo].[Nguon] ([Manguon], [Tennguon]) VALUES (N'nguon002', N'WHO')
GO
INSERT [dbo].[Nhacungcap] ([Mancc], [Tencc], [Sdt], [Diachi], [Fax], [Sotaikhoan]) VALUES (N'ncc001', N'TCMR Quốc Gia', N'0977127771', N'Phạm Hùng', N'777dsdha6', N'881126661111')
INSERT [dbo].[Nhacungcap] ([Mancc], [Tencc], [Sdt], [Diachi], [Fax], [Sotaikhoan]) VALUES (N'ncc002', N'VinMec', N'0871112561', N'HCM', N'hhaa66y', N'12221666611')
GO
INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Chucvu], [Taikhoan], [Manhom], [SDT], [Email], [Trangthai], [Matkhau]) VALUES (N'nv001', N'Nguyễn Văn Thuận', N'quản trị', N'admin                         ', N'ADMIN', NULL, NULL, 1, N'c4ca4238a0b923820dcc509a6f75849b                  ')
INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Chucvu], [Taikhoan], [Manhom], [SDT], [Email], [Trangthai], [Matkhau]) VALUES (N'nv002', N'Võ Trung Quân', N'quận', N'quan                          ', N'district', NULL, NULL, 1, N'c4ca4238a0b923820dcc509a6f75849b                  ')
INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Chucvu], [Taikhoan], [Manhom], [SDT], [Email], [Trangthai], [Matkhau]) VALUES (N'nv003', N'Nguyễn Đình Việt Anh', N'kho', N'anh                           ', N'storage', NULL, NULL, 1, N'c4ca4238a0b923820dcc509a6f75849b                  ')
INSERT [dbo].[Nhanvien] ([Manhanvien], [Tennhanvien], [Chucvu], [Taikhoan], [Manhom], [SDT], [Email], [Trangthai], [Matkhau]) VALUES (N'nv004', N'Vũ Văn Sơn', NULL, N'son                           ', NULL, NULL, NULL, 1, N'c4ca4238a0b923820dcc509a6f75849b                  ')
GO
INSERT [dbo].[Nhomnhanvien] ([Manhomnv], [Tennhomnv]) VALUES (N'admin', N'quản trị')
INSERT [dbo].[Nhomnhanvien] ([Manhomnv], [Tennhomnv]) VALUES (N'city', N'thành phố')
INSERT [dbo].[Nhomnhanvien] ([Manhomnv], [Tennhomnv]) VALUES (N'district', N'quận')
INSERT [dbo].[Nhomnhanvien] ([Manhomnv], [Tennhomnv]) VALUES (N'storage', N'thủ kho')
GO
INSERT [dbo].[Nhomnv_Quyen] ([Manhomnv], [Maquyen], [Chuthich]) VALUES (N'admin', N'admin', NULL)
INSERT [dbo].[Nhomnv_Quyen] ([Manhomnv], [Maquyen], [Chuthich]) VALUES (N'admin', N'city', NULL)
INSERT [dbo].[Nhomnv_Quyen] ([Manhomnv], [Maquyen], [Chuthich]) VALUES (N'admin', N'district', NULL)
INSERT [dbo].[Nhomnv_Quyen] ([Manhomnv], [Maquyen], [Chuthich]) VALUES (N'city', N'city', NULL)
INSERT [dbo].[Nhomnv_Quyen] ([Manhomnv], [Maquyen], [Chuthich]) VALUES (N'city', N'district', NULL)
INSERT [dbo].[Nhomnv_Quyen] ([Manhomnv], [Maquyen], [Chuthich]) VALUES (N'district', N'district', NULL)
INSERT [dbo].[Nhomnv_Quyen] ([Manhomnv], [Maquyen], [Chuthich]) VALUES (N'storage', N'storage', NULL)
GO
INSERT [dbo].[Phieutiem] ([Sophieu], [Madiemtiem], [Manguoidan]) VALUES (N'pt001', N'dt001', N'nd001')
INSERT [dbo].[Phieutiem] ([Sophieu], [Madiemtiem], [Manguoidan]) VALUES (N'pt002', N'dt001', N'nd002')
GO
INSERT [dbo].[Quan] ([Maquan], [Tenquan]) VALUES (N'q001', N'Hà Đông')
INSERT [dbo].[Quan] ([Maquan], [Tenquan]) VALUES (N'q002', N'Thanh Xuân')
INSERT [dbo].[Quan] ([Maquan], [Tenquan]) VALUES (N'q003', N'Bắc Từ Liêm')
GO
INSERT [dbo].[Quyen] ([Maquyen], [Tenquyen]) VALUES (N'admin', N'quản trị')
INSERT [dbo].[Quyen] ([Maquyen], [Tenquyen]) VALUES (N'city', N'thành phố')
INSERT [dbo].[Quyen] ([Maquyen], [Tenquyen]) VALUES (N'district', N'quận')
INSERT [dbo].[Quyen] ([Maquyen], [Tenquyen]) VALUES (N'storage', N'kho')
GO
ALTER TABLE [dbo].[Chitietphhieutiem]  WITH CHECK ADD  CONSTRAINT [FK_Chitietphhieutiem_Phieutiem] FOREIGN KEY([Sophieutiem])
REFERENCES [dbo].[Phieutiem] ([Sophieu])
GO
ALTER TABLE [dbo].[Chitietphhieutiem] CHECK CONSTRAINT [FK_Chitietphhieutiem_Phieutiem]
GO
ALTER TABLE [dbo].[Chitietphhieutiem]  WITH CHECK ADD  CONSTRAINT [FK_Chitietphhieutiem_Vattuyte] FOREIGN KEY([Mathuoc])
REFERENCES [dbo].[Vattuyte] ([Mavattu])
GO
ALTER TABLE [dbo].[Chitietphhieutiem] CHECK CONSTRAINT [FK_Chitietphhieutiem_Vattuyte]
GO
ALTER TABLE [dbo].[Diemtiem]  WITH CHECK ADD FOREIGN KEY([Maquan])
REFERENCES [dbo].[Quan] ([Maquan])
GO
ALTER TABLE [dbo].[Dongkiemke]  WITH CHECK ADD FOREIGN KEY([Mathuoc])
REFERENCES [dbo].[Vattuyte] ([Mavattu])
GO
ALTER TABLE [dbo].[Donglinh]  WITH CHECK ADD FOREIGN KEY([Mathuoc])
REFERENCES [dbo].[Vattuyte] ([Mavattu])
GO
ALTER TABLE [dbo].[Donglinh]  WITH CHECK ADD FOREIGN KEY([Sophieulinh])
REFERENCES [dbo].[Phieulinh] ([Sophieulinh])
GO
ALTER TABLE [dbo].[Dongxuat]  WITH CHECK ADD FOREIGN KEY([Mathuoc])
REFERENCES [dbo].[Vattuyte] ([Mavattu])
GO
ALTER TABLE [dbo].[Dongxuat]  WITH CHECK ADD FOREIGN KEY([Sophieuxuat])
REFERENCES [dbo].[Phieuxuat] ([Sophieuxuat])
GO
ALTER TABLE [dbo].[Hoadonnhap]  WITH CHECK ADD FOREIGN KEY([Mancc])
REFERENCES [dbo].[Nhacungcap] ([Mancc])
GO
ALTER TABLE [dbo].[Hoadonnhap]  WITH CHECK ADD FOREIGN KEY([Manhanvien])
REFERENCES [dbo].[Nhanvien] ([Manhanvien])
GO
ALTER TABLE [dbo].[Hoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonnhap_Kho] FOREIGN KEY([Makhonhap])
REFERENCES [dbo].[Kho] ([Makho])
GO
ALTER TABLE [dbo].[Hoadonnhap] CHECK CONSTRAINT [FK_Hoadonnhap_Kho]
GO
ALTER TABLE [dbo].[Hoadonnhap]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonnhap_Nguon] FOREIGN KEY([Manguon])
REFERENCES [dbo].[Nguon] ([Manguon])
GO
ALTER TABLE [dbo].[Hoadonnhap] CHECK CONSTRAINT [FK_Hoadonnhap_Nguon]
GO
ALTER TABLE [dbo].[Lo]  WITH CHECK ADD  CONSTRAINT [FK_Lo_Chithidongbang] FOREIGN KEY([Machithidongbang])
REFERENCES [dbo].[Chithidongbang] ([Machithidongbang])
GO
ALTER TABLE [dbo].[Lo] CHECK CONSTRAINT [FK_Lo_Chithidongbang]
GO
ALTER TABLE [dbo].[Lo]  WITH CHECK ADD  CONSTRAINT [FK_Lo_Chithinhietdo] FOREIGN KEY([Machithinhietdo])
REFERENCES [dbo].[Chithinhietdo] ([Machithinhietdo])
GO
ALTER TABLE [dbo].[Lo] CHECK CONSTRAINT [FK_Lo_Chithinhietdo]
GO
ALTER TABLE [dbo].[Lo]  WITH CHECK ADD  CONSTRAINT [FK_Lo_Hoadonnhap] FOREIGN KEY([Sohoadon])
REFERENCES [dbo].[Hoadonnhap] ([Sohoadon])
GO
ALTER TABLE [dbo].[Lo] CHECK CONSTRAINT [FK_Lo_Hoadonnhap]
GO
ALTER TABLE [dbo].[Nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_Nhanvien_Nhomnhanvien] FOREIGN KEY([Manhom])
REFERENCES [dbo].[Nhomnhanvien] ([Manhomnv])
GO
ALTER TABLE [dbo].[Nhanvien] CHECK CONSTRAINT [FK_Nhanvien_Nhomnhanvien]
GO
ALTER TABLE [dbo].[Nhanvienkiemke]  WITH CHECK ADD FOREIGN KEY([Manhanvien])
REFERENCES [dbo].[Nhanvien] ([Manhanvien])
GO
ALTER TABLE [dbo].[Nhomnv_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_Nhomnv_Quyen_Nhomnhanvien] FOREIGN KEY([Manhomnv])
REFERENCES [dbo].[Nhomnhanvien] ([Manhomnv])
GO
ALTER TABLE [dbo].[Nhomnv_Quyen] CHECK CONSTRAINT [FK_Nhomnv_Quyen_Nhomnhanvien]
GO
ALTER TABLE [dbo].[Nhomnv_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_Nhomnv_Quyen_Quyen] FOREIGN KEY([Maquyen])
REFERENCES [dbo].[Quyen] ([Maquyen])
GO
ALTER TABLE [dbo].[Nhomnv_Quyen] CHECK CONSTRAINT [FK_Nhomnv_Quyen_Quyen]
GO
ALTER TABLE [dbo].[Phieulinh]  WITH CHECK ADD FOREIGN KEY([Madiemtiem])
REFERENCES [dbo].[Diemtiem] ([Madiemtiem])
GO
ALTER TABLE [dbo].[Phieulinh]  WITH CHECK ADD FOREIGN KEY([Manhanvien])
REFERENCES [dbo].[Nhanvien] ([Manhanvien])
GO
ALTER TABLE [dbo].[Phieuthongke]  WITH CHECK ADD FOREIGN KEY([Madiemtiem])
REFERENCES [dbo].[Diemtiem] ([Madiemtiem])
GO
ALTER TABLE [dbo].[Phieuthongke]  WITH CHECK ADD FOREIGN KEY([Manhanvien])
REFERENCES [dbo].[Nhanvien] ([Manhanvien])
GO
ALTER TABLE [dbo].[Phieutiem]  WITH CHECK ADD FOREIGN KEY([Madiemtiem])
REFERENCES [dbo].[Diemtiem] ([Madiemtiem])
GO
ALTER TABLE [dbo].[Phieutiem]  WITH CHECK ADD FOREIGN KEY([Manguoidan])
REFERENCES [dbo].[Nguoidan] ([Manguoidan])
GO
ALTER TABLE [dbo].[Phieuxuat]  WITH CHECK ADD FOREIGN KEY([Madiemtiem])
REFERENCES [dbo].[Diemtiem] ([Madiemtiem])
GO
ALTER TABLE [dbo].[Phieuxuat]  WITH CHECK ADD FOREIGN KEY([Manhanvien])
REFERENCES [dbo].[Nhanvien] ([Manhanvien])
GO
ALTER TABLE [dbo].[Vattuyte]  WITH CHECK ADD  CONSTRAINT [FK_Vattuyte_Lo] FOREIGN KEY([Malo])
REFERENCES [dbo].[Lo] ([Malo])
GO
ALTER TABLE [dbo].[Vattuyte] CHECK CONSTRAINT [FK_Vattuyte_Lo]
GO
ALTER TABLE [dbo].[Vattuyte]  WITH CHECK ADD  CONSTRAINT [FK_Vattuyte_Loaivattuyte] FOREIGN KEY([Maloaivattu])
REFERENCES [dbo].[Loaivattuyte] ([Maloaivattu])
GO
ALTER TABLE [dbo].[Vattuyte] CHECK CONSTRAINT [FK_Vattuyte_Loaivattuyte]
GO
ALTER TABLE [dbo].[Vattuyte]  WITH CHECK ADD  CONSTRAINT [FK_Vattuyte_Nhasanxuat] FOREIGN KEY([Mansx])
REFERENCES [dbo].[Nhasanxuat] ([Mansx])
GO
ALTER TABLE [dbo].[Vattuyte] CHECK CONSTRAINT [FK_Vattuyte_Nhasanxuat]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Account_Login]    Script Date: 11/29/2021 8:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Sp_Account_Login]
@UserName char(30),
@Password char(30)
as
begin
declare @count int
declare @res bit
select @count = count(*) from Nhanvien
where Taikhoan = @username and
Matkhau = @Password

if(@count > 0)
set @res = 1

else
set @res = 0

select @res
end
GO
USE [master]
GO
ALTER DATABASE [CSDL_Nangcao] SET  READ_WRITE 
GO
