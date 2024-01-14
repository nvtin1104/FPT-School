 CREATE database if not exists  pk03092_assignment3 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
use pk03092_assignment3;
create table if not exists bo_phan(
	MaBoPhan char(5) primary key ,
    TenBoPhan nvarchar(20) not null
) ENGINE = InnoDB;
insert into bo_phan(MaBoPhan,TenBoPhan)
values ('BP001','Phục Vụ'),
		('BP002','Thu Ngân'),
		('BP003','Bếp'),
		('BP004','Quản lí kho');
use pk03092_assignment3;
create table if not exists chuc_vu(
	MaChucVu char(5) primary key ,
    TenChucVu nvarchar(20) not null
) ENGINE = InnoDB;
insert into chuc_vu(MaChucVu,TenChucVu)
values  ('CV001','Trưởng Ban'),
		('CV002','Nhân Viên'),
		('CV003','Thực Tập');
use pk03092_assignment3;
create table if not exists KHACH_HANG(
	MaKhachHang char(10) primary key,
    TenKhachHang nvarchar(50) not null,
    CCCD_CMND char(12) unique,
	SDT char(10) unique,
    DiaChi nvarchar(100) default 'Việt Nam'
) ENGINE = InnoDB;
insert into KHACH_HANG(MaKhachHang,TenKhachHang,CCCD_CMND,SDT,DiaChi)
values ('KH00000001','Nguyễn Văn Tín','040204002535','0905085920','P.Tân An, Tp. Buôn Mê Thuột'),
		('KH00000002','Nguyễn Văn Tài','040204002538','0905085520','P.Tân An, Tp. Buôn Mê Thuột'),
        ('KH00000003','Lê Thị Tín','040204102535','0905085220','P.Tân An, Tp. Buôn Mê Thuột'),
        ('KH00000004','Nam Trung','042204002535','0905085420','P.Tân An, Tp. Buôn Mê Thuột'),
        ('KH00000005','Thùy Nữ','041104002535','0905385920','P.Tân An, Tp. Buôn Mê Thuột');
        use pk03092_assignment3;
create table if not exists nhan_vien(
	MaNhanVien char(7) primary key,
    TenNhanVien nvarchar(50) not null,
    CCCD_CMND char(12) unique,
	SDT char(10) unique,
    DiaChi nvarchar(100) default 'Việt Nam',
     MaBoPhan char(5) not null,
    foreign key (MaBoPhan) references bo_phan(MaBoPhan),
    MaChucVu char(5) not null ,
    foreign key (MaChucVu) references chuc_vu(MaChucVu)
) ENGINE = InnoDB;
insert into nhan_vien(MaNhanVien,TenNhanVien,CCCD_CMND,SDT,DiaChi,MaBoPhan,MaChucVu)
values  ('NV00001','Nguyễn Tùng','040402032325','0907069548','Nguyễn Xuân Nguyên, Tân An, Buôn Mê Thuột','BP001','CV002'),
('NV00002','Nguyễn Lê','040405802325','0907069748','Nguyễn Xuân Nguyên, Tân An, Buôn Mê Thuột','BP001','CV003'),
('NV00003','Thanh Tùng','040403002325','0907065548','Nguyễn Xuân Nguyên, Tân An, Buôn Mê Thuột','BP002','CV001'),
('NV00004','Lê Văn Tín','040402002325','0907063548','Nguyễn Xuân Nguyên, Tân An, Buôn Mê Thuột','BP002','CV002'),
('NV00005','Nguyễn Nhạc','040407002325','0907269548','Nguyễn Xuân Nguyên, Tân An, Buôn Mê Thuột','BP003','CV003'),
('NV00006','Hoàng Tùng Chiến','040404002325','0407069548','Nguyễn Xuân Nguyên, Tân An, Buôn Mê Thuột','BP003','CV002'),
('NV00007','Ngô Thị Ngô','040402022325','0907086548','Nguyễn Xuân Nguyên, Tân An, Buôn Mê Thuột','BP003','CV001'),
('NV00008','Trần Lê','040402012325','0907069532','Nguyễn Xuân Nguyên, Tân An, Buôn Mê Thuột','BP004','CV001');
use pk03092_assignment3;
create table if not exists nha_cung_cap(
	MaNhaCungCap char(5) primary key,
    TenNhaCungCap nvarchar(50) not null,
    UuDai nvarchar(20) default 'Không'
) ENGINE = InnoDB;
insert into nha_cung_cap(MaNhaCungCap,TenNhaCungCap,UuDai)
values ('NCC01','Công Ty TNHH Lê Thành','Không'),
		('NCC02','Công Ty Hải Sản Trường Thành','Không'),
		('NCC03','Công Ty Rau Sạch Thành Công','Không');
