USE [master]
GO
/****** Object:  Database [QUAN_LI_THU_VIEN1]    Script Date: 5/19/2024 11:57:15 PM ******/
CREATE DATABASE [QUAN_LI_THU_VIEN1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUAN_LI_THU_VIEN1', FILENAME = N'D:\sql\MSSQL16.MSSQLSERVER\MSSQL\DATA\QUAN_LI_THU_VIEN1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUAN_LI_THU_VIEN1_log', FILENAME = N'D:\sql\MSSQL16.MSSQLSERVER\MSSQL\DATA\QUAN_LI_THU_VIEN1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUAN_LI_THU_VIEN1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET RECOVERY FULL 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET  MULTI_USER 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUAN_LI_THU_VIEN1', N'ON'
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET QUERY_STORE = ON
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QUAN_LI_THU_VIEN1]
GO
/****** Object:  Table [dbo].[Cập_nhập_thông_tin_độc_giả]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cập_nhập_thông_tin_độc_giả](
	[Mã thẻ] [nvarchar](50) NOT NULL,
	[Họ tên] [nvarchar](50) NOT NULL,
	[Giới tính] [nchar](10) NOT NULL,
	[Ngày sinh] [nvarchar](50) NOT NULL,
	[Số sách đang mượn] [nchar](10) NOT NULL,
	[Số điện thoại] [nchar](10) NOT NULL,
	[Tình trạng thẻ] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cập_nhập_thông_tin_độc_giả] PRIMARY KEY CLUSTERED 
(
	[Mã thẻ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dang_ki_doc_gia]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dang_ki_doc_gia](
	[Họ tên] [varchar](50) NOT NULL,
	[Số điện thoại] [nvarchar](50) NOT NULL,
	[Ngày sinh] [nchar](10) NOT NULL,
	[Password] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dang_nhap_doc_gia]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dang_nhap_doc_gia](
	[Mã đăng nhập] [nvarchar](50) NOT NULL,
	[Mật khẩu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dang_nhap_doc_gia] PRIMARY KEY CLUSTERED 
(
	[Mã đăng nhập] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dang_nhap_thu_thu]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dang_nhap_thu_thu](
	[Mã đăng nhập] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lập_phiếu_mượn_sách]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lập_phiếu_mượn_sách](
	[Mã phiếu] [nvarchar](50) NOT NULL,
	[Ngày mượn] [date] NOT NULL,
	[Ngày trả] [date] NOT NULL,
	[Tình trạng sách] [nvarchar](50) NOT NULL,
	[Số lượng mượn] [nchar](10) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Độc giả] [nvarchar](50) NOT NULL,
	[Mã độc giả] [nvarchar](50) NOT NULL,
	[Người lập phiếu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_lap_phieu_muon_sach] PRIMARY KEY CLUSTERED 
(
	[Mã phiếu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lập_phiếu_phạt_cho_độc_giả]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lập_phiếu_phạt_cho_độc_giả](
	[Mã độc giả] [nvarchar](50) NOT NULL,
	[Họ tên] [nvarchar](50) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Số lượng sách mượn] [nchar](10) NOT NULL,
	[Ngày Mượn] [date] NOT NULL,
	[Ngày trả] [date] NOT NULL,
	[Ngày độc giả trả sách] [date] NOT NULL,
	[Tình trạng] [nvarchar](50) NOT NULL,
	[Số ngày quá hạn] [nvarchar](50) NOT NULL,
	[Gía trị phạt] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lập_phiếu_phạt_cho_độc_giả] PRIMARY KEY CLUSTERED 
(
	[Mã độc giả] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lập_phiếu_trả]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lập_phiếu_trả](
	[Mã phiếu] [nvarchar](50) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Độc giả] [nvarchar](50) NOT NULL,
	[Ngày trả] [date] NOT NULL,
	[Số lượng trả] [nchar](10) NOT NULL,
	[Người lập phiếu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_lap_phieu_tra] PRIMARY KEY CLUSTERED 
(
	[Mã phiếu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quản_lí_phiếu_nhắc_nhở]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quản_lí_phiếu_nhắc_nhở](
	[Mã độc giả] [nvarchar](50) NOT NULL,
	[Tên độc giả] [nvarchar](50) NOT NULL,
	[Số lần vi phạm] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Phieu_nhac_nho] PRIMARY KEY CLUSTERED 
(
	[Mã độc giả] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quản_lí_sách]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quản_lí_sách](
	[Mã sách] [nvarchar](50) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Năm xuất bản] [nchar](10) NOT NULL,
	[Số lượng] [nchar](10) NOT NULL,
	[Tác giả xuất bản] [nvarchar](50) NOT NULL,
	[Ngôn ngữ] [nvarchar](50) NOT NULL,
	[Thể loại] [nvarchar](50) NOT NULL,
	[Tình trạng] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quản_lí_sách] PRIMARY KEY CLUSTERED 
(
	[Mã sách] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tạo_tài_khoản_độc_giả]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tạo_tài_khoản_độc_giả](
	[Mã thẻ] [nvarchar](50) NOT NULL,
	[Họ tên] [nvarchar](50) NOT NULL,
	[Giới tính] [nchar](10) NOT NULL,
	[Số điện thoại] [nchar](10) NOT NULL,
	[Ngày sinh] [nvarchar](50) NOT NULL,
	[Phí thường niên] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tạo_tài_khoản_độc_giả] PRIMARY KEY CLUSTERED 
(
	[Mã thẻ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tạo_thẻ_người_dùng]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tạo_thẻ_người_dùng](
	[Mã thẻ] [nvarchar](50) NOT NULL,
	[Họ tên] [nvarchar](50) NOT NULL,
	[Giới tính] [nchar](10) NOT NULL,
	[Ngày sinh] [date] NOT NULL,
	[Số điện thoại] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Tao_the_nguoi_dung] PRIMARY KEY CLUSTERED 
(
	[Mã thẻ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thống_kê_bạn_đọc]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thống_kê_bạn_đọc](
	[Mã độc giả] [nvarchar](50) NOT NULL,
	[Họ tên] [nvarchar](50) NOT NULL,
	[Giới tính] [nchar](10) NOT NULL,
	[Ngày sinh] [date] NOT NULL,
	[Số điện thoại] [nchar](10) NOT NULL,
	[Số lần mượn] [nchar](10) NOT NULL,
	[Loại sách] [nvarchar](50) NOT NULL,
	[Số lượng] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Thống_kê_bạn_đọc] PRIMARY KEY CLUSTERED 
(
	[Mã độc giả] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thống_kê_báo_cáo_bạn_đọc]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thống_kê_báo_cáo_bạn_đọc](
	[Mã thẻ] [nvarchar](50) NOT NULL,
	[Họ tên] [nvarchar](50) NOT NULL,
	[Giới tính] [nchar](10) NOT NULL,
	[Ngày sinh] [nvarchar](50) NOT NULL,
	[Số sách đang mượn] [nvarchar](50) NOT NULL,
	[Số điện thoại] [nchar](10) NOT NULL,
	[Tình trạng mượn sách] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_thong_ke_tra_cuu_ban_doc] PRIMARY KEY CLUSTERED 
(
	[Mã thẻ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thống_kê_sách_hỏng]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thống_kê_sách_hỏng](
	[Mã sách] [nvarchar](50) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Tình trạng sách] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Thong_ke_sach_hong] PRIMARY KEY CLUSTERED 
(
	[Mã sách] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thong_ke_so_lieu]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thong_ke_so_lieu](
	[Tên sách] [nvarchar](50) NOT NULL,
	[Mã sách] [nvarchar](50) NOT NULL,
	[Số lần mượn mỗi quyển] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Thong_ke_so_lieu] PRIMARY KEY CLUSTERED 
(
	[Mã sách] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thống_kê_tiền_nộp_phạt]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thống_kê_tiền_nộp_phạt](
	[Mã sách] [nvarchar](50) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Mã độc giả] [nvarchar](50) NOT NULL,
	[Tình trạng sách] [nvarchar](50) NOT NULL,
	[Tiền vi phạm] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Thống_kê_tiền_nộp_phạt] PRIMARY KEY CLUSTERED 
(
	[Mã sách] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thống_kê_tra_cứu_sách]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thống_kê_tra_cứu_sách](
	[Mã sách] [nvarchar](50) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Năm xuất bản] [nchar](10) NOT NULL,
	[Số lượng] [nchar](10) NOT NULL,
	[Tác giả xuất bản] [nvarchar](50) NOT NULL,
	[Ngôn ngữ] [nvarchar](50) NOT NULL,
	[Thể loại] [nvarchar](50) NOT NULL,
	[Tình trạng] [nvarchar](50) NOT NULL,
	[Số lần mượn] [nchar](10) NOT NULL,
 CONSTRAINT [PK_thong_ke_tra_cuu_sach] PRIMARY KEY CLUSTERED 
(
	[Mã sách] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thong_tin_tao_tai_khoan_thuthu]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thong_tin_tao_tai_khoan_thuthu](
	[Mã tài khoản] [nvarchar](50) NOT NULL,
	[Họ tên] [nvarchar](50) NOT NULL,
	[Giới tính] [nchar](10) NOT NULL,
	[Ngày sinh] [date] NOT NULL,
	[Số điện thoại] [nchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Thong_tin_tao_tai_khoan_thuthu] PRIMARY KEY CLUSTERED 
(
	[Mã tài khoản] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tra_cứu_thông_tin_mượn_trả_độc_giả]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tra_cứu_thông_tin_mượn_trả_độc_giả](
	[Mã phiếu] [nvarchar](50) NOT NULL,
	[Ngày mượn] [nvarchar](50) NOT NULL,
	[Ngày trả] [nvarchar](50) NOT NULL,
	[Tình trạng] [nchar](10) NOT NULL,
	[Số lượng] [nchar](10) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Độc giả] [nvarchar](50) NOT NULL,
	[Mã độc giả] [nvarchar](50) NOT NULL,
	[Người làm phiếu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tra_cuu_thong_tin_muon_tra_doc_gia] PRIMARY KEY CLUSTERED 
(
	[Mã phiếu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trang_chủ_dành_cho_khách]    Script Date: 5/19/2024 11:57:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trang_chủ_dành_cho_khách](
	[Mã sách] [nvarchar](50) NOT NULL,
	[Tên sách] [nvarchar](50) NOT NULL,
	[Thể loại] [nvarchar](50) NOT NULL,
	[Năm xuất bản] [nchar](10) NOT NULL,
	[Tác giả] [nvarchar](50) NOT NULL,
	[Tình trạng] [nvarchar](50) NOT NULL,
	[Loại sách] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_trang_chu_sang_cho_doc_gia] PRIMARY KEY CLUSTERED 
(
	[Mã sách] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cập_nhập_thông_tin_độc_giả]  WITH CHECK ADD  CONSTRAINT [FK_Cập_nhập_thông_tin_độc_giả_dang_nhap_doc_gia] FOREIGN KEY([Mã thẻ])
REFERENCES [dbo].[dang_nhap_doc_gia] ([Mã đăng nhập])
GO
ALTER TABLE [dbo].[Cập_nhập_thông_tin_độc_giả] CHECK CONSTRAINT [FK_Cập_nhập_thông_tin_độc_giả_dang_nhap_doc_gia]
GO
ALTER TABLE [dbo].[Cập_nhập_thông_tin_độc_giả]  WITH CHECK ADD  CONSTRAINT [FK_Cập_nhập_thông_tin_độc_giả_Tạo_tài_khoản_độc_giả1] FOREIGN KEY([Mã thẻ])
REFERENCES [dbo].[Tạo_tài_khoản_độc_giả] ([Mã thẻ])
GO
ALTER TABLE [dbo].[Cập_nhập_thông_tin_độc_giả] CHECK CONSTRAINT [FK_Cập_nhập_thông_tin_độc_giả_Tạo_tài_khoản_độc_giả1]
GO
ALTER TABLE [dbo].[Cập_nhập_thông_tin_độc_giả]  WITH CHECK ADD  CONSTRAINT [FK_Cập_nhập_thông_tin_độc_giả_Tạo_thẻ_người_dùng] FOREIGN KEY([Mã thẻ])
REFERENCES [dbo].[Tạo_thẻ_người_dùng] ([Mã thẻ])
GO
ALTER TABLE [dbo].[Cập_nhập_thông_tin_độc_giả] CHECK CONSTRAINT [FK_Cập_nhập_thông_tin_độc_giả_Tạo_thẻ_người_dùng]
GO
ALTER TABLE [dbo].[Cập_nhập_thông_tin_độc_giả]  WITH CHECK ADD  CONSTRAINT [FK_Cập_nhập_thông_tin_độc_giả_Thống_kê_bạn_đọc] FOREIGN KEY([Mã thẻ])
REFERENCES [dbo].[Thống_kê_bạn_đọc] ([Mã độc giả])
GO
ALTER TABLE [dbo].[Cập_nhập_thông_tin_độc_giả] CHECK CONSTRAINT [FK_Cập_nhập_thông_tin_độc_giả_Thống_kê_bạn_đọc]
GO
ALTER TABLE [dbo].[dang_ki_doc_gia]  WITH CHECK ADD  CONSTRAINT [FK_dang_ki_doc_gia_Tạo_tài_khoản_độc_giả] FOREIGN KEY([Số điện thoại])
REFERENCES [dbo].[Tạo_tài_khoản_độc_giả] ([Mã thẻ])
GO
ALTER TABLE [dbo].[dang_ki_doc_gia] CHECK CONSTRAINT [FK_dang_ki_doc_gia_Tạo_tài_khoản_độc_giả]
GO
ALTER TABLE [dbo].[dang_nhap_thu_thu]  WITH CHECK ADD  CONSTRAINT [FK_dang_nhap_thu_thu_Thong_tin_tao_tai_khoan_thuthu] FOREIGN KEY([Mã đăng nhập])
REFERENCES [dbo].[Thong_tin_tao_tai_khoan_thuthu] ([Mã tài khoản])
GO
ALTER TABLE [dbo].[dang_nhap_thu_thu] CHECK CONSTRAINT [FK_dang_nhap_thu_thu_Thong_tin_tao_tai_khoan_thuthu]
GO
ALTER TABLE [dbo].[Lập_phiếu_mượn_sách]  WITH CHECK ADD  CONSTRAINT [FK_Lập_phiếu_mượn_sách_Lập_phiếu_phạt_cho_độc_giả] FOREIGN KEY([Mã độc giả])
REFERENCES [dbo].[Lập_phiếu_phạt_cho_độc_giả] ([Mã độc giả])
GO
ALTER TABLE [dbo].[Lập_phiếu_mượn_sách] CHECK CONSTRAINT [FK_Lập_phiếu_mượn_sách_Lập_phiếu_phạt_cho_độc_giả]
GO
ALTER TABLE [dbo].[Lập_phiếu_mượn_sách]  WITH CHECK ADD  CONSTRAINT [FK_Lập_phiếu_mượn_sách_Thống_kê_bạn_đọc] FOREIGN KEY([Mã độc giả])
REFERENCES [dbo].[Thống_kê_bạn_đọc] ([Mã độc giả])
GO
ALTER TABLE [dbo].[Lập_phiếu_mượn_sách] CHECK CONSTRAINT [FK_Lập_phiếu_mượn_sách_Thống_kê_bạn_đọc]
GO
ALTER TABLE [dbo].[Lập_phiếu_mượn_sách]  WITH CHECK ADD  CONSTRAINT [FK_Lập_phiếu_mượn_sách_Tra_cứu_thông_tin_mượn_trả_độc_giả] FOREIGN KEY([Mã phiếu])
REFERENCES [dbo].[Tra_cứu_thông_tin_mượn_trả_độc_giả] ([Mã phiếu])
GO
ALTER TABLE [dbo].[Lập_phiếu_mượn_sách] CHECK CONSTRAINT [FK_Lập_phiếu_mượn_sách_Tra_cứu_thông_tin_mượn_trả_độc_giả]
GO
ALTER TABLE [dbo].[Lập_phiếu_phạt_cho_độc_giả]  WITH CHECK ADD  CONSTRAINT [FK_Lập_phiếu_phạt_cho_độc_giả_Quản_lí_phiếu_nhắc_nhở] FOREIGN KEY([Mã độc giả])
REFERENCES [dbo].[Quản_lí_phiếu_nhắc_nhở] ([Mã độc giả])
GO
ALTER TABLE [dbo].[Lập_phiếu_phạt_cho_độc_giả] CHECK CONSTRAINT [FK_Lập_phiếu_phạt_cho_độc_giả_Quản_lí_phiếu_nhắc_nhở]
GO
ALTER TABLE [dbo].[Lập_phiếu_trả]  WITH CHECK ADD  CONSTRAINT [FK_Lập_phiếu_trả_Lập_phiếu_mượn_sách] FOREIGN KEY([Mã phiếu])
REFERENCES [dbo].[Lập_phiếu_mượn_sách] ([Mã phiếu])
GO
ALTER TABLE [dbo].[Lập_phiếu_trả] CHECK CONSTRAINT [FK_Lập_phiếu_trả_Lập_phiếu_mượn_sách]
GO
ALTER TABLE [dbo].[Quản_lí_sách]  WITH CHECK ADD  CONSTRAINT [FK_Quản_lí_sách_Thống_kê_tra_cứu_sách] FOREIGN KEY([Mã sách])
REFERENCES [dbo].[Thống_kê_tra_cứu_sách] ([Mã sách])
GO
ALTER TABLE [dbo].[Quản_lí_sách] CHECK CONSTRAINT [FK_Quản_lí_sách_Thống_kê_tra_cứu_sách]
GO
ALTER TABLE [dbo].[Thống_kê_báo_cáo_bạn_đọc]  WITH CHECK ADD  CONSTRAINT [FK_Thống_kê_báo_cáo_bạn_đọc_Cập_nhập_thông_tin_độc_giả] FOREIGN KEY([Mã thẻ])
REFERENCES [dbo].[Cập_nhập_thông_tin_độc_giả] ([Mã thẻ])
GO
ALTER TABLE [dbo].[Thống_kê_báo_cáo_bạn_đọc] CHECK CONSTRAINT [FK_Thống_kê_báo_cáo_bạn_đọc_Cập_nhập_thông_tin_độc_giả]
GO
ALTER TABLE [dbo].[Thống_kê_sách_hỏng]  WITH CHECK ADD  CONSTRAINT [FK_Thống_kê_sách_hỏng_Quản_lí_sách] FOREIGN KEY([Mã sách])
REFERENCES [dbo].[Quản_lí_sách] ([Mã sách])
GO
ALTER TABLE [dbo].[Thống_kê_sách_hỏng] CHECK CONSTRAINT [FK_Thống_kê_sách_hỏng_Quản_lí_sách]
GO
ALTER TABLE [dbo].[Thong_ke_so_lieu]  WITH CHECK ADD  CONSTRAINT [FK_Thong_ke_so_lieu_Quản_lí_sách] FOREIGN KEY([Mã sách])
REFERENCES [dbo].[Quản_lí_sách] ([Mã sách])
GO
ALTER TABLE [dbo].[Thong_ke_so_lieu] CHECK CONSTRAINT [FK_Thong_ke_so_lieu_Quản_lí_sách]
GO
ALTER TABLE [dbo].[Thống_kê_tiền_nộp_phạt]  WITH CHECK ADD  CONSTRAINT [FK_Thống_kê_tiền_nộp_phạt_Lập_phiếu_phạt_cho_độc_giả] FOREIGN KEY([Mã độc giả])
REFERENCES [dbo].[Lập_phiếu_phạt_cho_độc_giả] ([Mã độc giả])
GO
ALTER TABLE [dbo].[Thống_kê_tiền_nộp_phạt] CHECK CONSTRAINT [FK_Thống_kê_tiền_nộp_phạt_Lập_phiếu_phạt_cho_độc_giả]
GO
ALTER TABLE [dbo].[Thống_kê_tiền_nộp_phạt]  WITH CHECK ADD  CONSTRAINT [FK_Thống_kê_tiền_nộp_phạt_Thống_kê_tra_cứu_sách] FOREIGN KEY([Mã sách])
REFERENCES [dbo].[Thống_kê_tra_cứu_sách] ([Mã sách])
GO
ALTER TABLE [dbo].[Thống_kê_tiền_nộp_phạt] CHECK CONSTRAINT [FK_Thống_kê_tiền_nộp_phạt_Thống_kê_tra_cứu_sách]
GO
ALTER TABLE [dbo].[Trang_chủ_dành_cho_khách]  WITH CHECK ADD  CONSTRAINT [FK_Trang_chủ_dành_cho_khách_Thống_kê_tra_cứu_sách] FOREIGN KEY([Mã sách])
REFERENCES [dbo].[Thống_kê_tra_cứu_sách] ([Mã sách])
GO
ALTER TABLE [dbo].[Trang_chủ_dành_cho_khách] CHECK CONSTRAINT [FK_Trang_chủ_dành_cho_khách_Thống_kê_tra_cứu_sách]
GO
USE [master]
GO
ALTER DATABASE [QUAN_LI_THU_VIEN1] SET  READ_WRITE 
GO
