USE [QuanLyNhanSu]
GO
/****** Object:  Table [dbo].[CapNhatLuongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapNhatLuongs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongHienTai] [int] NOT NULL,
	[LuongSauCapNhat] [int] NOT NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
	[NgayCapNhat] [datetime] NULL,
	[HeSoLuong] [float] NULL,
 CONSTRAINT [PK_CapNhatLuongs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapNhatTrinhDoHocVans]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapNhatTrinhDoHocVans](
	[MaCapNhat] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[NgayCapNhat] [datetime] NOT NULL,
	[MaTrinhDoTruoc] [varchar](30) NOT NULL,
	[MaTrinhDoCapNhat] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CapNhatTrinhDoHocVans] PRIMARY KEY CLUSTERED 
(
	[MaCapNhat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietLuongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietLuongs](
	[MaChiTietBangLuong] [varchar](30) NOT NULL,
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongCoBan] [float] NOT NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
	[TienThuong] [int] NULL,
	[TienPhat] [int] NULL,
	[NgayNhanLuong] [datetime] NOT NULL,
	[TongTienLuong] [varchar](30) NULL,
 CONSTRAINT [PK_ChiTietLuongs] PRIMARY KEY CLUSTERED 
(
	[MaChiTietBangLuong] ASC,
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVuNhanViens]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVuNhanViens](
	[MaChucVuNV] [varchar](30) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
	[HSPC] [float] NULL,
 CONSTRAINT [PK_ChucVuNhanViens] PRIMARY KEY CLUSTERED 
(
	[MaChucVuNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenNganhs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenNganhs](
	[MaChuyenNganh] [varchar](30) NOT NULL,
	[TenChuyenNganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuyenNganhs] PRIMARY KEY CLUSTERED 
(
	[MaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongs](
	[MaHopDong] [varchar](30) NOT NULL,
	[LoaiHopDong] [nvarchar](50) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_HopDongs] PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhenThuongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuongs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[ThangThuong] [datetime] NOT NULL,
	[LyDo] [nvarchar](max) NULL,
	[TienThuong] [int] NULL,
 CONSTRAINT [PK_KhenThuongs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KyLuats]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyLuats](
	[MaNhanVien] [varchar](30) NOT NULL,
	[LyDo] [nvarchar](max) NULL,
	[ThangKiLuat] [datetime] NOT NULL,
	[TienKyLuat] [int] NULL,
 CONSTRAINT [PK_KyLuats] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuanChuyenNhanViens]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuanChuyenNhanViens](
	[MaNhanVien] [varchar](30) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayChuyen] [datetime] NOT NULL,
	[LyDoChuyen] [nvarchar](max) NULL,
	[PhongBanChuyen] [varchar](30) NULL,
	[PhongBanDen] [varchar](30) NULL,
 CONSTRAINT [PK_LuanChuyenNhanViens] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA1GV]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA1GV](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA1GV] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA21PGS]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA21PGS](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA21PGS] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongA31GS]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongA31GS](
	[BacLuong] [int] IDENTITY(1,1) NOT NULL,
	[HeSo] [float] NULL,
 CONSTRAINT [PK_LuongA31GS] PRIMARY KEY CLUSTERED 
(
	[BacLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luongs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luongs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[LuongToiThieu] [int] NOT NULL,
	[HeSoLuong] [float] NULL,
	[BHXH] [float] NULL,
	[BHYT] [float] NULL,
	[BHTN] [float] NULL,
	[PhuCap] [float] NULL,
	[ThueThuNhap] [float] NULL,
 CONSTRAINT [PK_Luongs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] IDENTITY(100,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[contens] [nvarchar](max) NULL,
	[image] [nvarchar](128) NULL,
	[is_active] [bit] NULL,
	[reg_staff_id] [int] NULL,
	[update_staff_id] [int] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[MaNhanVien] [varchar](30) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[QueQuan] [nvarchar](100) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[GioiTinh] [int] NULL,
	[DanToc] [nvarchar](10) NULL,
	[sdt_NhanVien] [varchar](11) NULL,
	[MaChucVuNV] [varchar](30) NULL,
	[TrangThai] [bit] NOT NULL,
	[MaPhongBan] [varchar](30) NULL,
	[MaHopDong] [varchar](30) NULL,
	[MaChuyenNganh] [varchar](30) NULL,
	[MaTrinhDoHocVan] [varchar](30) NULL,
	[CMND] [varchar](50) NULL,
 CONSTRAINT [PK_NhanViens] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBans]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBans](
	[MaPhongBan] [varchar](30) NOT NULL,
	[TenPhongBan] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[sdt_PhongBan] [varchar](11) NULL,
 CONSTRAINT [PK_PhongBans] PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlideImages]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlideImages](
	[id] [int] IDENTITY(100,1) NOT NULL,
	[src] [ntext] NOT NULL,
	[alt] [ntext] NULL,
	[title] [ntext] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[displayFlg] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
 CONSTRAINT [PK_sysdiagrams] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiViecs]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiViecs](
	[MaNhanVien] [varchar](30) NOT NULL,
	[Lydo] [nvarchar](max) NULL,
	[NgayThoiViec] [datetime] NOT NULL,
 CONSTRAINT [PK_ThoiViecs] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDoHocVans]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoHocVans](
	[MaTrinhDoHocVan] [varchar](30) NOT NULL,
	[TenTrinhDo] [nvarchar](max) NOT NULL,
	[HeSoBac] [float] NULL,
 CONSTRAINT [PK_TrinhDoHocVans] PRIMARY KEY CLUSTERED 
(
	[MaTrinhDoHocVan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/21/2022 9:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[status] [varchar](1) NOT NULL,
	[description] [nvarchar](256) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[news] ADD  CONSTRAINT [DF_news_is_active]  DEFAULT ((0)) FOR [is_active]
GO
ALTER TABLE [dbo].[SlideImages] ADD  CONSTRAINT [DF_SlideImages_displayFlg]  DEFAULT ((0)) FOR [displayFlg]
GO
ALTER TABLE [dbo].[CapNhatLuongs]  WITH CHECK ADD  CONSTRAINT [FK_CapNhatLuong_Luong] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[Luongs] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CapNhatLuongs] CHECK CONSTRAINT [FK_CapNhatLuong_Luong]
GO
ALTER TABLE [dbo].[CapNhatTrinhDoHocVans]  WITH CHECK ADD  CONSTRAINT [FK_CapNhatTrinhDoHocVan_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CapNhatTrinhDoHocVans] CHECK CONSTRAINT [FK_CapNhatTrinhDoHocVan_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietLuongs]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLuong_Luong] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[Luongs] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietLuongs] CHECK CONSTRAINT [FK_ChiTietLuong_Luong]
GO
ALTER TABLE [dbo].[KhenThuongs]  WITH CHECK ADD  CONSTRAINT [FK__Thuong__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhenThuongs] CHECK CONSTRAINT [FK__Thuong__MaNhanVien]
GO
ALTER TABLE [dbo].[KyLuats]  WITH CHECK ADD  CONSTRAINT [FK_KyLuat_KyLuat] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KyLuats] CHECK CONSTRAINT [FK_KyLuat_KyLuat]
GO
ALTER TABLE [dbo].[LuanChuyenNhanViens]  WITH CHECK ADD  CONSTRAINT [FK__LuanChuyen__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LuanChuyenNhanViens] CHECK CONSTRAINT [FK__LuanChuyen__MaNhanVien]
GO
ALTER TABLE [dbo].[Luongs]  WITH CHECK ADD  CONSTRAINT [FK_Luong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Luongs] CHECK CONSTRAINT [FK_Luong_NhanVien]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaChuyenNganh] FOREIGN KEY([MaChuyenNganh])
REFERENCES [dbo].[ChuyenNganhs] ([MaChuyenNganh])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaChuyenNganh]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaHopDong] FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HopDongs] ([MaHopDong])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaHopDong]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__MaPhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBans] ([MaPhongBan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK__NhanVien__MaPhongBan]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVuNhanVien] FOREIGN KEY([MaChucVuNV])
REFERENCES [dbo].[ChucVuNhanViens] ([MaChucVuNV])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanVien_ChucVuNhanVien]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TrinhDoHocVan] FOREIGN KEY([MaTrinhDoHocVan])
REFERENCES [dbo].[TrinhDoHocVans] ([MaTrinhDoHocVan])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanVien_TrinhDoHocVan]
GO
ALTER TABLE [dbo].[ThoiViecs]  WITH CHECK ADD  CONSTRAINT [FK__ThoiViec__MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ThoiViecs] CHECK CONSTRAINT [FK__ThoiViec__MaNhanVien]
GO
