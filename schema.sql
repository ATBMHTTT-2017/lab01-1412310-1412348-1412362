-- Tao Database
CREATE TABLE NhanVien
(
  maNV NCHAR(10),
  hoTen NVARCHAR2(100),
  diaChi NVARCHAR2(100),
  dienThoai CHAR(15),
  email NVARCHAR2(50),
  maPhong NCHAR(10),
  chiNhanh NCHAR(10),
  luong INT,
  PRIMARY KEY (maNV)
);

CREATE TABLE ChiNhanh
(
  maCN NCHAR(10),
  tenCN NVARCHAR2(100),
  truongChiNhanh NCHAR(10),
  PRIMARY KEY (maCN)
);

CREATE TABLE ChiTieu
(
  maChiTieu NCHAR(10),
  tenChTieu NVARCHAR2(100),
  soTien INT,
  duAn NCHAR(10),
  PRIMARY KEY (maChiTieu)
);

CREATE TABLE DuAn
(
  maDA NCHAR(10),
  tenDA NVARCHAR2(100),
  kinhPhi INT,
  phongChuTri NCHAR(10),
  truongDA NCHAR(10),
  PRIMARY KEY (maDA)
);

CREATE TABLE PhongBan
(
  maPhong NCHAR(10),
  tenPhong NVARCHAR2(100),
  truongPhong NCHAR(10),
  ngayNhanChuc DATE,
  soNhanVien INT,
  chiNhanh NCHAR(10),
  PRIMARY KEY (maPhong)
);

