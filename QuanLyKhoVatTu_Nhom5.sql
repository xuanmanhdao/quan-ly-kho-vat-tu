USE [QuanLyKhoVatTu_Nhom5]
GO
/****** Object:  Table [dbo].[BangHangHoa]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangHangHoa](
	[MaHangHoa] [varchar](50) NOT NULL,
	[TenHangHoa] [nvarchar](50) NULL,
	[MaNhaCungCap] [varchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangHangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangHoTro]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangHoTro](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenHoTro] [nvarchar](50) NULL,
	[AnhNVHoTro] [image] NULL,
	[SoDienThoai] [varchar](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_BangHoTro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangKhachHang]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangKhachHang](
	[MaKhachHang] [varchar](50) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangNhaCungCap]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangNhaCungCap](
	[MaNhaCungCap] [varchar](50) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangNhanVien]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangNhanVien](
	[MaNhanVien] [varchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangPhieuNhap]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangPhieuNhap](
	[MaPhieuNhap] [varchar](50) NOT NULL,
	[MaHangHoa] [varchar](50) NULL,
	[MaNhaCungCap] [varchar](50) NULL,
	[MaNhanVien] [varchar](50) NULL,
	[DonGiaNhap] [int] NULL,
	[SoLuong] [int] NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangPhieuXuat]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangPhieuXuat](
	[MaPhieuXuat] [varchar](50) NOT NULL,
	[MaHangHoa] [varchar](50) NULL,
	[MaKhachHang] [varchar](50) NULL,
	[MaNhaCungCap] [varchar](50) NULL,
	[MaNhanVien] [varchar](50) NULL,
	[DonGiaXuat] [int] NULL,
	[SoLuong] [int] NULL,
	[NgayXuat] [date] NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BangTaiKhoan]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangTaiKhoan](
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
 CONSTRAINT [PK_BangTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BangHangHoa]  WITH CHECK ADD  CONSTRAINT [FK_BangHangHoa_BangNhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[BangNhaCungCap] ([MaNhaCungCap])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangHangHoa] CHECK CONSTRAINT [FK_BangHangHoa_BangNhaCungCap]
GO
ALTER TABLE [dbo].[BangPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_BangPhieuNhap_BangHangHoa] FOREIGN KEY([MaHangHoa])
REFERENCES [dbo].[BangHangHoa] ([MaHangHoa])
GO
ALTER TABLE [dbo].[BangPhieuNhap] CHECK CONSTRAINT [FK_BangPhieuNhap_BangHangHoa]
GO
ALTER TABLE [dbo].[BangPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_BangPhieuNhap_BangNhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[BangNhaCungCap] ([MaNhaCungCap])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangPhieuNhap] CHECK CONSTRAINT [FK_BangPhieuNhap_BangNhaCungCap]
GO
ALTER TABLE [dbo].[BangPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_BangPhieuNhap_BangNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[BangNhanVien] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangPhieuNhap] CHECK CONSTRAINT [FK_BangPhieuNhap_BangNhanVien]
GO
ALTER TABLE [dbo].[BangPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_BangPhieuXuat_BangHangHoa] FOREIGN KEY([MaHangHoa])
REFERENCES [dbo].[BangHangHoa] ([MaHangHoa])
GO
ALTER TABLE [dbo].[BangPhieuXuat] CHECK CONSTRAINT [FK_BangPhieuXuat_BangHangHoa]
GO
ALTER TABLE [dbo].[BangPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_BangPhieuXuat_BangKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[BangKhachHang] ([MaKhachHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangPhieuXuat] CHECK CONSTRAINT [FK_BangPhieuXuat_BangKhachHang]
GO
ALTER TABLE [dbo].[BangPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_BangPhieuXuat_BangNhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[BangNhaCungCap] ([MaNhaCungCap])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangPhieuXuat] CHECK CONSTRAINT [FK_BangPhieuXuat_BangNhaCungCap]
GO
ALTER TABLE [dbo].[BangPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_BangPhieuXuat_BangNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[BangNhanVien] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BangPhieuXuat] CHECK CONSTRAINT [FK_BangPhieuXuat_BangNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[Check_MaHH]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Check_MaHH]
	@masach varchar(50),
	@kq int output
	
AS
BEGIN
	Set @kq=0
	if(exists(select MaHangHoa from dbo.BangHangHoa where MaHangHoa=@masach ))
	Begin
	Set @kq=1
	End
	
END
GO
/****** Object:  StoredProcedure [dbo].[Check_MaKH]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Check_MaKH]
	@masach varchar(50),
	@kq int output
	
AS
BEGIN
	Set @kq=0
	if(exists(select MaKhachHang from dbo.BangKhachHang where MaKhachHang=@masach ))
	Begin
	Set @kq=1
	End
	
END
GO
/****** Object:  StoredProcedure [dbo].[Check_MaNCC]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Check_MaNCC]
	@masach varchar(50),
	@kq int output
	
AS
BEGIN
	Set @kq=0
	if(exists(select MaNhaCungCap from dbo.BangNhaCungCap where MaNhaCungCap=@masach ))
	Begin
	Set @kq=1
	End
	
END
GO
/****** Object:  StoredProcedure [dbo].[Check_MaNhanVien]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Check_MaNhanVien]
	@masach varchar(50),
	@kq int output
	
AS
BEGIN
	Set @kq=0
	if(exists(select MaNhanVien from dbo.BangNhanVien where MaNhanVien=@masach ))
	Begin
	Set @kq=1
	End
	
END
GO
/****** Object:  StoredProcedure [dbo].[Check_MaPN]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Check_MaPN]
	@masach varchar(50),
	@kq int output
	
AS
BEGIN
	Set @kq=0
	if(exists(select MaPhieuNhap from dbo.BangPhieuNhap where MaPhieuNhap=@masach ))
	Begin
	Set @kq=1
	End
	
END
GO
/****** Object:  StoredProcedure [dbo].[Check_MaPX]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Check_MaPX]
	@masach varchar(50),
	@kq int output
	
AS
BEGIN
	Set @kq=0
	if(exists(select MaPhieuXuat from dbo.BangPhieuXuat where MaPhieuXuat=@masach ))
	Begin
	Set @kq=1
	End
	
END
GO
/****** Object:  StoredProcedure [dbo].[CrHoaDon]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CrHoaDon]
@id nvarchar(50),
@ngay date
AS
BEGIN
	Select px.MaPhieuXuat,HH.TenHangHoa ,kh.TenKhachHang,kh.MaKhachHang,kh.SoDienThoai,kh.DiaChi,px.MaHangHoa,px.MaNhaCungCap,px.MaNhanVien,px.DonGiaXuat,px.SoLuong,px.NgayXuat,px.TongTien,px.GhiChu
	from BangKhachHang kh, BangPhieuXuat px, dbo.BangHangHoa HH
	where px.MaKhachHang like @id and
	kh.MaKhachHang=px.MaKhachHang AND
    HH.MaHangHoa=px.MaHangHoa AND
	px.NgayXuat=@ngay
END
GO
/****** Object:  StoredProcedure [dbo].[HangHoa_Delete]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HangHoa_Delete]
	-- Add the parameters for the stored procedure here
	@MaHangHoa varchar(50)

AS
BEGIN
	DELETE FROM dbo.BangHangHoa
	WHERE MaHangHoa=@MaHangHoa

	DELETE FROM dbo.BangPhieuXuat
	WHERE MaHangHoa=@MaHangHoa

	DELETE FROM dbo.BangPhieuNhap
	WHERE MaHangHoa=@MaHangHoa
END
GO
/****** Object:  StoredProcedure [dbo].[HangHoa_Insert]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HangHoa_Insert]
	-- Add the parameters for the stored procedure here
	@MaHangHoa varchar(50),
	@TenHangHoa nvarchar(50),
	@TenNhaCungCap VARCHAR(50),
	@SoLuong INT,
	@DonViTinh NVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	INSERT INTO dbo.BangHangHoa
	(
	    MaHangHoa,
	    TenHangHoa,
	    MaNhaCungCap,
	    SoLuong,
	    DonViTinh,
	    GhiChu
	)
	VALUES
	(   
	@MaHangHoa,
	@TenHangHoa,
	@TenNhaCungCap,
	@SoLuong,
	@DonViTinh,
	@GhiChu
	    )
END
GO
/****** Object:  StoredProcedure [dbo].[HangHoa_Select]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[HangHoa_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	SELECT HH.MaHangHoa,HH.TenHangHoa,CC.TenNhaCungCap,HH.SoLuong,HH.DonViTinh,HH.GhiChu
	FROM dbo.BangHangHoa HH , dbo.BangNhaCungCap CC
	WHERE
	HH.MaNhaCungCap=CC.MaNhaCungCap

END
GO
/****** Object:  StoredProcedure [dbo].[HangHoa_Update]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HangHoa_Update]
	-- Add the parameters for the stored procedure here
	@MaHangHoa varchar(50),
	@TenHangHoa nvarchar(50),
	@TenNhaCungCap VARCHAR(50),
	@SoLuong INT,
	@DonViTinh NVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	UPDATE dbo.BangHangHoa
	SET
	    TenHangHoa=@TenHangHoa,
	    MaNhaCungCap=@TenNhaCungCap,
	    SoLuong=@SoLuong,
		DonViTinh=@DonViTinh,
		GhiChu=@GhiChu
	WHERE
		MaHangHoa=@MaHangHoa
END
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Delete]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHang_Delete]
	-- Add the parameters for the stored procedure here
	@MaKhachHang varchar(50)
AS
BEGIN


	DELETE FROM dbo.BangKhachHang
	WHERE MaKhachHang=@MaKhachHang

	


END
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Insert]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[KhachHang_Insert]
	-- Add the parameters for the stored procedure here
	@MaKhachHang varchar(50),
	@TenKhachHang nvarchar(50),
	@SoDienThoai VARCHAR(15),
	@DiaChi nVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	INSERT INTO dbo.BangKhachHang
	(
	    MaKhachHang,
	    TenKhachHang,
	    SoDienThoai,
	    DiaChi,
	    GhiChu
	)
	VALUES
	(   
		@MaKhachHang,
	    @TenKhachHang,
	    @SoDienThoai,
	    @DiaChi,
	    @GhiChu
	    )
	
END
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Update]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KhachHang_Update]
	-- Add the parameters for the stored procedure here
	@MaKhachHang varchar(50),
	@TenKhachHang nvarchar(50),
	@SoDienThoai VARCHAR(15),
	@DiaChi nVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	UPDATE dbo.BangKhachHang
	SET
	    TenKhachHang=@TenKhachHang,
	    DiaChi=@DiaChi,
	    SoDienThoai=@SoDienThoai,
		GhiChu=@GhiChu
	WHERE
		MaKhachHang=@MaKhachHang
END
GO
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Delete]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaCungCap_Delete]
	-- Add the parameters for the stored procedure here
	@MaNhaCungCap varchar(50),
	@TenNhaCungCap nvarchar(50),
	@SoDienThoai VARCHAR(15),
	@DiaChi nVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	DELETE FROM dbo.BangNhaCungCap
	WHERE MaNhaCungCap=@MaNhaCungCap

	DELETE FROM dbo.BangHangHoa
	WHERE MaNhaCungCap=@MaNhaCungCap

	DELETE FROM dbo.BangPhieuNhap
	WHERE MaNhaCungCap=@MaNhaCungCap

	DELETE FROM dbo.BangPhieuXuat
	WHERE MaNhaCungCap=@MaNhaCungCap


END
GO
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Insert]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaCungCap_Insert]
	-- Add the parameters for the stored procedure here
	@MaNhaCungCap varchar(50),
	@TenNhaCungCap nvarchar(50),
	@SoDienThoai VARCHAR(15),
	@DiaChi nVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	INSERT INTO dbo.BangNhaCungCap
	(
	    MaNhaCungCap,
	    TenNhaCungCap,
	    SoDienThoai,
	    DiaChi,
	    GhiChu
	)
	VALUES
	(   
		@MaNhaCungCap,
	    @TenNhaCungCap,
	    @SoDienThoai,
	    @DiaChi,
	    @GhiChu
	    )
	
END
GO
/****** Object:  StoredProcedure [dbo].[NhaCungCap_Update]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhaCungCap_Update]
	-- Add the parameters for the stored procedure here
	@MaNhaCungCap varchar(50),
	@TenNhaCungCap nvarchar(50),
	@SoDienThoai VARCHAR(15),
	@DiaChi nVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	UPDATE dbo.BangNhaCungCap
	SET
	    TenNhaCungCap=@TenNhaCungCap,
	    DiaChi=@DiaChi,
	    SoDienThoai=@SoDienThoai,
		GhiChu=@GhiChu
	WHERE
		MaNhaCungCap=@MaNhaCungCap
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Delete]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Delete]
	-- Add the parameters for the stored procedure here
	@MaNhanVien varchar(50),
	@TenNhanVien nvarchar(50),
	@SoDienThoai VARCHAR(15),
	@DiaChi nVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	DELETE FROM dbo.BangNhanVien
	WHERE MaNhanVien=@MaNhanVien

	DELETE FROM dbo.BangPhieuNhap
	WHERE MaNhanVien=@MaNhanVien

	DELETE FROM dbo.BangPhieuXuat
	WHERE MaNhanVien=@MaNhanVien

END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Insert]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Insert]
	-- Add the parameters for the stored procedure here
	@MaNhanVien varchar(50),
	@TenNhanVien nvarchar(50),
	@SoDienThoai VARCHAR(15),
	@DiaChi nVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	INSERT INTO dbo.BangNhanVien
	(
	    MaNhanVien,
	    TenNhanVien,
	    SoDienThoai,
	    DiaChi,
	    GhiChu
	)
	VALUES
	(   
		@MaNhanVien,
	    @TenNhanVien,
	    @SoDienThoai,
	    @DiaChi,
	    @GhiChu
	    )
	
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Update]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_Update]
	-- Add the parameters for the stored procedure here
	@MaNhanVien varchar(50),
	@TenNhanVien nvarchar(50),
	@SoDienThoai VARCHAR(15),
	@DiaChi nVARCHAR(50),
	@GhiChu nVARCHAR(50)
AS
BEGIN
	UPDATE dbo.BangNhanVien
	SET
	    TenNhanVien=@TenNhanVien,
	    DiaChi=@DiaChi,
	    SoDienThoai=@SoDienThoai,
		GhiChu=@GhiChu
	WHERE
		MaNhanVien=@MaNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapHang_Delete]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapHang_Delete]
	-- Add the parameters for the stored procedure here
	@MaPhieuNhap varchar(50)

AS
BEGIN
	DELETE FROM dbo.BangPhieuNhap
	WHERE MaPhieuNhap=@MaPhieuNhap
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapHang_Insert]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapHang_Insert]
	-- Add the parameters for the stored procedure here
	@MaPhieuNhap varchar(50),
	@TenHangHoa VARCHAR(50),
	@TenNhaCungCap VARCHAR(50),
	@TenNhanVien VARCHAR(50),
	@DonGiaNhap INT,
	@SoLuong INT,
	@NgayNhap DATE,
	@TongTien INT,
	@GhiChu NVARCHAR(50)
AS
BEGIN
	Update BangHangHoa
	Set SoLuong=SoLuong+@SoLuong
	Where
	MaHangHoa=@TenHangHoa
	INSERT INTO dbo.BangPhieuNhap
	(
	    MaPhieuNhap,
	    MaHangHoa,
	    MaNhaCungCap,
	    MaNhanVien,
	    DonGiaNhap,
	    SoLuong,
	    NgayNhap,
	    TongTien,
	    GhiChu
	)
	VALUES
	( 
	@MaPhieuNhap ,
	@TenHangHoa ,
	@TenNhaCungCap ,
	@TenNhanVien ,
	@DonGiaNhap ,
	@SoLuong ,
	@NgayNhap ,
	@TongTien ,
	@GhiChu
	    )
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapHang_Print]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapHang_Print]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	SELECT PN.MaPhieuNhap, HH.TenHangHoa, CC.TenNhaCungCap, NV.TenNhanVien, PN.DonGiaNhap, PN.SoLuong, PN.NgayNhap, PN.TongTien, PN.GhiChu
	FROM dbo.BangHangHoa HH , dbo.BangNhaCungCap CC, dbo.BangPhieuNhap PN, dbo.BangNhanVien NV
	WHERE
	HH.MaNhaCungCap=CC.MaNhaCungCap AND
    PN.MaHangHoa=HH.MaHangHoa AND
	PN.MaNhanVien=NV.MaNhanVien 
	

END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhapHang_Select]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuNhapHang_Select]
	-- Add the parameters for the stored procedure here
	@TenNhaCungCap VARCHAR(50),
	@NgayNhap DATE
AS
BEGIN
	SELECT PN.MaPhieuNhap, HH.TenHangHoa, CC.TenNhaCungCap, NV.TenNhanVien, PN.DonGiaNhap, PN.SoLuong, PN.NgayNhap, PN.TongTien, PN.GhiChu
	FROM dbo.BangHangHoa HH , dbo.BangNhaCungCap CC, dbo.BangPhieuNhap PN, dbo.BangNhanVien NV
	WHERE
	HH.MaNhaCungCap=CC.MaNhaCungCap AND
    PN.MaHangHoa=HH.MaHangHoa AND
	PN.MaNhanVien=NV.MaNhanVien AND
	PN.MaNhaCungCap=@TenNhaCungCap AND
	PN.NgayNhap=@NgayNhap 

END
GO
/****** Object:  StoredProcedure [dbo].[PhieuNhaphang_Update]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[PhieuNhaphang_Update]
	-- Add the parameters for the stored procedure here
	@MaPhieuNhap varchar(50),
	@TenHangHoa VARCHAR(50),
	@TenNhaCungCap VARCHAR(50),
	@TenNhanVien VARCHAR(50),
	@DonGiaNhap INT,
	@SoLuong INT,
	@NgayNhap DATE,
	@TongTien INT,
	@GhiChu NVARCHAR(50)
AS
BEGIN
	UPDATE dbo.BangPhieuNhap
	SET
	   MaHangHoa=@TenHangHoa,
	   MaNhaCungCap=@TenNhaCungCap,
	   MaNhanVien=@TenNhanVien,
	   DonGiaNhap=@DonGiaNhap,
	   SoLuong=@SoLuong,
	   NgayNhap=@NgayNhap,
	   TongTien=@TongTien,
	   GhiChu=@GhiChu

	WHERE
		MaPhieuNhap=@MaPhieuNhap
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatHang_Delete]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatHang_Delete]
	-- Add the parameters for the stored procedure here
	@MaPhieuXuat varchar(50)

AS
BEGIN
	DELETE FROM dbo.BangPhieuXuat
	WHERE MaPhieuXuat=@MaPhieuXuat
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatHang_Insert]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatHang_Insert]
	-- Add the parameters for the stored procedure here
	@MaPhieuXuat varchar(50),
	@TenHangHoa VARCHAR(50),
	@TenKhachHang VARCHAR(50),
	@TenNhaCungCap VARCHAR(50),
	@TenNhanVien VARCHAR(50),
	@DonGiaXuat INT,
	@SoLuong INT,
	@NgayXuat DATE,
	@TongTien INT,
	@GhiChu NVARCHAR(50)
AS
BEGIN
	Update BangHangHoa
	Set SoLuong=SoLuong-@SoLuong
	Where
	MaHangHoa=@TenHangHoa
	INSERT INTO dbo.BangPhieuXuat
	(
	    MaPhieuXuat,
	    MaHangHoa,
	    MaKhachHang,
	    MaNhaCungCap,
	    MaNhanVien,
	    DonGiaXuat,
	    SoLuong,
	    NgayXuat,
	    TongTien,
	    GhiChu
	)
	VALUES

	( 
	@MaPhieuXuat ,
	@TenHangHoa ,
	@TenKhachHang ,
	@TenNhaCungCap,
	@TenNhanVien ,
	@DonGiaXuat ,
	@SoLuong ,
	@NgayXuat ,
	@TongTien ,
	@GhiChu
	    )
END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatHang_Print]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatHang_Print]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	SELECT PX.MaPhieuXuat, HH.TenHangHoa, KH.TenKhachHang, CC.TenNhaCungCap, NV.TenNhanVien, PX.DonGiaXuat, PX.SoLuong, PX.NgayXuat, PX.TongTien, PX.GhiChu
	FROM BangHangHoa HH , BangNhaCungCap CC,BangPhieuXuat PX, BangNhanVien NV, BangKhachHang KH
	WHERE
	PX.MaKhachHang=KH.MaKhachHang AND
    PX.MaHangHoa=HH.MaHangHoa AND 
	cc.MaNhaCungCap=PX.MaNhaCungCap AND
	PX.MaNhanVien=NV.MaNhanVien 


END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatHang_Select]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatHang_Select]
	-- Add the parameters for the stored procedure here
	@TenNhaCungCap VARCHAR(50),
	@NgayXuat DATE
AS
BEGIN
	SELECT PX.MaPhieuXuat, HH.TenHangHoa, KH.TenKhachHang, CC.TenNhaCungCap, NV.TenNhanVien, PX.DonGiaXuat, PX.SoLuong, PX.NgayXuat, PX.TongTien, PX.GhiChu
	FROM dbo.BangHangHoa HH , dbo.BangNhaCungCap CC, dbo.BangPhieuXuat PX, dbo.BangNhanVien NV, dbo.BangKhachHang KH
	WHERE
	HH.MaNhaCungCap=CC.MaNhaCungCap AND
	PX.MaKhachHang=KH.MaKhachHang AND
    PX.MaHangHoa=HH.MaHangHoa AND
	PX.MaNhanVien=NV.MaNhanVien AND
	PX.MaNhaCungCap=@TenNhaCungCap AND
	PX.NgayXuat=@NgayXuat 

END
GO
/****** Object:  StoredProcedure [dbo].[PhieuXuatHang_Update]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PhieuXuatHang_Update]
	-- Add the parameters for the stored procedure here
	@MaPhieuXuat varchar(50),
	@TenHangHoa VARCHAR(50),
	@TenKhachHang VARCHAR(50),
	@TenNhaCungCap VARCHAR(50),
	@TenNhanVien VARCHAR(50),
	@DonGiaXuat INT,
	@SoLuong INT,
	@NgayXuat DATE,
	@TongTien INT,
	@GhiChu NVARCHAR(50)
AS
BEGIN
	UPDATE dbo.BangPhieuXuat
	SET
	   MaHangHoa=@TenHangHoa,
	   MaKhachHang=@TenKhachHang,
	   MaNhaCungCap=@TenNhaCungCap,
	   MaNhanVien=@TenNhanVien,
	   DonGiaXuat=@DonGiaXuat,
	   SoLuong=@SoLuong,
	   NgayXuat=@NgayXuat,
	   TongTien=@TongTien,
	   GhiChu=@GhiChu

	WHERE
		MaPhieuXuat=@MaPhieuXuat
END
GO
/****** Object:  StoredProcedure [dbo].[testTimKiem]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[testTimKiem]
	-- Add the parameters for the stored procedure here
	@TenHangHoa NVARCHAR(50)
AS
BEGIN
	SELECT DISTINCT HH.MaHangHoa,HH.TenHangHoa,CC.TenNhaCungCap,HH.SoLuong,HH.DonViTinh,HH.GhiChu
	FROM dbo.BangHangHoa HH , dbo.BangNhaCungCap CC
	WHERE
	 HH.MaNhaCungCap=CC.MaNhaCungCap AND
	 HH.TenHangHoa LIKE N'%' + @TenHangHoa + '%' 


END
GO
/****** Object:  StoredProcedure [dbo].[testTimKiemMa]    Script Date: 7/12/2021 1:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[testTimKiemMa]
	-- Add the parameters for the stored procedure here
	@MaHangHoa VARCHAR(50)
AS
BEGIN
	SELECT DISTINCT HH.MaHangHoa,HH.TenHangHoa,CC.TenNhaCungCap,HH.SoLuong,HH.DonViTinh,HH.GhiChu
	FROM dbo.BangHangHoa HH , dbo.BangNhaCungCap CC
	WHERE
	 HH.MaNhaCungCap=CC.MaNhaCungCap AND
	 HH.MaHangHoa = @MaHangHoa  


END
GO