use pk03092_assignment3;
create table if not exists KHACH_HANG__KIEU(
	MaKieu char(2) primary key ,
    TenKieu char(5) not null  default 'order',
	UuDai nvarchar(12)
) ENGINE = InnoDB;
insert into khach_hang__kieu(MaKieu,TenKieu,UuDai)
values ('K1','Order',''),
		('K2','Reser','Giảm 5%'),
		('K3','Party','Giảm 10%');
	use pk03092_assignment3;
use pk03092_assignment3;
create table if not exists kho(
	MaKho char(4) primary key,
    TenKho nvarchar(10) not null,
    LoaiKho nvarchar(18) 
) ENGINE = InnoDB;
insert into kho(MaKho,TenKho,LoaiKho)
values ('K001','Kho 1','Kho Khô'),
		('K002','Kho 2','Kho Lạnh'),
		('K003','Kho 3','Kho Đông');

create table if not exists phieu_order(
	MaPhieuOrder char(12) primary key ,
	Ngay date null default (current_timestamp),
    MaKieu char(2) not null ,
	YeuCau nvarchar(100) default 'Không',
    foreign key (MaKieu) references khach_hang__kieu(MaKieu),
    MaKhachHang char(10) not null,
    foreign key (MaKhachHang) references KHACH_HANG(MaKhachHang),
    MaNhanVien char(7) not null,
    foreign key (MaNhanVien) references nhan_vien(MaNhanVien)
) ENGINE = InnoDB;
insert into phieu_order(MaPhieuOrder,MaKieu,MaKhachHang,MaNhanVien,Ngay,YeuCau)
values ('PO0000000001','K1','KH00000001','NV00001','2023-03-01','Thêm Cơm'),
		('PO0000000002','K1','KH00000001','NV00001','2023-03-03','Thêm Cơm'),
		('PO0000000003','K2','KH00000001','NV00002','2023-03-05','Thêm Nước Chấm'),
		('PO0000000004','K2','KH00000002','NV00001','2023-03-20','Thêm Canh'),
		('PO0000000005','K3','KH00000003','NV00002','2023-04-01',''),
		('PO0000000006','K2','KH00000004','NV00001','2023-04-01','Thêm Nước Ngọt'),
		('PO0000000007','K1','KH00000004','NV00002','2023-04-02','Thêm Canh'),
		('PO0000000008','K2','KH00000005','NV00002','2023-04-05','Thêm Cơm'),
		('PO0000000009','K1','KH00000004','NV00001','2023-04-06','Thêm Cơm');
use pk03092_assignment3;
create table if not exists nguyen_lieu(
	MaNguyenLieu char(10) primary key ,
    TenNguyenLieu nvarchar(20) not null,
	NgayNhap date null default (current_timestamp),
    HSD date ,
    DonGia decimal(9,3) unsigned,
    Tinhtrang nvarchar(100),
    MaKho char(4) not null,
    foreign key (MaKho) references kho(MaKho),
	MaNhaCungCap char(5) not null,
    foreign key (MaNhaCungCap) references nha_cung_cap(MaNhaCungCap)
) ENGINE = InnoDB;

insert into nguyen_lieu(MaNguyenLieu,TenNguyenLieu,NgayNhap,HSD,DonGia,Tinhtrang,MaKho,MaNhaCungCap)
values  ('NL00000001','Cá Ngừ','2023-03-01','2023-04-01','50000','Hết Hạn Sử Dụng','K003','NCC02'),
		('NL00000002','Cá Ngừ','2023-04-01','2023-05-01','50000','Tươi','K003','NCC02'),
		('NL00000003','Cá Trê','2023-04-01','2023-04-25','9000','Ngon','K003','NCC02'),
		('NL00000004','Rau Cần','2023-04-01','2023-04-05','10000','Hết Hạn Sử Dụng','K002','NCC03'),
		('NL00000005','Thịt Heo','2023-04-01','2023-04-025','55000','Mới Nhập','K003','NCC01'),
		('NL00000006','Bột Nêm','2023-03-01','2023-06-01','50500','Đủ','K001','NCC01'),
		('NL00000007','Rau Thơm','2023-04-01','2023-04-15','1000','Đủ','K001','NCC03'),
		('NL00000008','Giò','2023-03-01','2023-04-15','10000','Đủ','K003','NCC01');
        use pk03092_assignment3;
create table if not exists kho_nl(
    SoLuong tinyint unsigned,
	MaKho char(4) not null,
    foreign key (MaKho) references kho(MaKho),
	MaNguyenLieu char(10) not null,
    foreign key (MaNguyenLieu) references nguyen_lieu(MaNguyenLieu),
    primary key(MaKho,MaNguyenLieu)
) ENGINE = InnoDB;
insert into kho_nl(MaKho,MaNguyenLieu,SoLuong)
values ('K001','NL00000006','10'),
		('K001','NL00000007','5'),
		('K001','NL00000005','10'),
		('K002','NL00000004','20'),
		('K003','NL00000003','2'),
		('K003','NL00000002','1'),
		('K003','NL00000001','100'),
		('K003','NL00000008','13'),
		('K003','NL00000005','38');
        use pk03092_assignment3;
