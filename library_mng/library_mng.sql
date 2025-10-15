create database library_mng;
use library_mng;
create table staff(
	id int primary key auto_increment not null,
    name varchar(50) not null,
    address varchar(255)
);
create table book(
	id int primary key auto_increment not null,
    name varchar(50) not null,
    price double,
    staff_id int,
    foreign key (staff_id) references staff(id)
);

create table author(
	id int primary key auto_increment not null,
    name varchar(50) not null
);

create table author_book(
	book_id int,
    author_id int,
    primary key(book_id,author_id),
    foreign key (book_id) references book(id),
    foreign key (author_id) references author(id)
)
