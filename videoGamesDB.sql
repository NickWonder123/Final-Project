drop database if exists videogames;
create database videogames;

create table genre(
	ID int not null auto_increment,
    genreName varchar(255),
    primary key (ID),
    foreign key (genreName) references game(gameGenre)
);

create table game(
	ID int not null auto_increment,
	gameName varchar(255) not null,
    gameDevelopers varchar(255) not null,
    gamePrice float not null,
    gameGenre varchar(255),
    primary key (ID)
);