create table if not exists ncc_nguyen_lieu(
	SoLuong tinyint unsigned,
	MaNhaCungCap char(5) not null,
    foreign key (MaNhaCungCap) references nha_cung_cap(MaNhaCungCap),
    MaNguyenLieu char(10) not null,
    foreign key (MaNguyenLieu) references nguyen_lieu(MaNguyenLieu),
    primary key (MaNhaCungCap,MaNguyenLieu)
) ENGINE = InnoDB;
insert into ncc_nguyen_lieu(MaNguyenLieu,MaNhaCungCap,SoLuong)
values ('NL00000001','NCC02','10'),
('NL00000002','NCC02','3'),
('NL00000003','NCC02','39'),
('NL00000004','NCC03','5'),
('NL00000005','NCC01','3'),
('NL00000006','NCC01','5'),
('NL00000007','NCC03','3'),
('NL00000008','NCC01','2');
use pk03092_assignment3;
create table if not exists so_theo_doi(
	MaSo char(5) primary key,
	NgayTheoDoi date null default (current_timestamp),
	MaNhanVien char(7) not null,
    foreign key (MaNhanVien) references nhan_vien(MaNhanVien)
) ENGINE = InnoDB;
insert into so_theo_doi(MaSo,NgayTheoDoi,MaNhanVien)
values   ('STD01','2023-04-01','NV00008'),
		 ('STD02','2023-04-15','NV00008');
use pk03092_assignment3;
create table if not exists ds_theo_doi(
    Tinhtrang nvarchar(100) default 'Đủ',
    SoLuong tinyint unsigned, 
	MaSo char(5) not null,
    foreign key (MaSo) references so_theo_doi(MaSo),
	MaNguyenLieu char(10) not null,
    foreign key (MaNguyenLieu) references nguyen_lieu(MaNguyenLieu),
	MaNhanVien char(7) not null,
    foreign key (MaNhanVien) references nhan_vien(MaNhanVien),
	primary key (MaSo,MaNguyenLieu)
) ENGINE = InnoDB;
insert into ds_theo_doi(MaSo,MaNguyenLieu,MaNhanVien,SoLuong,Tinhtrang)
values  ('STD01','NL00000005','NV00008','100','Đủ'),
		('STD01','NL00000002','NV00008','1','Đủ'),
		('STD02','NL00000004','NV00008','2','Đủ'),
		('STD02','NL00000003','NV00008','20','Đủ');
use pk03092_assignment3;
create table if not exists hoa_don_cung_cap(
	MaHoaDon char(10) primary key ,
	Ngay date null default (current_timestamp),
    ThanhTien decimal(15,3) unsigned,
	MaNhaCungCap char(5) not null,
    foreign key (MaNhaCungCap) references nha_cung_cap(MaNhaCungCap),
	MaNhanVien char(7) not null,
    foreign key (MaNhanVien) references nhan_vien(MaNhanVien),
    MaNguyenLieu char(10) not null,
    foreign key (MaNguyenLieu) references nguyen_lieu(MaNguyenLieu)
) ENGINE = InnoDB;
use pk03092_assignment3;
insert into hoa_don_cung_cap(MaHoaDon,ThanhTien,MaNhaCungCap,MaNhanVien,MaNguyenLieu)
values ('HD00000001','10000000','NCC02','NV00004','NL00000001'),
('HD00000002','10000000','NCC02','NV00004','NL00000002'),
('HD00000003','10000000','NCC02','NV00004','NL00000003'),
('HD00000004','10000000','NCC03','NV00004','NL00000004'),
('HD00000005','10000000','NCC01','NV00004','NL00000005'),
('HD00000006','10000000','NCC01','NV00004','NL00000006'),
('HD00000007','10000000','NCC03','NV00004','NL00000007'),
('HD00000008','10000000','NCC01','NV00004','NL00000008');
use pk03092_assignment3;
create table if not exists mon_an(
	MaMonAn char(7) primary key ,
	NgayLenMon date null default (current_timestamp),
    TenMonAn nvarchar(50) not null ,
    LoaiMonAn nvarchar(14) null ,
    DonGia decimal(15,3)  unsigned
) ENGINE = InnoDB;
insert into mon_an(MaMonAn,NgayLenMon,TenMonAn,LoaiMonAn,DonGia)
values 
('MA00001','2023-01-01','Ca Ngu','Hải Sản','40000'),
('MA00002','2023-01-01','Lẩu Cá Ngừ','Hải Sản','450000'),
('MA00003','2023-01-01','Lẩu Bò','Thịt','800000'),
('MA00004','2023-01-01','Rau Xào','Rau','500000'),
('MA00005','2023-01-01','Bò Xào','Thịt','100000'),
('MA00006','2023-01-01','Bò Chiên','Thịt','500000'),
('MA00007','2023-01-01','Giò Rau','Rau','60000'),
('MA00008','2023-01-01','Cá Ngừ Hấp','Hải Sản','600000'),
('MA00009','2023-01-01','Lẩu Cá Trê','Hải Sản','500000');

