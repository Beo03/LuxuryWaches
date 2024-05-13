USE [master]
GO
/****** Object:  Database [BANDONGHO]    Script Date: 5/13/2024 11:08:42 PM ******/
CREATE DATABASE [BANDONGHO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BANDONGHO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BANDONGHO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BANDONGHO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BANDONGHO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BANDONGHO] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BANDONGHO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BANDONGHO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BANDONGHO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BANDONGHO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BANDONGHO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BANDONGHO] SET ARITHABORT OFF 
GO
ALTER DATABASE [BANDONGHO] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BANDONGHO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BANDONGHO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BANDONGHO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BANDONGHO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BANDONGHO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BANDONGHO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BANDONGHO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BANDONGHO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BANDONGHO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BANDONGHO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BANDONGHO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BANDONGHO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BANDONGHO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BANDONGHO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BANDONGHO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BANDONGHO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BANDONGHO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BANDONGHO] SET  MULTI_USER 
GO
ALTER DATABASE [BANDONGHO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BANDONGHO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BANDONGHO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BANDONGHO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BANDONGHO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BANDONGHO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BANDONGHO] SET QUERY_STORE = ON
GO
ALTER DATABASE [BANDONGHO] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BANDONGHO]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MADH] [int] NOT NULL,
	[MASP] [int] NOT NULL,
	[SOLUONG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETKM]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETKM](
	[MAKM] [char](7) NOT NULL,
	[MASP] [int] NOT NULL,
	[PHANTRAMKM] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MADH] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NULL,
	[TRANGTHAI] [nvarchar](20) NULL,
	[DIACHIGIAO] [ntext] NULL,
	[SDT] [varchar](12) NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[MOTA] [ntext] NULL,
	[TONGTIEN] [float] NULL,
 CONSTRAINT [PK__DONHANG__603F0047C8E1C028] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[MATK] [int] NULL,
	[TENKH] [nvarchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[SDT] [varchar](12) NULL,
	[GIOITINH] [nvarchar](3) NULL,
	[DIACHI] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MAKM] [char](7) NOT NULL,
	[TENKM] [nvarchar](50) NULL,
	[NGAYBD] [datetime] NULL,
	[NGAYKT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MALOAISP] [char](7) NOT NULL,
	[TENLOAISP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAISP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITK]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITK](
	[MALOAITK] [char](7) NOT NULL,
	[TENLOAITK] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAITK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] IDENTITY(1,1) NOT NULL,
	[TENSP] [nvarchar](50) NULL,
	[HINHLON] [varchar](50) NULL,
	[HINHNHO] [varchar](50) NULL,
	[MOTA] [ntext] NULL,
	[MATH] [int] NULL,
	[DANHGIA] [ntext] NULL,
	[SOLUONG] [int] NULL,
	[MALOAISP] [char](7) NULL,
	[DONGIA] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MATK] [int] IDENTITY(1,1) NOT NULL,
	[TENDN] [varchar](20) NULL,
	[MATKHAU] [varchar](32) NULL,
	[NGAYDANGKY] [datetime] NULL,
	[TRANGTHAI] [bit] NULL,
	[MALOAITK] [char](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 5/13/2024 11:08:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[MATH] [int] IDENTITY(1,1) NOT NULL,
	[TENTH] [nvarchar](50) NULL,
	[HINHTH] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MASP], [SOLUONG]) VALUES (1, 24, 1)
