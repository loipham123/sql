create database store_management;
use store_manegement;
create table SanPham(
	maSP int primary key not null auto_increment,
    tenSP varchar(50) not null,
    moTa varchar(255),
    gia double,
    soLuong int
);

insert into SanPham (tenSP,moTa,gia,soLuong) values ('Sh350i','Vặn là bay',200000,5);
insert into SanPham (tenSP,moTa,gia,soLuong) values ('Z1000','Đá số là bay',500000,3);

insert into SanPham value (null,'AB160','Đã độ Pô AKM',50000,6);

insert into SanPham (tenSP,moTa,gia,soLuong) values ('Iphone17 ProMax',null,32000,10);

select * from SanPham;

select maSP,tenSP,gia from SanPham;

select maSP,tenSP,gia from SanPham where gia<10000;

SET sql_safe_updates = 0;

update SanPham set gia=gia+5000;

SET sql_safe_updates = 1;


SET sql_safe_updates = 0;
update SanPham set moTa='Sang chảnh' where tenSP='Iphone17 ProMax';
SET sql_safe_updates = 1;

alter table SanPham add column Barcode varchar(50);

alter table SanPham add column Warranty varchar(20) default '6 tháng';

select * from SanPham;

set sql_safe_updates = 0;
delete from SanPham where tenSP='Iphone17 ProMax';

set sql_safe_updates = 1;

set sql_safe_updates = 0;
delete from SanPham;
set sql_safe_updates = 1;

drop table SanPham;

drop database store_management;

drop database if exists store_management;