use pk03092_assignment3;
create table if not exists hoa_don_thanh_toan(
	MaHoaDon char(7) primary key,
    TenHoaDon nvarchar(45) not null,
    ThanhTien decimal(15,3) unsigned,
    Ngay date null default (current_timestamp),
    MaNhanVien char(7) not null,
    foreign key (MaNhanVien) references nhan_vien(MaNhanVien),
    MaPhieuOrder char(12) not null,
    foreign key (MaPhieuOrder) references phieu_order(MaPhieuOrder)
) ENGINE = InnoDB;
insert into hoa_don_thanh_toan(MaHoaDon,TenHoaDon,MaPhieuOrder,MaNhanVien,ThanhTien,Ngay)
values 
		('HD00001','Hóa Đơn Thanh Toán','PO0000000001','NV00003','10000000','2023-03-01'),
		('HD00002','Hóa Đơn Thanh Toán','PO0000000002','NV00003','10000000','2023-03-03'),
		('HD00003','Hóa Đơn Thanh Toán','PO0000000003','NV00004','10000000','2023-03-05'),
		('HD00004','Hóa Đơn Thanh Toán','PO0000000004','NV00003','10000000','2023-03-20'),
		('HD00005','Hóa Đơn Thanh Toán','PO0000000005','NV00004','10000000','2023-04-01'),
		('HD00006','Hóa Đơn Thanh Toán','PO0000000006','NV00003','10000000','2023-04-01'),
		('HD00007','Hóa Đơn Thanh Toán','PO0000000007','NV00004','10000000','2023-04-02'),
		('HD00008','Hóa Đơn Thanh Toán','PO0000000008','NV00003','10000000','2023-04-05'),
		('HD00009','Hóa Đơn Thanh Toán','PO0000000009','NV00003','10000000','2023-04-06');
use pk03092_assignment3;
create table if not exists mon_an_order(
	Soluong tinyint unsigned,
    MaMonAn  char(7) not null,
    foreign key (MaMonAn) references mon_an(MaMonAn),
    MaPhieuOrder char(12) not null,
    foreign key (MaPhieuOrder) references phieu_order(MaPhieuOrder),
    primary key(MaPhieuOrder, MaMonAn)
) ENGINE = InnoDB;
insert into mon_an_order(MaMonAn,MaPhieuOrder,Soluong)
values 
('MA00001','PO0000000001','2'),
('MA00002','PO0000000001','2'),
('MA00002','PO0000000002','2'),
('MA00003','PO0000000002','2'),
('MA00002','PO0000000003','2'),
('MA00003','PO0000000003','2'),
('MA00004','PO0000000004','2'),
('MA00005','PO0000000005','2'),
('MA00006','PO0000000006','2'),
('MA00001','PO0000000006','2'),
('MA00007','PO0000000006','2'),
('MA00002','PO0000000006','2'),
('MA00009','PO0000000007','2'),
('MA00002','PO0000000007','2'),
('MA00009','PO0000000008','2'),
('MA00006','PO0000000008','2'),
('MA00001','PO0000000008','2'),
('MA00002','PO0000000008','2'),
('MA00003','PO0000000009','2'),
('MA00002','PO0000000009','2'),
('MA00001','PO0000000009','2');
use pk03092_assignment3;
create table if not exists congthuc_nl(
	SoLuong tinyint unsigned,
	MaMonAn char(7) not null,
    foreign key (MaMonAn) references mon_an(MaMonAn),
	MaNguyenLieu char(10) not null,
    foreign key (MaNguyenLieu) references nguyen_lieu(MaNguyenLieu),
    primary key (MaMonAn,MaNguyenLieu)
) ENGINE = InnoDB;
insert into congthuc_nl(MaMonAn,MaNguyenLieu,SoLuong) 
values ('MA00001','NL00000006','10'),
('MA00001','NL00000002','10'),
('MA00001','NL00000005','10'),
('MA00002','NL00000007','10'),
('MA00002','NL00000002','10'),
('MA00002','NL00000003','10'),
('MA00003','NL00000008','10'),
('MA00004','NL00000002','10');