GO
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MASP], [SOLUONG]) VALUES (2, 24, 1)
GO
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MASP], [SOLUONG]) VALUES (3, 24, 1)
GO
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MASP], [SOLUONG]) VALUES (4, 1, 1)
GO
INSERT [dbo].[CHITIETKM] ([MAKM], [MASP], [PHANTRAMKM]) VALUES (N'KM00001', 14, 20)
GO
SET IDENTITY_INSERT [dbo].[DONHANG] ON 
GO
INSERT [dbo].[DONHANG] ([MADH], [MAKH], [TRANGTHAI], [DIACHIGIAO], [SDT], [NGAYDAT], [NGAYGIAO], [MOTA], [TONGTIEN]) VALUES (1, 1, N'0', N'sfad', N'0353973957', CAST(N'2024-05-13T11:57:03.907' AS DateTime), CAST(N'2024-05-20T11:57:03.907' AS DateTime), N'sd', 9790000)
GO
INSERT [dbo].[DONHANG] ([MADH], [MAKH], [TRANGTHAI], [DIACHIGIAO], [SDT], [NGAYDAT], [NGAYGIAO], [MOTA], [TONGTIEN]) VALUES (2, 1, N'0', N'sfad', N'0353973957', CAST(N'2024-05-13T19:36:08.397' AS DateTime), CAST(N'2024-05-20T19:36:08.397' AS DateTime), NULL, 9790000)
GO
INSERT [dbo].[DONHANG] ([MADH], [MAKH], [TRANGTHAI], [DIACHIGIAO], [SDT], [NGAYDAT], [NGAYGIAO], [MOTA], [TONGTIEN]) VALUES (3, 1, N'0', N'bien hoa', N'0988665318', CAST(N'2024-05-13T22:14:49.753' AS DateTime), CAST(N'2024-05-20T22:14:49.753' AS DateTime), N'Chó ân', 9790000)
GO
INSERT [dbo].[DONHANG] ([MADH], [MAKH], [TRANGTHAI], [DIACHIGIAO], [SDT], [NGAYDAT], [NGAYGIAO], [MOTA], [TONGTIEN]) VALUES (4, 1, N'0', N'bien hoa', N'0988665318', CAST(N'2024-05-13T22:22:30.380' AS DateTime), CAST(N'2024-05-20T22:22:30.380' AS DateTime), N'Cho an', 11930000)
GO
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 
GO
INSERT [dbo].[KHACHHANG] ([MAKH], [MATK], [TENKH], [EMAIL], [SDT], [GIOITINH], [DIACHI]) VALUES (1, 2, N'Hoàng', N'duchoangnd03@gmail.com', N'0123456789', N'1', N'Bien Hoa')
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
INSERT [dbo].[KHUYENMAI] ([MAKM], [TENKM], [NGAYBD], [NGAYKT]) VALUES (N'KM00001', N'a', CAST(N'2024-05-14T22:19:00.000' AS DateTime), CAST(N'2024-05-31T22:19:00.000' AS DateTime))
GO
INSERT [dbo].[LOAISANPHAM] ([MALOAISP], [TENLOAISP]) VALUES (N'LP00001', N'Đồng hồ nam')
GO
INSERT [dbo].[LOAISANPHAM] ([MALOAISP], [TENLOAISP]) VALUES (N'LP00002', N'Đồng hồ nữ')
GO
INSERT [dbo].[LOAITK] ([MALOAITK], [TENLOAITK]) VALUES (N'LK00001', N'Admin')
GO
INSERT [dbo].[LOAITK] ([MALOAITK], [TENLOAITK]) VALUES (N'LK00002', N'User')
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (1, N'Đồng hồ Tissot T106.417.16.031.00', N'SP00001.jpg', N'SP00001', N'Đồng hồ nam, Dây da, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire, Bảo hành toàn cầu 2 năm', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 3, N'LP00001', 11930000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (2, N'Đồng hồ Tissot T085.410.22.013.00', N'SP00002.jpg', N'SP00002', N'Đồng hồ nam, Dây da, Thép không gỉ 316L/Mạ PVD, Kính sapphire, Bảo hành toàn cầu 2 năm, ', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 4, N'LP00001', 10980000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (3, N'Đồng hồ Tissot T063.617.36.037.00', N'SP00003.jpg', N'SP00003', N'Đồng hồ nam, Dây da, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire, Bảo hành toàn cầu 2 năm', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 6, N'LP00001', 14060000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (4, N'Đồng hồ Frederique Constant FC-282AS5B4', N'SP00004.jpg', N'SP00004', N'Đồng hồ nam, Dây da, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire, Bảo hành toàn cầu 2 năm', 2, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 2, N'LP00001', 27040000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (5, N'Đồng hồ Tissot T006.408.22.037.00', N'SP00005.jpg', N'SP00005', N'Thiết kế truyền thống và chuẩn mực của nghệ thuật chế tác đồng hồ, Cỗ máy ETA 2824 được modified đem đến trải nghiệm cơ khí tuyệt vời, Dây da thanh lịch kết hợp cùng lớp vỏ thép trắng xám tạo nên tổng thể hài hòa tuyệt đối', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 4, N'LP00001', 36020000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (6, N'Đồng hồ Tissot T063.907.36.068.00', N'SP00006.jpg', N'SP00006', N'Đồng hồ nam, Dây da, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire, Bảo hành toàn cầu 2 năm', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 7, N'LP00001', 21940000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (7, N'Đồng hồ CK (Calvin Klein) K6L2M116', N'SP00007.jpg', N'SP00007', N'Đồng hồ nữ, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính cứng, Bảo hành toàn cầu 2 năm', 3, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 1, N'LP00002', 6820000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (8, N'Đồng hồ CK (Calvin Klein) K5U2M141', N'SP00008.jpg', N'SP00008', N'Đồng hồ nữ, Dây da, Vỏ Thép không gỉ 316L/Mạ PVD, Kính cứng, Bảo hành toàn cầu 2 năm', 3, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 3, N'LP00002', 7650000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (9, N'Đồng hồ Tissot T086.407.22.051.00', N'SP00009.jpg', N'SP00009', N'Đồng hồ nam, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Sapphire chống lóa', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 2, N'LP00001', 27900000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (10, N'Đồng hồ Frederique Constant FC-200V5S35', N'SP00010.jpg', N'SP00010', N'Đồng hồ nam, Dây da cá sấu, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 2, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 2, N'LP00001', 14630000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (11, N'Đồng hồ Tissot T060.407.22.051.00', N'SP00011.jpg', N'SP00011', N'Đồng hồ nam, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 3, N'LP00001', 23130000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (12, N'Đồng hồ Tissot T101.452.11.031.00', N'SP00012.jpg', N'SP00012', N'Đồng hồ nam, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 3, N'LP00001', 10260000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (13, N'Đồng hồ CK (Calvin Klein) K0K21107', N'SP00013.jpg', N'SP00013', N'Đồng hồ nam, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính cứng', 3, N'Chỉ có Xwatch Luxury mới giúp được bạn: - Bảo hành 5 năm cả lỗi người dùng theo tiêu chuẩn Thụy Sĩ - Đội ngũ kĩ thuật chuyên nghiệp được đào tạo bài bản từ chuyên gia Thụy Sĩ - Đổi trả trong 15 ngày - Hậu mãi: thay pin trọn đời, lau dầu miễn phí trong 5 năm', 5, N'LP00001', 7360000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (14, N'Đồng hồ Frederique Constant FC-312G4S4', N'SP00014.jpg', N'SP00014', N'Đồng hồ nam, Dây da cá sấu, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 2, N'Điều mà Linh ấn tượng nhất là chế độ bảo hành 5 năm theo tiêu chuẩn Thuỵ Sĩ cho cả lỗi người dùng. Điều này không phải nơi nào cũng có. Rõ ràng các bạn không chỉ là kinh doanh đơn thuần', 4, N'LP00001', 54300000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (15, N'Đồng hồ Frederique Constant FC-393RM5B4', N'SP00015.jpg', N'SP00015', N'Đồng hồ nam, Dây da cá sấu, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 2, N'“Du thuyền” sang trọng trên cổ tay. Sở hữu ngay tác phẩm độc đáo từ Frederique Constant', 4, N'LP00001', 87050000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (16, N'Đồng hồ Frederique Constant FC-303RMC6B4', N'SP00016.jpg', N'SP00016', N'Đồng hồ nam, Dây da cá sấu, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire, Lịch ngày, 26 chân kính, tần số 28800 alt/h', 2, N'Tại sao bạn nên sở hữu tác phẩm này: Gam trầm trên chiếc đồng hồ vừa cổ điển vừa mới lạ, Thiết kế đơn giản nhưng bộc lộ sự nam tính rõ rệt, Cỗ máy automatic Thụy Sĩ đỉnh cao', 1, N'LP00001', 46090000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (17, N'Đồng hồ Frederique Constant FC-330MC4P5', N'SP00017.jpg', N'SP00017', N'Đồng hồ nam, Dây da cá sấu, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 2, N'“Du thuyền” sang trọng trên cổ tay. Sở hữu ngay tác phẩm độc đáo từ Frederique Constant', 2, N'LP00001', 44240000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (18, N'Đồng hồ CK (Calvin Klein) K5U2S146', N'SP00018.jpg', N'SP00018', N'Đồng hồ nữ, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính cứng', 3, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 1, N'LP00002', 9720000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (19, N'Đồng hồ CK (Calvin Klein) K6L2SB16', N'SP00019.jpg', N'SP00019', N'Đồng hồ nữ, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính cứng', 3, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 2, N'LP00002', 7790000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (20, N'Đồng hồ Tissot T035.207.36.061.00', N'SP00020.jpg', N'SP00020', N'Đồng hồ nữ, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 2, N'LP00002', 22410000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (21, N'Đồng hồ Tissot T109.210.33.031.00', N'SP00021.jpg', N'SP00021', N'Đồng hồ nữ, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 1, N'LP00002', 6750000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (22, N'Đồng hồ Tissot T103.310.36.111.00', N'SP00022.jpg', N'SP00022', N'Đồng hồ nữ, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 3, N'LP00002', 11680000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (23, N'Đồng hồ Tissot T101.210.22.031.00', N'SP00023.jpg', N'SP00023', N'Đồng hồ nữ, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 2, N'LP00002', 10730000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (24, N'Đồng hồ Tissot T094.210.26.111.01', N'SP00024.jpg', N'SP00024', N'Đồng hồ nữ, Dây da, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 2, N'LP00002', 9790000)
GO
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [HINHLON], [HINHNHO], [MOTA], [MATH], [DANHGIA], [SOLUONG], [MALOAISP], [DONGIA]) VALUES (25, N'Đồng hồ Tissot T058.009.33.031.01', N'SP00025.jpg', N'SP00025', N'Đồng hồ nữ, Dây da, Thép không gỉ 316L/Mạ PVD, Vỏ Thép không gỉ 316L/Mạ PVD, Kính sapphire', 1, N'XWatch Luxury là địa chỉ đầu tiên tại Việt Nam thực hiện chiến dịch Tẩy chay Đồng hồ Fake - Bảo vệ lợi ích người tiêu dùng (xem chi tiết tại https://thamdinhdongho.vn/) . XWatch Luxury được ủy quyền trực tiếp từ các thương hiệu danh tiếng như Tissot, Frederique Constant, Calvin Klein, Ogival. 100% nhập khẩu nguyên chiếc, đầy đủ phụ kiện đi kèm (sổ, hộp, thẻ bảo hành toàn cầu) và giấy chứng nhận hàng chính hãng.', 2, N'LP00002', 11210000)
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 
GO
INSERT [dbo].[TAIKHOAN] ([MATK], [TENDN], [MATKHAU], [NGAYDANGKY], [TRANGTHAI], [MALOAITK]) VALUES (1, N'user', N'd95c2712448b912279457601ae231a42', CAST(N'2018-05-16T12:54:33.240' AS DateTime), 1, N'LK00002')
GO
INSERT [dbo].[TAIKHOAN] ([MATK], [TENDN], [MATKHAU], [NGAYDANGKY], [TRANGTHAI], [MALOAITK]) VALUES (2, N'admin', N'e10adc3949ba59abbe56e057f20f883e', CAST(N'2018-05-16T12:54:33.240' AS DateTime), 1, N'LK00001')
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
GO
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 
GO
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [HINHTH]) VALUES (1, N'Tissot', N'TH00001.jpg')
GO
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [HINHTH]) VALUES (2, N'Frederique Constant', N'TH00002.jpg')
GO
INSERT [dbo].[THUONGHIEU] ([MATH], [TENTH], [HINHTH]) VALUES (3, N'Calvin Klein', N'TH00003.jpg')
GO
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_DH] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONHANG] ([MADH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CTDH_DH]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_SP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CTDH_SP]
GO
ALTER TABLE [dbo].[CHITIETKM]  WITH CHECK ADD  CONSTRAINT [FK_CTKM_KM] FOREIGN KEY([MAKM])
REFERENCES [dbo].[KHUYENMAI] ([MAKM])
GO
ALTER TABLE [dbo].[CHITIETKM] CHECK CONSTRAINT [FK_CTKM_KM]
GO
ALTER TABLE [dbo].[CHITIETKM]  WITH CHECK ADD  CONSTRAINT [FK_CTKM_SP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETKM] CHECK CONSTRAINT [FK_CTKM_SP]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DH_KH] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DH_KH]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KH_TK] FOREIGN KEY([MATK])
REFERENCES [dbo].[TAIKHOAN] ([MATK])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KH_TK]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_LSP] FOREIGN KEY([MALOAISP])
REFERENCES [dbo].[LOAISANPHAM] ([MALOAISP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_LSP]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_TH] FOREIGN KEY([MATH])
REFERENCES [dbo].[THUONGHIEU] ([MATH])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_TH]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TK_LTK] FOREIGN KEY([MALOAITK])
REFERENCES [dbo].[LOAITK] ([MALOAITK])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TK_LTK]
GO
USE [master]
GO
ALTER DATABASE [BANDONGHO] SET  READ_WRITE 
GO
