USE [PHANMEM]
GO
/****** Object:  Table [dbo].[login]    Script Date: 5/12/2024 2:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[idLogin] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 5/12/2024 2:06:50 AM ******/
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
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 5/12/2024 2:06:50 AM ******/
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
/****** Object:  Table [dbo].[PHIEUTRA]    Script Date: 5/12/2024 2:06:50 AM ******/
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
/****** Object:  Table [dbo].[QUANLYDOCGIA]    Script Date: 5/12/2024 2:06:50 AM ******/
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
/****** Object:  Table [dbo].[QUANLYSACH]    Script Date: 5/12/2024 2:06:50 AM ******/
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
/****** Object:  Table [dbo].[QUANLYTHUTHU]    Script Date: 5/12/2024 2:06:50 AM ******/
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
/****** Object:  Table [dbo].[register]    Script Date: 5/12/2024 2:06:50 AM ******/
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

INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (1, N'admin', N'test')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (2, N'quocviet', N'viet123')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (3, N'thuong', N'123')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (7, N'tttttt', N'tttttt')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (8, N'tttttt12312321', N'tttttt12312321')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (9, N'sssssssss', N'!@%!@dsssss')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (10, N'Username', N'Password')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (11, N'Username', N'Password')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (12, N'Username', N'Password')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (13, N'Username', N'Password')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (14, N'ÐÂSDASDA', N'ÐÂSD')
INSERT [dbo].[login] ([idLogin], [username], [password]) VALUES (15, N'viet', N'123')
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
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM001', N'DG001', N'S001', N'TT001', CAST(N'2024-05-06' AS Date), CAST(N'2024-06-21' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM002', N'DG002', N'S002', N'TT002', CAST(N'2023-10-01' AS Date), CAST(N'2023-10-15' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM003', N'DG003', N'S003', N'TT001', CAST(N'2023-11-01' AS Date), CAST(N'2023-11-30' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM004', N'DG004', N'S004', N'TT002', CAST(N'2023-12-01' AS Date), CAST(N'2024-05-08' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM005', N'DG005', N'S005', N'TT001', CAST(N'2024-01-01' AS Date), CAST(N'2024-05-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM006', N'DG006', N'S006', N'TT002', CAST(N'2024-02-01' AS Date), CAST(N'2024-02-15' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM007', N'DG007', N'S007', N'TT001', CAST(N'2024-03-01' AS Date), NULL, N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM008', N'DG008', N'S008', N'TT002', CAST(N'2024-04-01' AS Date), NULL, N'Đang mượn')
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
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM026', N'DG003', N'S005', N'TT003', CAST(N'2024-05-14' AS Date), CAST(N'2024-05-19' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM027', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM028', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM029', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
INSERT [dbo].[PHIEUMUON] ([MAPM], [MADOCGIA], [MASACH], [MATHUTHU], [NGAYMUON], [NGAYHENTRA], [TRANGTHAI]) VALUES (N'PM030', N'DG001', N'S001', N'TT001', CAST(N'2022-02-24' AS Date), CAST(N'2024-12-11' AS Date), N'Đang mượn')
GO
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'3CBD3', N'PM003', N'DG008', N'TT002', N'S006', CAST(N'2024-12-27' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'77', N'PM025', N'DG006', N'TT003', N'S005', CAST(N'2024-05-21' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'7D9AA8BD-1', N'PM019', N'DG004', N'TT002', N'S004', CAST(N'2024-05-14' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'A75B9', N'PM030', N'DG001', N'TT001', N'S001', CAST(N'2024-12-24' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'C1A97', N'PM028', N'DG001', N'TT001', N'S001', CAST(N'2024-12-24' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'DC6359C4-9', N'PM022', N'DG001', N'TT001', N'S001', CAST(N'2024-12-24' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT001', N'PM001', N'DG001', N'TT001', N'S001', CAST(N'2023-04-01' AS Date), 0, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT002', N'PM002', N'DG002', N'TT002', N'S002', CAST(N'2023-04-05' AS Date), 5, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT003', N'PM003', N'DG003', N'TT001', N'S003', CAST(N'2023-04-10' AS Date), 0, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT004', N'PM004', N'DG004', N'TT002', N'S004', CAST(N'2023-04-15' AS Date), 0, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT005', N'PM005', N'DG005', N'TT001', N'S005', CAST(N'2023-04-20' AS Date), 10, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT006', N'PM006', N'DG006', N'TT002', N'S006', CAST(N'2023-04-25' AS Date), 0, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT007', N'PM024', N'DG007', N'TT002', N'S004', CAST(N'2023-05-24' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT008', N'PM008', N'DG008', N'TT002', N'S008', CAST(N'2023-05-05' AS Date), 7.5, N'Ðã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT009', N'PM009', N'DG009', N'TT001', N'S009', CAST(N'2023-05-10' AS Date), 7.8, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT010', N'PM010', N'DG010', N'TT002', N'S010', CAST(N'2023-05-15' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT117', N'PM024', N'DG001', N'TT001', N'S001', CAST(N'2024-12-24' AS Date), 0, N'Đã trả')
INSERT [dbo].[PHIEUTRA] ([MAPT], [MAPM], [MADOCGIA], [MATHUTHU], [MASACH], [NGAYTRA], [PHITREHAN], [TRANGTHAI]) VALUES (N'PT118', N'PM014', N'DG001', N'TT001', N'S001', CAST(N'2024-12-24' AS Date), 0, N'Đã trả')
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
GO
INSERT [dbo].[QUANLYTHUTHU] ([MATHUTHU], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TT001', N'Phạm Tuấn Vũ', N'Nam', CAST(N'2003-01-14' AS Date), N'Hải Dương', N'0833190783', N'vu@gmail.com')
INSERT [dbo].[QUANLYTHUTHU] ([MATHUTHU], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TT002', N'Võ Quốc Việt', N'Nam', CAST(N'2003-03-04' AS Date), N'Nghệ An', N'0367020403', N'viet@gmail.com')
INSERT [dbo].[QUANLYTHUTHU] ([MATHUTHU], [TEN], [GIOITINH], [NGAYSINH], [DIACHI], [SDT], [EMAIL]) VALUES (N'TT003', N'PHẠM TRẦN ANH', N'Nam', CAST(N'2003-08-06' AS Date), N'Hà Nội', N'123456789', N'anh@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[register] ON 

INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (1, N'admin', N'test', N'test')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (2, N'quocviet', N'viet123', N'viet123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (3, N'thuong', N'123', N'123')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (4, N'', N'', N'')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (5, N'tesssst', N'tesssst', N'tesssst')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (6, N'tesssttt', N'tesssttt', N'tesssttt')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (7, N'tttttt', N'tttttt', N'tttttt')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (8, N'tttttt12312321', N'tttttt12312321', N'tttttt12312321')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (18, N'sssssssss', N'!@%!@dsssss', N'!@%!@dsssss')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (19, N'Username', N'Password', N'Confirm password')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (20, N'Username', N'Password', N'Confirm password')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (21, N'Username', N'Password', N'Confirm password')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (22, N'Username', N'Password', N'Confirm password')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (26, N'ÐÂSDASDA', N'ÐÂSD', N'DASDSADA')
INSERT [dbo].[register] ([idRegister], [username], [password], [repassword]) VALUES (28, N'viet', N'123', N'123')
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
