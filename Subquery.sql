-- a. Học sinh chưa từng thi môn nào
select ho_ten_hs as 'Họ tên'
from hoc_sinh
where ma_hs not in (select ma_hs from ket_qua_hoc_tap);

-- b. Giáo viên chưa từng phụ trách môn học nào
select ho_ten_gv as 'Họ tên giáo viên'
from giao_vien
where ma_gv  not in (select ma_gvpt from phu_trach_bo_mon);

-- c. Giáo viên chưa từng chủ nhiệm lớp nào 
select ho_ten_gv as 'Họ tên giáo viên'
from giao_vien
where ma_gv not in (select ma_gvcn from lop);

-- d. Môn học chưa từng được tổ chức thi lần nào
select ten_mh as 'Môn học'
from mon_hoc
where ma_mh not in (select ma_mh from ket_qua_hoc_tap );

-- e. Đếm xem tương ứng với mỗi địa chỉ (của học sinh), số lượng học sinh đang ở mỗi địa chỉ là bao nhiêu em. 
-- Chỉ hiển thị kế tqua cho những địa chỉ có ít nhất 5 học sinh đang ở đó
select dia_chi as 'Địa chỉ' , count(*) as 'Số lượng'
from hoc_sinh 
group by dia_chi
having count(*) >=5;

-- f. Liệt kê điểm thi trung bình của từng môn học (dựa vào điểm thi cuối kỳ mà các học sinh đã từng thi). 
-- Chỉ liệt kê những môn có điểm trung bình từ 5 đến 10
select mh.ten_mh as 'Tên môn học'  , avg(kq.diem_thi_cuoi_ky) as 'Điểm trung bình'
from mon_hoc mh
join ket_qua_hoc_tap kq on mh.ma_mh=kq.ma_mh
group by mh.ma_mh,kq.ma_mh
having avg(kq.diem_thi_cuoi_ky) between 5 and 10;

-- g. Tính điểm thi trung bình của từng học sinh trong trường. Chỉ tính điểm trung bình cho những học sinh 
-- đã từng thi cuối kỳ cho ít nhất 1 môn. 
-- Dựa vào cột điểm thi cuối kỳ để tính. Chỉ hiển thị những học sinh có điểm trung bình trên 8
select hs.ho_ten_hs, avg(kq.diem_thi_cuoi_ky) as 'Điểm trung bình'

