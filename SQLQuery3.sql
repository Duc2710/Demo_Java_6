create database Java_6

use Java_6
go

CREATE TABLE HangkhachHang(
MaHang int IDENTITY(1,1) primary key,
TenHang NVARCHAR(50),
MoTa NVARCHAR(MAX),
DiemToiThieu int not null,
TrangThai int,
)

CREATE TABLE [KhachHang] (
  [MaKhachHang] BIGINT IDENTITY(1,1),
  [TenKhachHang] Nvarchar(50),
  [SDT] Nvarchar(50),
  [NgaySinh] Date,
  [Email] Nvarchar(50),
  [DiaChi] Nvarchar(50),
  GioiTinh BIT,
  [TrangThai] BIT,
  ChungMinhthu VARCHAR(15),
  SoCanCuoc VARCHAR(15),
  AnhDaiDien VARCHAR(50),
  DiemTichLuy INT DEFAULT 0,
  
  HangKhachHang int references HangKhachHang(MaHang),
);
--  NguoiGioiThieu BIGINT references KhachHang(MaKhachHang),
 
 -- Insert data into HangkhachHang table
INSERT INTO HangkhachHang (TenHang, MoTa, DiemToiThieu, TrangThai)
VALUES 
('Bronze', 'Basic membership level', 100, 1),
('Silver', 'Intermediate membership level', 500, 1),
('Gold', 'Premium membership level', 1000, 1);

-- Insert data into KhachHang table
INSERT INTO KhachHang (TenKhachHang, SDT, NgaySinh, Email, DiaChi, GioiTinh, TrangThai, ChungMinhthu, SoCanCuoc, AnhDaiDien, DiemTichLuy, HangKhachHang)
VALUES 
('Nguyen Van A', '0912345678', '1990-01-01', 'nguyenvana@example.com', '123 Nguyen Trai, Hanoi', 1, 1, '123456789', '987654321', 'avatar_a.jpg', 150, 1),
('Tran Thi B', '0923456789', '1985-05-15', 'tranthib@example.com', '456 Le Loi, HCMC', 0, 1, '234567890', '876543210', 'avatar_b.jpg', 600, 2),
('Le Van C', '0934567890', '1992-07-20', 'levanc@example.com', '789 Pham Van Dong, Da Nang', 1, 1, '345678901', '765432109', 'avatar_c.jpg', 1200, 3);


