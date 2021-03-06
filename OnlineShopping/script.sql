USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 06/14/2018 15:24:32 ******/
CREATE DATABASE [QuanLyBanHang] ON  PRIMARY 
( NAME = N'QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyBanHang.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyBanHang_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyBanHang] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyBanHang] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CLOSE ON
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyBanHang] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyBanHang] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyBanHang] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyBanHang] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyBanHang] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyBanHang] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyBanHang] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyBanHang] SET DB_CHAINING OFF
GO
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NOT NULL,
 CONSTRAINT [LoaiSanPham_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_LoaiSanPham] UNIQUE NONCLUSTERED 
(
	[TenLoaiSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON
INSERT [dbo].[LoaiSanPham] ([ID], [TenLoaiSP]) VALUES (6, N'Điều hòa')
INSERT [dbo].[LoaiSanPham] ([ID], [TenLoaiSP]) VALUES (1, N'Laptop')
INSERT [dbo].[LoaiSanPham] ([ID], [TenLoaiSP]) VALUES (3, N'Smartphone')
INSERT [dbo].[LoaiSanPham] ([ID], [TenLoaiSP]) VALUES (2, N'Tablet')
INSERT [dbo].[LoaiSanPham] ([ID], [TenLoaiSP]) VALUES (4, N'Tivi')
INSERT [dbo].[LoaiSanPham] ([ID], [TenLoaiSP]) VALUES (5, N'Tủ lạnh')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
/****** Object:  Table [dbo].[Kho]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKho] [nvarchar](50) NOT NULL,
 CONSTRAINT [Kho_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kho] ON
INSERT [dbo].[Kho] ([ID], [TenKho]) VALUES (1, N'Kho 1')
SET IDENTITY_INSERT [dbo].[Kho] OFF
/****** Object:  Table [dbo].[QuyenTruyCap]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenTruyCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](45) NOT NULL,
 CONSTRAINT [QuyenTruyCap_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_TenQuyenTruyCap] UNIQUE NONCLUSTERED 
(
	[TenQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[QuyenTruyCap] ON
INSERT [dbo].[QuyenTruyCap] ([ID], [TenQuyen]) VALUES (1, N'Administrator')
INSERT [dbo].[QuyenTruyCap] ([ID], [TenQuyen]) VALUES (3, N'Khách hàng')
INSERT [dbo].[QuyenTruyCap] ([ID], [TenQuyen]) VALUES (2, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[QuyenTruyCap] OFF
/****** Object:  Table [dbo].[TrangThaiTaiKhoan]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiTaiKhoan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [TrangThaiTaiKhoan_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_TenTrangThai] UNIQUE NONCLUSTERED 
(
	[TenTrangThai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TrangThaiTaiKhoan] ON
INSERT [dbo].[TrangThaiTaiKhoan] ([ID], [TenTrangThai]) VALUES (1, N'Đang hoạt động')
INSERT [dbo].[TrangThaiTaiKhoan] ([ID], [TenTrangThai]) VALUES (2, N'Khóa tạm thời')
INSERT [dbo].[TrangThaiTaiKhoan] ([ID], [TenTrangThai]) VALUES (3, N'Khóa vĩnh viễn')
SET IDENTITY_INSERT [dbo].[TrangThaiTaiKhoan] OFF
/****** Object:  Table [dbo].[TrangThaiDonHang]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [TrangThaiDonHang_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_TrangThaiDonHang] UNIQUE NONCLUSTERED 
(
	[TrangThai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TrangThaiDonHang] ON
INSERT [dbo].[TrangThaiDonHang] ([ID], [TrangThai]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[TrangThaiDonHang] ([ID], [TrangThai]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TrangThaiDonHang] ([ID], [TrangThai]) VALUES (3, N'Đang giao hàng')
INSERT [dbo].[TrangThaiDonHang] ([ID], [TrangThai]) VALUES (4, N'Hoàn tất')
INSERT [dbo].[TrangThaiDonHang] ([ID], [TrangThai]) VALUES (5, N'Hủy')
SET IDENTITY_INSERT [dbo].[TrangThaiDonHang] OFF
/****** Object:  Table [dbo].[SanPham]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiSanPham_ID] [int] NOT NULL,
	[TenSP] [nvarchar](150) NOT NULL,
	[DonGia] [decimal](18, 2) NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[ChatLieu] [nvarchar](50) NULL,
	[TrongLuong] [decimal](18, 2) NULL,
	[MoTa] [nvarchar](1000) NULL,
	[HinhAnh] [nvarchar](255) NULL,
 CONSTRAINT [SanPham_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([ID], [LoaiSanPham_ID], [TenSP], [DonGia], [DonViTinh], [ChatLieu], [TrongLuong], [MoTa], [HinhAnh]) VALUES (3, 1, N'Macbook Pro MPXQ2', CAST(28800000.00 AS Decimal(18, 2)), N'Chiếc', N'Nhôm', CAST(1.30 AS Decimal(18, 2)), N'Macbook pro', N'~/Images/products/macbook-pro.png')
INSERT [dbo].[SanPham] ([ID], [LoaiSanPham_ID], [TenSP], [DonGia], [DonViTinh], [ChatLieu], [TrongLuong], [MoTa], [HinhAnh]) VALUES (4, 1, N'Dell Inspriron 7447', CAST(15500000.00 AS Decimal(18, 2)), N'Chiếc', N'Nhựa cacbon', CAST(2.20 AS Decimal(18, 2)), N'Dell 7447 laptop gaming', N'~/Images/products/Inspiron-7447.png')
INSERT [dbo].[SanPham] ([ID], [LoaiSanPham_ID], [TenSP], [DonGia], [DonViTinh], [ChatLieu], [TrongLuong], [MoTa], [HinhAnh]) VALUES (5, 1, N'Dell 7447', CAST(15000000.00 AS Decimal(18, 2)), N'Chiếc', N'Nhựa cacbon', CAST(2.20 AS Decimal(18, 2)), N'Dell 7447', N'~/Images/products/Inspiron-7447.png')
INSERT [dbo].[SanPham] ([ID], [LoaiSanPham_ID], [TenSP], [DonGia], [DonViTinh], [ChatLieu], [TrongLuong], [MoTa], [HinhAnh]) VALUES (6, 1, N'Dell Inspriron 7447', CAST(15500000.00 AS Decimal(18, 2)), N'Chiếc', N'Nhựa cacbon', CAST(2.20 AS Decimal(18, 2)), N'Dell 7447 laptop gaming', N'~/Images/products/Inspiron-7447.png')
INSERT [dbo].[SanPham] ([ID], [LoaiSanPham_ID], [TenSP], [DonGia], [DonViTinh], [ChatLieu], [TrongLuong], [MoTa], [HinhAnh]) VALUES (7, 1, N'Dell Inspriron 7447', CAST(15500000.00 AS Decimal(18, 2)), N'Chiếc', N'Nhựa cacbon', CAST(2.20 AS Decimal(18, 2)), N'Dell 7447 laptop gaming', N'~/Images/products/Inspiron-7447.png')
INSERT [dbo].[SanPham] ([ID], [LoaiSanPham_ID], [TenSP], [DonGia], [DonViTinh], [ChatLieu], [TrongLuong], [MoTa], [HinhAnh]) VALUES (9, 1, N'Lenovo ABC', CAST(10000.00 AS Decimal(18, 2)), N'Chiếc', N'Nhựa cacbon', CAST(3.10 AS Decimal(18, 2)), N'Laptop lenovo ABC', N'~/Images/products/lenovo-thinkpad.png')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](45) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [varchar](255) NOT NULL,
	[SoDienThoai] [varchar](15) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[TaiKhoan] [varchar](32) NOT NULL,
	[MatKhau] [varchar](32) NOT NULL,
	[QuyenTruyCap_ID] [int] NOT NULL,
	[TrangThaiTaiKhoan_ID] [int] NOT NULL,
 CONSTRAINT [NguoiDung_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_SoDienThoai] UNIQUE NONCLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_TaiKhoan] UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_Unique] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON
INSERT [dbo].[NguoiDung] ([ID], [HoTen], [DiaChi], [Email], [SoDienThoai], [GioiTinh], [TaiKhoan], [MatKhau], [QuyenTruyCap_ID], [TrangThaiTaiKhoan_ID]) VALUES (1, N'Nguyễn Đức Mạnh', N'Bắc Ninh', N'manhnd@gmail.com', N'0192312314', 1, N'admin', N'123456a@', 1, 1)
INSERT [dbo].[NguoiDung] ([ID], [HoTen], [DiaChi], [Email], [SoDienThoai], [GioiTinh], [TaiKhoan], [MatKhau], [QuyenTruyCap_ID], [TrangThaiTaiKhoan_ID]) VALUES (2, N'Đỗ Hoàng Việt Hà', N'Hà Nội', N'hadhv@gmail.com', N'0123192313', 1, N'hadhv', N'123456a@', 3, 1)
INSERT [dbo].[NguoiDung] ([ID], [HoTen], [DiaChi], [Email], [SoDienThoai], [GioiTinh], [TaiKhoan], [MatKhau], [QuyenTruyCap_ID], [TrangThaiTaiKhoan_ID]) VALUES (4, N'Default', N'Default', N'Default', N'0123456789', 1, N'default', N'123456a@', 3, 3)
INSERT [dbo].[NguoiDung] ([ID], [HoTen], [DiaChi], [Email], [SoDienThoai], [GioiTinh], [TaiKhoan], [MatKhau], [QuyenTruyCap_ID], [TrangThaiTaiKhoan_ID]) VALUES (5, N'Đỗ Duy Mậu', N'Thái Bình', N'maudd@gmail.com', N'0123945831', 1, N'maudd', N'123456a@', 3, 1)
INSERT [dbo].[NguoiDung] ([ID], [HoTen], [DiaChi], [Email], [SoDienThoai], [GioiTinh], [TaiKhoan], [MatKhau], [QuyenTruyCap_ID], [TrangThaiTaiKhoan_ID]) VALUES (6, N'Nguyễn Duy Tuấn', N'Vĩnh Phúc', N'tuannd@gmail.com', N'0123192312', 1, N'tuannd', N'123456a@', 3, 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
/****** Object:  Table [dbo].[LoSanPham]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoSanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SanPham_ID] [int] NOT NULL,
	[Kho_ID] [int] NOT NULL,
	[TonKho] [int] NOT NULL,
	[ThoiGianNhap] [datetime] NOT NULL,
 CONSTRAINT [LoSanPham_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoSanPham] ON
INSERT [dbo].[LoSanPham] ([ID], [SanPham_ID], [Kho_ID], [TonKho], [ThoiGianNhap]) VALUES (5, 3, 1, 50, CAST(0x0000A8EC00000000 AS DateTime))
INSERT [dbo].[LoSanPham] ([ID], [SanPham_ID], [Kho_ID], [TonKho], [ThoiGianNhap]) VALUES (8, 4, 1, 32, CAST(0x0000A8E900000000 AS DateTime))
INSERT [dbo].[LoSanPham] ([ID], [SanPham_ID], [Kho_ID], [TonKho], [ThoiGianNhap]) VALUES (9, 5, 1, 11, CAST(0x0000A8E900000000 AS DateTime))
INSERT [dbo].[LoSanPham] ([ID], [SanPham_ID], [Kho_ID], [TonKho], [ThoiGianNhap]) VALUES (10, 6, 1, 9, CAST(0x0000A8E900000000 AS DateTime))
INSERT [dbo].[LoSanPham] ([ID], [SanPham_ID], [Kho_ID], [TonKho], [ThoiGianNhap]) VALUES (11, 7, 1, 18, CAST(0x0000A8E900000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[LoSanPham] OFF
/****** Object:  Table [dbo].[DonHang]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TrangThaiDonHang_ID] [int] NOT NULL,
	[NguoiDung_ID] [int] NOT NULL,
	[TenNguoiMua] [nvarchar](45) NOT NULL,
	[DienThoaiLienHe] [varchar](15) NOT NULL,
	[DiaChiGiaoHang] [nvarchar](255) NOT NULL,
	[NgayDatHang] [datetime] NOT NULL,
	[NguoiXacNhan] [nvarchar](45) NULL,
 CONSTRAINT [DonHang_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON
INSERT [dbo].[DonHang] ([ID], [TrangThaiDonHang_ID], [NguoiDung_ID], [TenNguoiMua], [DienThoaiLienHe], [DiaChiGiaoHang], [NgayDatHang], [NguoiXacNhan]) VALUES (1, 4, 5, N'Đỗ Duy Mậu', N'012831231', N'Thôn Phú Dư, Long Biên, Hà Nội', CAST(0x0000A8EC00000000 AS DateTime), NULL)
INSERT [dbo].[DonHang] ([ID], [TrangThaiDonHang_ID], [NguoiDung_ID], [TenNguoiMua], [DienThoaiLienHe], [DiaChiGiaoHang], [NgayDatHang], [NguoiXacNhan]) VALUES (3, 4, 5, N'Trần Văn Linh', N'012831231', N'Số 12, phố Dịch Vọng, Cầu Giấy, Hà Nội', CAST(0x0000A8ED00000000 AS DateTime), N'Nguyễn Đức Mạnh')
INSERT [dbo].[DonHang] ([ID], [TrangThaiDonHang_ID], [NguoiDung_ID], [TenNguoiMua], [DienThoaiLienHe], [DiaChiGiaoHang], [NgayDatHang], [NguoiXacNhan]) VALUES (5, 2, 2, N'Đỗ Hoàng Việt Hà', N'012319231', N'192 Quán Thánh, Ba Đình', CAST(0x0000A8ED00000000 AS DateTime), NULL)
INSERT [dbo].[DonHang] ([ID], [TrangThaiDonHang_ID], [NguoiDung_ID], [TenNguoiMua], [DienThoaiLienHe], [DiaChiGiaoHang], [NgayDatHang], [NguoiXacNhan]) VALUES (6, 1, 2, N'Phạm Văn Long', N'012931234', N'Số 12, Đường Cầu Giấy', CAST(0x0000A8ED00000000 AS DateTime), N'Nguyễn Đức Mạnh')
INSERT [dbo].[DonHang] ([ID], [TrangThaiDonHang_ID], [NguoiDung_ID], [TenNguoiMua], [DienThoaiLienHe], [DiaChiGiaoHang], [NgayDatHang], [NguoiXacNhan]) VALUES (7, 1, 2, N'Phạm Tuấn Tài', N'012391231', N'Số 88, đường Cầu Giấy, HN', CAST(0x0000A8ED00000000 AS DateTime), N'Nguyễn Đức Mạnh')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
/****** Object:  Table [dbo].[ChiTietLoSanPham]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietLoSanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LoSanPham_ID] [int] NOT NULL,
	[MaSKU] [varchar](20) NOT NULL,
 CONSTRAINT [ChiTietLoSanPham_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietLoSanPham] ON
INSERT [dbo].[ChiTietLoSanPham] ([ID], [LoSanPham_ID], [MaSKU]) VALUES (1, 5, N'DELLCLT180526K1_B')
INSERT [dbo].[ChiTietLoSanPham] ([ID], [LoSanPham_ID], [MaSKU]) VALUES (3, 5, N'DELLCLT180526K1_R')
INSERT [dbo].[ChiTietLoSanPham] ([ID], [LoSanPham_ID], [MaSKU]) VALUES (4, 5, N'DELLCLT180526K1_G')
INSERT [dbo].[ChiTietLoSanPham] ([ID], [LoSanPham_ID], [MaSKU]) VALUES (5, 5, N'DELLCLT180526K1_O')
INSERT [dbo].[ChiTietLoSanPham] ([ID], [LoSanPham_ID], [MaSKU]) VALUES (6, 5, N'DELLCLT180526K1_K')
SET IDENTITY_INSERT [dbo].[ChiTietLoSanPham] OFF
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 06/14/2018 15:24:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SanPham_ID] [int] NOT NULL,
	[DonHang_ID] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [decimal](18, 2) NOT NULL,
 CONSTRAINT [ChiTietDonHang_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (2, 3, 1, 2, CAST(57600000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (3, 4, 1, 1, CAST(24000000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (4, 5, 1, 1, CAST(15000000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (7, 5, 3, 1, CAST(14500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (10, 5, 5, 1, CAST(14500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (11, 5, 5, 1, CAST(14500000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (12, 5, 1, 1, CAST(15000000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (13, 5, 1, 1, CAST(15000000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (14, 5, 1, 1, CAST(15000000.00 AS Decimal(18, 2)))
INSERT [dbo].[ChiTietDonHang] ([ID], [SanPham_ID], [DonHang_ID], [SoLuong], [ThanhTien]) VALUES (15, 5, 1, 1, CAST(15000000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
/****** Object:  ForeignKey [SanPham_LoaiSanPham]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [SanPham_LoaiSanPham] FOREIGN KEY([LoaiSanPham_ID])
REFERENCES [dbo].[LoaiSanPham] ([ID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [SanPham_LoaiSanPham]
GO
/****** Object:  ForeignKey [NguoiDung_QuyenTruyCap]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [NguoiDung_QuyenTruyCap] FOREIGN KEY([QuyenTruyCap_ID])
REFERENCES [dbo].[QuyenTruyCap] ([ID])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [NguoiDung_QuyenTruyCap]
GO
/****** Object:  ForeignKey [NguoiDung_TrangThaiTaiKhoan]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [NguoiDung_TrangThaiTaiKhoan] FOREIGN KEY([TrangThaiTaiKhoan_ID])
REFERENCES [dbo].[TrangThaiTaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [NguoiDung_TrangThaiTaiKhoan]
GO
/****** Object:  ForeignKey [LoSanPham_Kho]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[LoSanPham]  WITH CHECK ADD  CONSTRAINT [LoSanPham_Kho] FOREIGN KEY([Kho_ID])
REFERENCES [dbo].[Kho] ([ID])
GO
ALTER TABLE [dbo].[LoSanPham] CHECK CONSTRAINT [LoSanPham_Kho]
GO
/****** Object:  ForeignKey [LoSanPham_SanPham]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[LoSanPham]  WITH CHECK ADD  CONSTRAINT [LoSanPham_SanPham] FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[LoSanPham] CHECK CONSTRAINT [LoSanPham_SanPham]
GO
/****** Object:  ForeignKey [DonHang_NguoiDung]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [DonHang_NguoiDung] FOREIGN KEY([NguoiDung_ID])
REFERENCES [dbo].[NguoiDung] ([ID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [DonHang_NguoiDung]
GO
/****** Object:  ForeignKey [DonHang_TrangThaiDonHang]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [DonHang_TrangThaiDonHang] FOREIGN KEY([TrangThaiDonHang_ID])
REFERENCES [dbo].[TrangThaiDonHang] ([ID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [DonHang_TrangThaiDonHang]
GO
/****** Object:  ForeignKey [ChiTietLoSanPham_LoSanPham]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[ChiTietLoSanPham]  WITH CHECK ADD  CONSTRAINT [ChiTietLoSanPham_LoSanPham] FOREIGN KEY([LoSanPham_ID])
REFERENCES [dbo].[LoSanPham] ([ID])
GO
ALTER TABLE [dbo].[ChiTietLoSanPham] CHECK CONSTRAINT [ChiTietLoSanPham_LoSanPham]
GO
/****** Object:  ForeignKey [ChiTietDonHang_DonHang]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [ChiTietDonHang_DonHang] FOREIGN KEY([DonHang_ID])
REFERENCES [dbo].[DonHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [ChiTietDonHang_DonHang]
GO
/****** Object:  ForeignKey [ChiTietDonHang_SanPham]    Script Date: 06/14/2018 15:24:34 ******/
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [ChiTietDonHang_SanPham] FOREIGN KEY([SanPham_ID])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [ChiTietDonHang_SanPham]
GO
