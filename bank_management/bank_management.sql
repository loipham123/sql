create database bank_management;
use bank_management;

create table customer(
	id int primary key auto_increment not null,
    name varchar(20) not null
);

create table account(
	id int primary key auto_increment not null,
    balance long ,
    customer_id int not null,
    foreign key (customer_id) references customer(id)
);