use pk03092_assignment3;
-- YC6.1--
-- select nhan_vien.MaNhanVien,nhan_vien.TenNhanVien,nhan_vien.DiaChi,nhan_vien.SDT,bo_phan.TenBoPhan   from nhan_vien,bo_phan where TenBoPhan = 'Bếp' and nhan_vien.MaBoPhan= bo_phan.MaBoPhan;
-- YC6.2---
-- select khach_hang.MaKhachHang,khach_hang.TenKhachHang,khach_hang.CCCD_CMND,khach_hang.SDT,khach_hang.DiaChi
-- from khach_hang,phieu_order 
-- where phieu_order.Ngay 
-- like '2023-03%' 
-- and phieu_order.MaKhachHang=khach_hang.MaKhachHang;

-- YC6.2B--
-- select *
-- from khach_hang,phieu_order 
-- where phieu_order.Ngay 
-- like '2023-03%' 
-- and phieu_order.MaKhachHang=khach_hang.MaKhachHang;

-- YC6.3--
-- select nguyen_lieu.TenNguyenLieu,Kho_nl.SoLuong,kho.TenKho,kho.LoaiKho
-- from nguyen_lieu,kho_nl,kho
-- where kho_nl.SoLuong <5 
-- and  nguyen_lieu.MaNguyenLieu = kho_nl.MaNguyenLieu
-- and nguyen_lieu.MaKho = kho.MaKho
-- and  kho.MaKho = kho_nl.MaKho
-- and nguyen_lieu.MaKho = kho_nl.MaKho
-- order by kho_nl.SoLuong ASC;

-- YC6.4--
-- select count(*) as 'Số lượng món Hải Sản' 
-- from mon_an 
-- where LoaiMonAn ='Hải Sản';

-- YC6.5--
-- select * from mon_an 
-- where TenMonAn 
-- like '%xào%';

-- YC6.6--
-- select hoa_don_thanh_toan.MaHoaDon,hoa_don_thanh_toan.TenHoaDon,hoa_don_thanh_toan.Ngay,hoa_don_thanh_toan.MaNhanVien,nhan_vien.TenNhanVien,hoa_don_thanh_toan.ThanhTien
-- from hoa_don_thanh_toan,nhan_vien
-- where hoa_don_thanh_toan.MaNhanVien = nhan_vien.MaNhanVien
-- order by hoa_don_thanh_toan.Ngay DESC;


-- YC6.7--
-- select khach_hang.MaKhachHang,khach_hang.TenKhachHang,count(phieu_order.MaKhachHang) as ' Số lần đặt bàn' from phieu_order,khach_hang
-- where khach_hang.MaKhachHang =phieu_order.MaKhachHang 
-- group by khach_hang.MaKhachHang
-- HAVING COUNT(*) >= 2;
-- select * from
-- mon_an
-- left join  mon_an_order 
-- on mon_an.MaMonAn = mon_an_order.MaMonAn 
-- where mon_an_order.MaPhieuOrder is null
-- ;

-- YC6.8--
-- update mon_an
-- set DonGia = DonGia*9.5
-- where TenMonAn like 'lẩu%';
-- select * from mon_an where TenMonAn like '%lẩu%';

-- YC6.9--
delete from hoa_don_cung_cap
where MaNguyenLieu = 'NL00000001';
delete from kho_nl
where MaNguyenLieu = 'NL00000001';
delete from ncc_nguyen_lieu
where MaNguyenLieu = 'NL00000001';
delete from nguyen_lieu 
where TenNguyenLieu= 'Cá Ngừ' 
and HSD < current_date();



