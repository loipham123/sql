create database team_management;
use team_management;

create table coach(
	id int auto_increment primary key not null,
    name varchar(50),
    age int
);

create table team(
	id int auto_increment primary key not null,
    name varchar(50),
    coach_id int unique,
    foreign key (coach_id) references coach(id)
);

create table player(
	id int auto_increment primary key not null,
    name varchar(50),
    age int,
    team_id int,
    foreign key (team_id) references team(id)
);

create table playerposition(
	id int auto_increment primary key not null,
    name varchar(50) not null
);

create table player_position(
	player_id int,
    position_id int,
    primary key(player_id,position_id),
    foreign key (player_id) references player(id),
    foreign key (position_id) references playerposition(id)
);

create table team_match(
	id int primary key auto_increment not null,
    date date,
    team1_id int,
    team2_id int,
    foreign key (team1_id) references team(id),
	foreign key (team2_id) references team(id)
);

create table player_match(
	player_id int,
    match_id int,
    primary key(player_id,match_id),
    foreign key (player_id) references player(id),
	foreign key (match_id) references team_match(id)
);