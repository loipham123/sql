create database java05_sqc;
use java05_sqc;
create table student (
	id int primary key auto_increment not null,
    name varchar(50) not null,
    score double 
);

insert into student (name, score) values ('Lợi',2);
insert into student (name, score) values ('Linh',5);
insert into student (name, score) values ('Vy',7);

select name, score from student;
select id,name, score from student;
select * from student;

select * from student where id=2;

delete from student where id=1;

select * from student;

insert into student (name ,score) values ('Dam',3);

update student set score = 5 where id =3;

select * from student; 

alter table student add address varchar(100);

