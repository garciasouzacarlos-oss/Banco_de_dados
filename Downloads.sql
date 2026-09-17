create database transilvania_hotel;
use transilvania_hotel;

create table proprietario(
proprietario_id varchar(255) primary key,
nome varchar (255),
cpf_cnpj varchar(20),
contato varchar(255)
);

create table cliente(
cliente_id varchar(255) primary key,
nome varchar(255),
cpf varchar(14),
contato varchar(255)
);

create table enderecos(
endereco_id varchar(255) primary key,
rua varchar(255),
numero int,
bairro varchar(255),
cidade varchar(255),
estado varchar(2),
cep varchar(10)
);

create table hospedagem(
hospedagem_id varchar(255) primary key,
tipo varchar(50),
endereco_id varchar(255),
proprietario_id varchar(255),
ativo bool,
foreign key (endereco_id) references enderecos(endereco_id),
foreign key (proprietario_id) references proprietario(proprietario_id)
);