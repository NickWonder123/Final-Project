drop database if exists videogames;
create database videogames;
use videogames;

create table genre(
	genreID int not null auto_increment,
    genreName varchar(255),
    primary key (genreID)
);

create table developers(
	devID int not null auto_increment,
    devName varchar(255),
    primary key (devID)
);

create table game(
	gameID int not null auto_increment,
	gameName varchar(255) not null,
    gameDevelopers int not null,
    gamePrice float not null,
    gameGenre int,
    primary key (gameID),
    foreign key (gameGenre) references genre(genreID),
    foreign key (gameDevelopers) references developers(devID)
);

insert into genre (genreName) values ("Test");

insert into developers (devName) values ("TestDev");

insert into game(gameName, gameDevelopers, gamePrice, gameGenre) values ("TestGame", 1, 9999.99, 1);

select * from genre;
select * from developers;
select * from game;

select
	*
from
	game as g1
join developers as d on g1.gameDevelopers = d.devID
join genre as g2 on g1.gameGenre = g2.genreID;