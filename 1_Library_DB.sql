create database library_second;

use library_second;

create table genre
(genre_id int auto_increment primary key,
name varchar(50) not null);

create table author
(author_id int auto_increment primary key,
firstname varchar(30) not null,
lastname varchar(30) not null);

create table book
(book_id int auto_increment primary key,
title varchar(200) not null,
genre_id int,
foreign key (genre_id) references genre(genre_id));

create table book_author
(book_id int,
author_id int,
primary key (book_id, author_id),
foreign key (book_id) references book(book_id),
foreign key (author_id) references author(author_id));
