..DESCRIÇÃO
..Neste desafio, você irá utilizar seu esquema conceitual, criado noo desafio doo módulo de modelagem de BD com modelo ER
..para criar o esquema lógico para o contexto de uma oficina. Você definirá todas aas etapas. Desde o esquema aaté a implementação
..doo banco de dados.

create database oficina;
use oficina;

create table clients(
idClient int auto_increment, primary key,
Cname varchar(45),
modCar varchar(45),
CPF char(11) not null,
Tel varchar(11)
constraint unique_cpf_client unique (CPF)
);

create table services(
idClient varchar(45),
repairs boolean,
revis boolean,
);

create table team(
Codigo varchar(45),
name varchar(45),
lName varchar(45),
CPF varchar(11) not null,
adress varchar(255),
specialty varchar(45),
);

create table payment(
idclient int,
idPayment int,
typePayment enum('Cartão', 'Boleto', 'Pix'),
limitAvailable float,
primary key (idClient , idPayment)
);

create table OS(
IdOS int,
Num varchar(45) not null,
emDate varchar(45),
status varchar(45),
concDate varchar(45),
priceOs int,
);