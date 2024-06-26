CREATE DATABASE PHANMEM
GO
USE [PHANMEM]
GO
/****** Object:  Table [dbo].[login]    Script Date: 5/20/2024 8:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[idLogin] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[confirmPassword] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 5/20/2024 8:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 5/20/2024 8:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUON](
	[MAPM] [nvarchar](20) NOT NULL,
	[MADOCGIA] [nvarchar](20) NULL,
	[MASACH] [nvarchar](20) NULL,
	[MATHUTHU] [nvarchar](20) NULL,
	[NGAYMUON] [date] NULL,
	[NGAYHENTRA] [date] NULL,
	[TRANGTHAI] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUTRA]    Script Date: 5/20/2024 8:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTRA](
	[MAPT] [nvarchar](20) NOT NULL,
	[MAPM] [nvarchar](20) NULL,
	[MADOCGIA] [nvarchar](20) NULL,
	[MATHUTHU] [nvarchar](20) NULL,
	[MASACH] [nvarchar](20) NULL,
	[NGAYTRA] [date] NULL,
	[PHITREHAN] [float] NULL,
	[TRANGTHAI] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLYDOCGIA]    Script Date: 5/20/2024 8:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLYDOCGIA](
	[MADOCGIA] [nvarchar](20) NOT NULL,
	[TEN] [nvarchar](20) NULL,
	[GIOITINH] [nvarchar](20) NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [nvarchar](20) NULL,
	[SDT] [nvarchar](20) NULL,
	[EMAIL] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[MADOCGIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLYSACH]    Script Date: 5/20/2024 8:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLYSACH](
	[MASACH] [nvarchar](20) NOT NULL,
	[TENSACH] [nvarchar](20) NOT NULL,
	[LOAISACH] [nvarchar](20) NULL,
	[NXB] [nvarchar](20) NULL,
	[GIA] [float] NULL,
	[TENTACGIA] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLYTHUTHU]    Script Date: 5/20/2024 8:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLYTHUTHU](
	[MATHUTHU] [nvarchar](20) NOT NULL,
	[TEN] [nvarchar](20) NULL,
	[GIOITINH] [nvarchar](20) NULL,
	[NGAYSINH] [date] NULL,
	[DIACHI] [nvarchar](20) NULL,
	[SDT] [nvarchar](20) NULL,
	[EMAIL] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATHUTHU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[register]    Script Date: 5/20/2024 8:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[idRegister] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[repassword] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idRegister] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([idLogin], [username], [password], [confirmPassword]) VALUES (1, N'vietdeptrai', N'test', N'test')
INSERT [dbo].[login] ([idLogin], [username], [password], [confirmPassword]) VALUES (2, N'quocviet', N'test', N'test')
INSERT [dbo].[login] ([idLogin], [username], [password], [confirmPassword]) VALUES (3, N'vanchien', N'vanchien', N'vanchien')
INSERT [dbo].[login] ([idLogin], [username], [password], [confirmPassword]) VALUES (24, N'phamtuanvu', N'tuanvu123', N'tuanvu123')
INSERT [dbo].[login] ([idLogin], [username], [password], [confirmPassword]) VALUES (25, N'nguyenxuanthuong', N'xuanthuong123', N'xuanthuong123')
INSERT [dbo].[login] ([idLogin], [username], [password], [confirmPassword]) VALUES (26, N'tohoangvu', N'hoangvu123', N'hoangvu123')
INSERT [dbo].[login] ([idLogin], [username], [password], [confirmPassword]) VALUES (27, N'tranvanchien', N'vanchien2402', N'vanchien2402')
SET IDENTITY_INSERT [dbo].[login] OFF
GO
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (3, N'adada', CAST(N'2024-05-04' AS Date), N'Nam', N'dádasdas', N'12312321')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (5, N'tuán vu', CAST(N'2024-04-23' AS Date), N'Nữ', N'da', N'12312')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (7, N'dâda', CAST(N'2024-05-04' AS Date), N'Nam', N'dddd', N'233')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (8, N'quốc việt', CAST(N'2003-03-04' AS Date), N'Nam', N'nghệ an', N'0367020403')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (9, N'quốc việt', CAST(N'2003-03-04' AS Date), N'Nam', N'nghệ an', N'0367020403')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (10, N'quốc việt', CAST(N'2003-03-04' AS Date), N'Nam', N'nghệ an', N'0367020403')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (11, N'quốc việt', CAST(N'2003-03-04' AS Date), N'Nam', N'nghệ an', N'0367020403')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (12, N'quốc việt', CAST(N'2003-03-04' AS Date), N'Nam', N'nghệ an', N'0367020403')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (13, N'quốc việt', CAST(N'2003-03-04' AS Date), N'Nam', N'nghệ an', N'0367020403')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai]) VALUES (14, N'quốc việt', CAST(N'2003-03-04' AS Date), N'Nam', N'nghệ an', N'0367020403')
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
GO
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'33', N'DG003', N'S002', N'TT003', CAST(N'2024-05-06' AS Date), CAST(N'2024-05-30' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM005', N'DG005', N'S005', N'TT001', CAST(N'2024-01-01' AS Date), CAST(N'2024-05-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM006', N'DG006', N'S006', N'TT002', CAST(N'2024-02-01' AS Date), CAST(N'2024-02-15' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM009', N'DG006', N'S004', N'TT001', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-08' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM010', N'DG003', N'S004', N'TT002', CAST(N'2024-06-01' AS Date), CAST(N'2024-05-08' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM011', N'DG006', N'S006', N'TT003', CAST(N'2024-05-06' AS Date), CAST(N'2024-05-23' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM014', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM015', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM016', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM017', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM018', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM019', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM020', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM021', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM022', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM023', N'DG004', N'S004', N'TT002', CAST(N'2024-05-22' AS Date), CAST(N'2024-05-14' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM024', N'DG007', N'S006', N'TT002', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-08' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM025', N'DG006', N'S005', N'TT003', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-21' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM027', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM028', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM031', N'DG002', N'S005', N'TT004', CAST(N'2024-05-17' AS Date), CAST(N'2024-05-18' AS Date), N'Đang mượn')
GO
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'3FCD0', N'33', N'DG003', N'TT003', N'S002', CAST(N'2024-05-30' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'83BB9', N'PM031', N'DG002', N'TT004', N'S005', CAST(N'2024-05-18' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT005', N'PM005', N'DG005', N'TT001', N'S005', CAST(N'2023-04-20' AS Date), 10, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT006', N'PM006', N'DG006', N'TT002', N'S006', CAST(N'2023-04-25' AS Date), 0, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT007', N'PM024', N'DG007', N'TT002', N'S004', CAST(N'2023-05-24' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT009', N'PM009', N'DG009', N'TT001', N'S009', CAST(N'2023-05-10' AS Date), 7.8, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT010', N'PM010', N'DG010', N'TT002', N'S010', CAST(N'2023-05-15' AS Date), 0, N'Đã trả')
GO
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG001', N'Phạm Tuấn Vũ', N'Nam', CAST(N'2003-01-14' AS Date), N'Hải Dương', N'0833190783', N'vu@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG002', N'Võ Quốc Việt', N'Nam', CAST(N'2003-03-04' AS Date), N'Nghệ An', N'0367020403', N'viet@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG003', N'PHẠM TRẦN ANH', N'Nam', CAST(N'2003-08-06' AS Date), N'Hà Nội', N'123456789', N'anh@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG004', N'TRẦN HÀ ĐĂNG', N'Nam', CAST(N'2003-12-29' AS Date), N'Hải Phòng', N'987654321', N'dang@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG005', N'PHẠM TIẾN DUY', N'Nam', CAST(N'2003-09-27' AS Date), N'Hà Tĩnh', N'3444445555', N'pduy@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG006', N'LÊ THỊ GIANG', N'Nữ', CAST(N'2003-04-01' AS Date), N'Thanh Hóa', N'8888777733', N'thigiang@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG007', N'PHẠM HƯƠNG GIANG', N'Nữ', CAST(N'2003-08-03' AS Date), N'Lào Cai', N'8777666655', N'huonggiang@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG008', N'TRỊNH THỊ GIANG', N'Nữ', CAST(N'2003-10-27' AS Date), N'Cà Mau', N'3333344444', N'trinhgiang@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG009', N'PHẠM HỒNG HẠNH', N'Nữ', CAST(N'2003-09-11' AS Date), N'Thái Nguyên', N'7883775533', N'hanh@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG010', N'MAI PHI HIẾU', N'Nam', CAST(N'2003-06-11' AS Date), N'Thanh Hóa', N'7785993745', N'hieu@gmail.com')
INSERT [dbo].[QUANLYDOCGIA] ([MADOCGIA], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'DG011', N'Trần Văn Chiến', N'Nam', CAST(N'2003-02-24' AS Date), N'Hải Phòng', N'0367235235', N'vanchien2402@gmail.com')
GO
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S001', N'Lập trình Python', N'Sách Kỹ Thuật', N'NXB Giáo Dục', 120.5, N'Nguyễn Văn A')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S002', N'Đắc Nhân Tâm', N'Sách Tự Phát Triển', N'NXB Trẻ', 75, N'Nguyễn Văn B')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S003', N'Tôi Thấy ', N'Tiểu Thuyết', N'NXB Hội Nhà Văn', 90.8, N'Nguyễn Nhật Ánh')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S004', N'Tuổi Trẻ ', N'Sách Tự Phát Triển', N'NXB Trẻ', 85, N'Rosie Nguyễn')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S005', N'Hạnh Phúc ', N'Sách Tâm Lý', N'NXB Phụ Nữ', 68, N'Thích Nhất Hạnh')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S006', N'Chiến Tranh', N'Tiểu Thuyết Lịch Sử', N'NXB Kim Đồng', 120, N'Lev Tolstoy')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S007', N'Một Đời Sống', N'Tiểu Thuyết', N'NXB Hội Nhà Văn', 95, N'Dostoevsky')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S008', N'Số Đỏ', N'Tiểu Thuyết Xã Hội', N'NXB Văn Học', 80, N'Vũ Trọng Phụng')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S009', N'Hoàng Tử Bé', N'Sách Thiếu Nhi', N'NXB Trẻ', 50, N'Antoine de ')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S010', N'Tôi Là Ai', N'Sách Tâm Lý', N'NXB Hồng Đức', 60, N'Thích Nhất Hạnh')
INSERT [dbo].[QUANLYSACH] ([MASACH], [TENSACH], [LOAISACH], [NXB], [GIA], [TENTACGIA]) VALUES (N'S011', N'Lập trình javascript', N'Sách lập trình', N'NXB Elon Musk', 200, N'Elon Musk')
GO
INSERT [dbo].[QUANLYTHUTHU] ([MATHUTHU], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TT001', N'Phạm Tuấn Vũ', N'Nam', CAST(N'2003-01-14' AS Date), N'Hải Dương', N'0833190783', N'vu@gmail.com')
INSERT [dbo].[QUANLYTHUTHU] ([MATHUTHU], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TT002', N'Võ Quốc Việt', N'Nam', CAST(N'2003-03-04' AS Date), N'Nghệ An', N'0367020403', N'viet@gmail.com')
INSERT [dbo].[QUANLYTHUTHU] ([MATHUTHU], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TT003', N'Tô Hoàng Vũ', N'Nam', CAST(N'2003-08-06' AS Date), N'Thái Nguyên', N'123456789', N'thv@gmail.com')
INSERT [dbo].[QUANLYTHUTHU] ([MATHUTHU], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TT004', N'Nguyễn Xuân Thưởng', N'Nam', CAST(N'2003-05-07' AS Date), N'Hà Nội', N'02352358', N'thuong@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[register] ON 

INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (1, N'admin', N'test', N'test')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (2, N'quocviet', N'viet123', N'viet123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (3, N'thuong', N'123', N'123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (29, N'vanchien2402', N'vanchien', N'vanchien')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (31, N'thuong', N'thuong123', N'thuong123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (39, N'voviet', N'anhviet', N'anhviet')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (40, N'quocviet123```~', N'viet123', N'viet123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (41, N'test`', N'test', N'test')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (42, N'test`', N'test', N'test')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (44, N'vietNA', N'viet123', N'viet123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (45, N'phamtuanvu', N'tuanvu123', N'tuanvu123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (46, N'nguyenxuanthuong', N'xuanthuong123', N'xuanthuong123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (47, N'tohoangvu', N'hoangvu123', N'hoangvu123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (48, N'tranvanchien', N'vanchien2402', N'vanchien2402')
SET IDENTITY_INSERT [dbo].[register] OFF
GO
ALTER TABLE [dbo].[PHIEUTRA] ADD  DEFAULT ('Ðã tr?') FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD FOREIGN KEY([MADOCGIA])
REFERENCES [dbo].[QUANLYDOCGIA] ([MADOCGIA])
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD FOREIGN KEY([MASACH])
REFERENCES [dbo].[QUANLYSACH] ([MASACH])
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD FOREIGN KEY([MATHUTHU])
REFERENCES [dbo].[QUANLYTHUTHU] ([MATHUTHU])
GO
ALTER TABLE [dbo].[PHIEUTRA]  WITH CHECK ADD FOREIGN KEY([MADOCGIA])
REFERENCES [dbo].[QUANLYDOCGIA] ([MADOCGIA])
GO
ALTER TABLE [dbo].[PHIEUTRA]  WITH CHECK ADD FOREIGN KEY([MAPM])
REFERENCES [dbo].[PHIEUMUON] ([MAPM])
GO
ALTER TABLE [dbo].[PHIEUTRA]  WITH CHECK ADD FOREIGN KEY([MASACH])
REFERENCES [dbo].[QUANLYSACH] ([MASACH])
GO
ALTER TABLE [dbo].[PHIEUTRA]  WITH CHECK ADD FOREIGN KEY([MATHUTHU])
REFERENCES [dbo].[QUANLYTHUTHU] ([MATHUTHU])
GO