CREATE TABLE  PhanCong
(
  maNV NCHAR(10),
  duAn NCHAR(10),
  vaiTro NVARCHAR2(100),
  phuCap INT,
  PRIMARY KEY (maNV, DuAn)
);
INSERT INTO ChiNhanh  VALUES (N'CN001     ', N'Le Hong Phong', N'TCN001    ');
INSERT INTO ChiNhanh  VALUES (N'CN002     ', N'Vo Van Ngan', N'TCN002    ');
INSERT INTO ChiNhanh  VALUES (N'CN003     ', N'Cach mang thang 8', N'TCN003    ');
INSERT INTO ChiNhanh  VALUES (N'CN004     ', N'Le Van Si', N'TCN004    ');
INSERT INTO ChiNhanh  VALUES (N'CN005     ', N'Nguyen Thi Thap', N'TCN005    ');
INSERT INTO ChiTieu  VALUES (N'CT001     ', N'In an khao sat', 1000, N'DA001     ');
INSERT INTO ChiTieu  VALUES (N'CT002     ', N'Goi dien cho ung cu vien', 500, N'DA002     ');
INSERT INTO ChiTieu  VALUES (N'CT003     ', N'Kiem dinh gio lam', 400, N'DA003     ');
INSERT INTO ChiTieu  VALUES (N'CT004     ', N'Phan tich kiem dinh san pham', 500, N'DA004     ');
INSERT INTO ChiTieu  VALUES (N'CT005     ', N'Thue cong ty kiem toan', 500, N'DA005     ');
INSERT INTO DuAn  VALUES (N'DA001     ', N'Ra soat thi truong', 10000, N'PKD       ', N'TDA001    ');
INSERT INTO DuAn  VALUES (N'DA002     ', N'Tuyen nhan vien 2017', 1000, N'PNS       ', N'TDA002    ');
INSERT INTO DuAn  VALUES (N'DA003     ', N'Ke hoach tang luong', 100000, N'PTCKT     ', N'TDA003    ');
INSERT INTO DuAn  VALUES (N'DA004     ', N'Nghien cuu san pham moi', 2000, N'PKDCL     ', N'TDA004    ');
INSERT INTO DuAn  VALUES (N'DA005     ', N'Kiem ke tai chinh', 1200, N'PTCKT     ', N'TDA005    ');
INSERT INTO NhanVien  VALUES (N'GD001     ', N'Chung Ba Vinh', N'56 Cong Quynh', N'0123456789     ', N'GD001123@gmail.com', N'PCSKH     ', N'CN001     ', 5000);
INSERT INTO NhanVien  VALUES (N'GD002     ', N'Thach Van Ngoc Tanh', N'554 To Ngoc Van', N'0123456789     ', N'GD002123@gmail.com', N'PKD       ', N'CN002     ', 4500);
INSERT INTO NhanVien  VALUES (N'GD003     ', N'Doan Van Quy', N'112 Pham Van Dong', N'0123456789     ', N'GD003123@gmail.com', N'PKDCL     ', N'CN003     ', 4800);
INSERT INTO NhanVien  VALUES (N'GD004     ', N'Dao Quoc Thien', N'84 Nguyen Dinh Chieu', N'0123456789     ', N'GD004123@gmail.com', N'PNS       ', N'CN004     ', 4700);
INSERT INTO NhanVien  VALUES (N'GD005     ', N'Dinh Mong Long', N'332 Nam Ki Khoi Nghia', N'0123456789     ', N'GD005123@gmail.com', N'PTCKT     ', N'CN005     ', 4600);
INSERT INTO NhanVien  VALUES (N'NV001     ', N'Dau Thi Ngoc', N'142 Phan Dinh Phung', N'0123456789     ', N'NV001123@gmail.com', N'PCSKH     ', N'CN001     ', 1200);
INSERT INTO NhanVien  VALUES (N'NV002     ', N'Giang Tuan Anh', N'554 Tran Quang Khai', N'0123456789     ', N'NV002123@gmail.com', N'PCSKH     ', N'CN001     ', 900);
INSERT INTO NhanVien  VALUES (N'NV003     ', N'Le Ngoc Ba Tai', N'88 Xa lo Ha Noi', N'0123456789     ', N'NV003123@gmail.com', N'PKD       ', N'CN002     ', 1000);
INSERT INTO NhanVien  VALUES (N'NV004     ', N'Ho Thi Huong', N'12 Nguyen Thi Thap', N'0123456789     ', N'NV004123@gmail.com', N'PKD       ', N'CN002     ', 800);
INSERT INTO NhanVien  VALUES (N'NV005     ', N'Mac Van Ty', N'65 An Duong Vuong', N'0123456789     ', N'NV005123@gmail.com', N'PKDCL     ', N'CN003     ', 1100);
INSERT INTO NhanVien  VALUES (N'NV006     ', N'Huynh Thi Dep', N'123 Hoa Hung', N'0123456789     ', N'NV006123@gmail.com', N'PKDCL     ', N'CN003     ', 700);
INSERT INTO NhanVien  VALUES (N'NV007     ', N'Thai Van Nhat', N'432 Hoang Van Thu', N'0123456789     ', N'NV007123@gmail.com', N'PNS       ', N'CN004     ', 800);
INSERT INTO NhanVien  VALUES (N'NV008     ', N'Tran Ngoc Viet', N'65 Pham Van Hai', N'0123456789     ', N'NV008123@gmail.com', N'PNS       ', N'CN004     ', 1000);
INSERT INTO NhanVien  VALUES (N'NV009     ', N'Le Van Ngoc Nam', N'87 Ly Thuong Kiet', N'0123456789     ', N'NV009123@gmail.com', N'PTCKT     ', N'CN005     ', NULL);
INSERT INTO NhanVien  VALUES (N'NV010     ', N'Tieu Ngoc Mong Lan', N'54 Hung Vuong', N'0123456789     ', N'NV010123@gmail.com', N'PTCKT     ', N'CN005     ', NULL);
INSERT INTO NhanVien  VALUES (N'TCN001    ', N'Tran Dinh Son', N'90 Vo Van Ngan', N'0123456789     ', N'TCN001123@gmail.com', N'PCSKH     ', N'CN001     ', 2000);
INSERT INTO NhanVien  VALUES (N'TCN002    ', N'Doan Ngoc Thuy San', N'1002 Vo Van Kiet', N'0123456789     ', N'TCN002123@gmail.com', N'PKD       ', N'CN002     ', 2100);
INSERT INTO NhanVien  VALUES (N'TCN003    ', N'Cao Thi Hien', N'12 Duong Ba Trac', N'0123456789     ', N'TCN003123@gmail.com', N'PKDCL     ', N'CN003     ', 2300);
INSERT INTO NhanVien  VALUES (N'TCN004    ', N'Ngo Thi Ngoc', N'89 Ly Thai To', N'0123456789     ', N'TCN004123@gmail.com', N'PNS       ', N'CN004     ', 2000);
INSERT INTO NhanVien  VALUES (N'TCN005    ', N'Do Thi Sen', N'78 Le Lai', N'0123456789     ', N'TCN005123@gmail.com', N'PTCKT     ', N'CN005     ', 2200);
INSERT INTO NhanVien  VALUES (N'TDA001    ', N'Nguyen Van Nam', N'123 Nguyen Van Cu', N'0123456789     ', N'TDA001123@gmail.com', N'PCSKH     ', N'CN001     ', 2900);
INSERT INTO NhanVien  VALUES (N'TDA002    ', N'Tran Thi Mong Mo', N'32 Nguyen Cu Trinh', N'0123456789     ', N'TDA002123@gmail.com', N'PKD       ', N'CN002     ', 2800);
INSERT INTO NhanVien  VALUES (N'TDA003    ', N'Le Van Hoang', N'123 Nguyen Trai', N'0123456789     ', N'TDA003123@gmail.com', N'PKDCL     ', N'CN003     ', 2700);
INSERT INTO NhanVien  VALUES (N'TDA004    ', N'Mac Thi Van', N'44 Le Van Sy', N'0123456789     ', N'TDA004123@gmail.com', N'PNS       ', N'CN004     ', 2950);
INSERT INTO NhanVien  VALUES (N'TDA005    ', N'Dang Ngoc Nhan', N'33 Tran Quoc Thao', N'0123456789     ', N'TDA005123@gmail.com', N'PTCKT     ', N'CN005     ', 3000);
INSERT INTO NhanVien  VALUES (N'TP001     ', N'Hong Ngoc An', N'66 Dien Bien Phu', N'0123456789     ', N'TP001123@gmail.com', N'PCSKH     ', N'CN001     ', 1500);
INSERT INTO NhanVien  VALUES (N'TP002     ', N'Tieu Van Cam', N'22 Cach mang thang 9', N'0123456789     ', N'TP002123@gmail.com', N'PKD       ', N'CN002     ', 1600);
INSERT INTO NhanVien  VALUES (N'TP003     ', N'Le Ngoc Quyet Thang', N'99 3/2', N'0123456789     ', N'TP003123@gmail.com', N'PKDCL     ', N'CN003     ', 1700);
INSERT INTO NhanVien  VALUES (N'TP004     ', N'Mai Van Man', N'78 Le Hong Phong', N'0123456789     ', N'TP004123@gmail.com', N'PNS       ', N'CN004     ', 1600);
INSERT INTO NhanVien  VALUES (N'TP005     ', N'Le Thi Hong', N'77 Kha Van Can', N'0123456789     ', N'TP005123@gmail.com', N'PTCKT     ', N'CN005     ', 1900);
INSERT INTO PhanCong  VALUES (N'NV001     ', N'DA001     ', N'Thu thap bao cao', 100);
INSERT INTO PhanCong  VALUES (N'NV003     ', N'DA002     ', N'Goi dien cho cac ung vien duoi 25 tuoi o TPHCM', 100);
INSERT INTO PhanCong  VALUES (N'NV005     ', N'DA003     ', N'Phan tich so lieu viec lam cua nhan vien', 100);
INSERT INTO PhanCong  VALUES (N'NV007     ', N'DA004     ', N'Phan tich mau san pham', 100);
INSERT INTO PhanCong  VALUES (N'NV009     ', N'DA005     ', N'Tong ket cac so lieu bao cao', 100);
INSERT INTO PhanCong  VALUES (N'TDA001    ', N'DA001     ', N'Viet mau ra soat', 120);
INSERT INTO PhanCong  VALUES (N'TDA002    ', N'DA002     ', N'Tien hanh phong van cac nhan vien', 90);
INSERT INTO PhanCong  VALUES (N'TDA003    ', N'DA003     ', N'Lap bao cao so lieu tang luong cu the', 50);
INSERT INTO PhanCong  VALUES (N'TDA004    ', N'DA004     ', N'Dinh luong mau', 100);
INSERT INTO PhanCong  VALUES (N'TDA005    ', N'DA005     ', N'Tham gia kiem toan', 200);
INSERT INTO PhongBan  VALUES (N'PCSKH     ', N'Cham soc khach hang', N'TP004     ', N'08/082016' , 2, N'CN004     ');
INSERT INTO PhongBan  VALUES (N'PKD       ', N'Kinh doanh', N'TP001     ', N'01/012013', 2, N'CN001     ');
INSERT INTO PhongBan  VALUES (N'PKDCL     ', N'Kiem dinh chat luong', N'TP005     ', N'02/07/2012', 2, N'CN005     ');
INSERT INTO PhongBan  VALUES (N'PNS       ', N'Nhan su', N'TP003     ', N'1/07/2014', 2, N'CN003     ');
INSERT INTO PhongBan  VALUES (N'PTCKT     ', N'Tai chinh ke toan', N'TP002     ', N'3/05/2017', 2, N'CN002     ');

