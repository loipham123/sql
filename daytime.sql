-- g. MaMH, MaLop, HocKy của những môn học đã được thi cuối kỳ vào năm 2023
select kq.ma_mh,lop.ma_lop,kq.hoc_ky
from ket_qua_hoc_tap as kq
join hoc_sinh hs on kq.ma_hs=hs.ma_hs
join lop on hs.ma_lop=lop.ma_lop
where year(kq.ngay_gio_thi_cuoi_ky)=2023;
-- h. MaMH, MaLop, HocKy của những môn học đã được thi vào tháng 8 năm 2023
select kq.ma_mh,lop.ma_lop,kq.hoc_ky
from ket_qua_hoc_tap as kq
join hoc_sinh hs on kq.ma_hs=hs.ma_hs
join lop on hs.ma_lop=lop.ma_lop
where year(kq.ngay_gio_thi_cuoi_ky)=2023 and month(kq.ngay_gio_thi_cuoi_ky)=8;
-- i. MaMH, MaLop, HocKy của những môn học đã được thi trước ngày 20 tháng 8 năm 2023
select kq.ma_mh,lop.ma_lop,kq.hoc_ky
from ket_qua_hoc_tap as kq
join hoc_sinh hs on kq.ma_hs=hs.ma_hs
join lop on hs.ma_lop=lop.ma_lop
where kq.ngay_gio_thi_cuoi_ky < '2023-08-20';
-- j. MaMH, MaLop, HocKy của những môn học đã được thi trước ngày 20 tháng 8 năm 2023 đúng 1 tuần.
select kq.ma_mh,lop.ma_lop,kq.hoc_ky
from ket_qua_hoc_tap as kq
join hoc_sinh hs on kq.ma_hs=hs.ma_hs
join lop on hs.ma_lop=lop.ma_lop
where kq.ngay_gio_thi_cuoi_ky >= '2023-08-13' and kq.ngay_gio_thi_cuoi_ky < '2023-08-20';
-- k. MaMH, MaLop, HocKy của những môn học đã được thi sau ngày 20 tháng 8 năm 2023 đúng 21 ngày.
select kq.ma_mh,lop.ma_lop,kq.hoc_ky
from ket_qua_hoc_tap as kq
join hoc_sinh hs on kq.ma_hs=hs.ma_hs
join lop on hs.ma_lop=lop.ma_lop
where kq.ngay_gio_thi_cuoi_ky >= '2023-09-10' and kq.ngay_gio_thi_cuoi_ky <= '2023-10-01';
-- l. MaMH, MaLop, HocKy của những môn học đã được thi trong khoảng từ ngày 10 đến ngày 20 tháng 8 năm 2023.
select kq.ma_mh,lop.ma_lop,kq.hoc_ky
from ket_qua_hoc_tap as kq
join hoc_sinh hs on kq.ma_hs=hs.ma_hs
join lop on hs.ma_lop=lop.ma_lop
where kq.ngay_gio_thi_cuoi_ky >= '2023-08-10' and kq.ngay_gio_thi_cuoi_ky <= '2023-08-20';
-- m. MaMH, MaLop, HocKy của những môn học đã được thi trong khoảng từ 10 giờ 00 phút ngày 10 đến 20 giờ 30 phút ngày 20 tháng 8 năm 2023.
select kq.ma_mh,lop.ma_lop,kq.hoc_ky
from ket_qua_hoc_tap as kq
join hoc_sinh hs on kq.ma_hs=hs.ma_hs
join lop on hs.ma_lop=lop.ma_lop
where kq.ngay_gio_thi_cuoi_ky >= '2023-08-20 10:00:00' and kq.ngay_gio_thi_cuoi_ky <= '2023-08-20 20:30:00';