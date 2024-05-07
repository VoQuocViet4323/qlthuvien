USE admin 
GO

CREATE TABLE register (
	idRegister INT PRIMARY KEY IDENTITY(1,1),
	username VARCHAR(50) NOT NULL, 
	password VARCHAR(50) NOT NULL,
	repassword VARCHAR(50) NOT NULL,
);
CREATE TABLE login (
    idLogin INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE nhanvien (
    MaNhanVien INT PRIMARY KEY IDENTITY(1,1),
    HoTen NVARCHAR(100) NOT NULL,
    NgaySinh DATE NOT NULL,
    GioiTinh NVARCHAR(10) NOT NULL,
    DiaChi NVARCHAR(255),
    DienThoai NVARCHAR(20)
);
select * from nhanvien
select * from login
select * from register
delete from nhanvien
-- khi add nhan vien thi khong can phai add ma nhan vien  
ALTER TABLE nhanvien
DROP COLUMN MaNhanVien;
ALTER TABLE nhanvien DROP CONSTRAINT PK__nhanvien__77B2CA47FA69FB44;
ALTER TABLE nhanvien DROP COLUMN MaNhanVien;
ALTER TABLE nhanvien ADD CONSTRAINT PK_nhanvien PRIMARY KEY (idMaNhanVien);
