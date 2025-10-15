create database phone_book;
 use phone_book;
 
 create table people(
	id int primary key not null auto_increment,
    name varchar(25) not null
 );
 
 create table phone_number(
	id int primary key auto_increment not null,
    number varchar(10) not null,
    people_id int not null,
    foreign key (people_id) references people(id)
 );
 
 create table email(
	id int primary key auto_increment not null,
    email_address varchar(30) not null,
    people_id int not null,
    foreign key (people_id) references people(id)
 );
 