CREATE DATABASE Cadastros
default character set utf8mb4
default collate utf8mb4_general_ci;

use cadastros;

create table Usuarios(
id int not null auto_increment,
nome varchar(60) not null,
sexo enum ('M','F'),
nascimento date,
email varchar(60),
senha int not null,
primary key(id)
)default charset = utf8mb4;

insert into usuarios values 
(default, 'Bruno Oliveira','m','1999-07-21','teste@gmail.com','123123'),
(default,'YURI MARINHO','m','2001-09-12','teste@gmail.com','123123')
; 

alter table usuarios add column CPF varchar(11) not null default '' after nome;

select * from usuarios;

create table if not exists Contatos ( 
telefone int(11) not null unique);

select * from contatos;

insert into contatos values('86998316582');

select * from contatos;