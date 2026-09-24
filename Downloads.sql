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

create table alugueis(
aluguel_id varchar(255) primary key,
cliente_id varchar(255),
hospedagem_id varchar(255),
data_inicio date,
data_fin date,
preco_total decimal(10,2),
foreign key (cliente_id) references cliente (cliente_id),
foreign key hospedagem (hospedagem_id) references hospedagem (hospedagem_id)
);

create table avaliacoes (
avaliacao varchar(255) primary key,
cliente_id varchar(255),
hospedagem_id varchar(255),
nata INT,
comentario text,
foreign key (cliente_id) references cliente(cliente_id),
foreign key hospedagem (hospedagem_id) references hospedagem (hospedagem_id)
);