ALTER TABLE NhanVien
ADD CONSTRAINT NhanVienThuocMaPhong
FOREIGN KEY (maPhong)
REFERENCES PhongBan(maPhong);

ALTER TABLE NhanVien
ADD CONSTRAINT NhanVienThuocChiNhanh
FOREIGN KEY (chiNhanh)
REFERENCES ChiNhanh(maCN);

ALTER TABLE ChiNhanh
ADD CONSTRAINT NhanVienLamTruongChiNhanh
FOREIGN KEY (truongChiNhanh)
REFERENCES NhanVien(maNV);

ALTER TABLE ChiTieu
ADD CONSTRAINT ChiTieuCuaDuAn
FOREIGN KEY (duAn)
REFERENCES DuAn(maDA);

ALTER TABLE DuAn
ADD CONSTRAINT DuAnThuocPhongBan
FOREIGN KEY (phongChuTri)
REFERENCES PhongBan(maPhong);

ALTER TABLE DuAn
ADD CONSTRAINT NhanVienLamTruongDuAn
FOREIGN KEY (truongDA)
REFERENCES NhanVien(maNV);

ALTER TABLE PhongBan
ADD CONSTRAINT PhongBanThuocChiNhanh
FOREIGN KEY (chiNhanh)
REFERENCES ChiNhanh(maCN);

ALTER TABLE PhongBan
ADD CONSTRAINT PhongBan
FOREIGN KEY (truongPhong)
REFERENCES NhanVien(maNV);

ALTER TABLE PhanCong
ADD CONSTRAINT PhanCongNhanVien
FOREIGN KEY (maNV)
REFERENCES NhanVien(maNV);

ALTER TABLE PhanCong
ADD CONSTRAINT PhanCongCuaDuAn
FOREIGN KEY (duAn)
REFERENCES DuAn(maDA);
