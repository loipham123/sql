create database school_management;
use school_management;

create table teacher(
	id int primary key auto_increment not null,
    name varchar(50) not null
);

create table student(
	id int primary key auto_increment not null,
    name varchar(50) not null,
    teacher_id int not null,
    foreign key (teacher_id) references teacher(id)
);