-- GROUP BY & HAVING
-- a. Liệt kê những địa chỉ khác nhau trong bảng hoc_sinh (bằng 2 cách khác nhau) ()
-- cach 1
select distinct dia_chi as 'Địa chỉ' from hoc_sinh;

-- cach 2
select dia_chi as 'Địa chỉ' from hoc_sinh group by dia_chi;

-- b. Liệt kê ho_ten_hs, gioi_tinh của các nhóm được phân nhóm theo ho_ten_hs và gioi_tinh trong bảng hoc_sinh.
select ho_ten_hs as 'Họ tên',gioi_tinh as 'Giới tính' from hoc_sinh group by ho_ten_hs,gioi_tinh;

-- c. Liệt kê ho_ten_hs của các nhóm được phân nhóm theo ho_ten_hs và gioi_tinh trong bảng hoc_sinh. 
-- Chú ý thử giải thích vì sao không liệt kê gioi_tinh mà vẫn không bị lỗi. ()
select ho_ten_hs as 'Họ tên' from hoc_sinh group by ho_ten_hs,gioi_tinh;

-- d. Liệt kê ma_mh, ten_mh, diem_thi_cuoi_ky của từng môn học chia theo từng mức điểm thi cuối kỳ. 
-- (Gợi ý: chỉ liệt kê những môn đã từng có học sinh thi cuối kỳ). ()
select kq.ma_mh as 'Mã môn học',mh.ten_mh 'Tên môn học',kq.diem_thi_cuoi_ky as 'Điểm thi cuối kỳ'
from ket_qua_hoc_tap kq 
join mon_hoc mh on kq.ma_mh=mh.ma_mh
where kq.diem_thi_cuoi_ky is not null
group by kq.ma_mh,kq.diem_thi_cuoi_ky;

-- e. Liệt kê ma_gv, ten_gv của những giáo viên đã từng được phân công phụ trách ít nhất 1 môn học. 
-- Nếu ma_gv, ten_gv trùng lặp nhiều lần thì chỉ hiển thị ra 1 lần trong kết quả trả về.
select pt.ma_gvpt as 'Ma Giao Vien',gv.ho_ten_gv as 'Ho ten'
from phu_trach_bo_mon pt
join giao_vien gv on gv.ma_gv=pt.ma_gvpt
group by pt.ma_gvpt,gv.ho_ten_gv;

-- f. Liệt kê tháng và năm của những tháng và năm đã có ít nhất 1 học sinh tham gia thi cuối kỳ (đã có diem_thi_cuoi_ky rồi). ()
select month(kq.ngay_gio_thi_cuoi_ky) as 'Tháng' , year(kq.ngay_gio_thi_cuoi_ky) as 'Năm'
from ket_qua_hoc_tap kq
where kq.diem_thi_cuoi_ky is not null
group by Tháng, Năm;
-- g. Liệt kê họ tên của những học sinh có địa chỉ ở Hải Châu và từng thi (giữa kỳ hoặc cuối kỳ) ít nhất 1 lần. 
select hs.ho_ten_hs as 'Họ tên'
from hoc_sinh hs
join ket_qua_hoc_tap kq on kq.ma_hs=hs.ma_hs
where dia_chi like 'Hải Châu' and kq.diem_thi_giua_ky is not null or kq.diem_thi_cuoi_ky is not null
group by hs.ho_ten_hs;
-- Nếu họ tên trùng lặp thì chỉ hiển thị ra 1 lần trong kết quả trả về. Yêu cầu: Không được sử dụng từ khoá DISTINCT.