create database hospital;
use hospital;

create table pacientes (
id_pac varchar(8) not null primary key,
nome_pac varchar(100) not null,
cpf_pac varchar(11) NOT NULL,
endereco_pac varchar(110) not null,
idade_pac int not null,
contato_pac varchar (100) not null,
dataNasc_pac date not null
);
create table medicos(
id_med varchar(8) not null primary key,
nome_med varchar(100) not null,
cpf_med varchar(11) not null,
especializacao_med varchar(50),
id_pac_fk varchar(8),
constraint medico_paciente_afk foreign key (id_pac_fk)
references pacientes (id_pac)
);

create table enfermeiros(
id_enfemrm varchar(8) not null primary key,
nome_enferm varchar(100) not null,
cpf_eneferm varchar(11) not null,
cpf_pac varchar(11) not null primary key
);

CREATE TABLE farmaceuticos (
    id_farm VARCHAR(8) PRIMARY KEY,
    nome_farm VARCHAR(100) NOT NULL,
    cpf_farm VARCHAR(11) NOT NULL,
    cpf_enferm VARCHAR(11),
    nome_remedio VARCHAR(100)
);
    
create table remedio(
id_remedio varchar(8),
nome_remedio varchar(100),
qntd_remedio decimal(4,2),
dtv_remedio date,
horario_remedio time
);

INSERT INTO pacientes (id_pac, nome_pac, cpf_pac, endereco_pac, idade_pac, contato_pac, dataNasc_pac) VALUES
('P0010001', 'Manon Bannerman', '12345678901', 'Rua Seoul, 100', 23, 'manon@email.com', '2002-06-26'),
('P0010002', 'Sophia Laforteza', '23456789012', 'Av. Manila, 200', 21, 'sophia@email.com', '2003-12-31'),
('P0010003', 'Daniela Avanzini', '34567890123', 'Rua Los Angeles, 300', 20, 'daniela@email.com', '2004-07-01'),
('P0010004', 'Lara Rajagopalan', '45678901234', 'Av. New York, 400', 19, 'lara@email.com', '2005-11-03'),
('P0010005', 'Megan Skiendiel', '56789012345', 'Rua Honolulu, 500', 18, 'megan@email.com', '2006-03-10');

INSERT INTO medicos (id_med, nome_med, cpf_med, especializacao_med, id_pac_fk) VALUES 
('MED00001', 'Ana Silva', '12345678901', 'Cardiologia', 'PAC00001'),
('MED00002', 'Bruno Souza', '23456789012', 'Pediatria', 'PAC00002'),
('MED00003', 'Carla Dias', '34567890123', 'Dermatologia', NULL),
('MED00004', 'Daniel Lima', '45678901234', 'Ortopedia', 'PAC00003'),
('MED00005', 'Elena Rocha', '56789012345', 'Neurologia', NULL);

INSERT INTO enfermeiros (id_enfemrm, nome_enferm, cpf_eneferm, cpf_pac) VALUES 
('ENF00101', 'Noh Yunah', '11122233344', '99988877766'),
('ENF00202', 'Park Minju', '22233344455', '88877766555'),
('ENF00303', 'Sakai Moka', '33344455666', '77766555444'),
('ENF00404', 'Lee Wonhee', '44455566777', '66555444333'),
('ENF00505', 'Hokazono Iroha', '55566677888', '55444333221');

INSERT INTO FARMACEUTICOS (id_farm, nome_farm, cpf_farm, cpf_enferm, nome_remedio) VALUES
('F1234567', 'Carlos Silva', '12345678901', '98765432100', 'Amoxicilina 500mg'),
('F0000001', 'Ana Souza', '23456789012', '98765432101', 'Dipirona 500mg'),
('F0000002', 'Bruno Lima', '34567890123', '98765432102', 'Paracetamol 750mg'),
('F0000003', 'Carla Dias', '45678901234', '98765432103', 'Ibuprofeno 600mg'),
('F0000004', 'Daniel Alves', '56789012345', '98765432104', 'Omeprazol 20mg');

INSERT INTO remedio (id_remedio, nome_remedio, qnrd_remedio, dtv_remedio, horario_remedio)
VALUES 
('R0000001', 'Amoxicilina 500mg', 20.00, '2027-05-15', '08:00:00'),
('R0000002', 'Dipirona 500mg', 15.50, '2026-12-01', '12:30:00'),
('R0000003', 'Paracetamol 750mg', 10.00, '2028-02-28', '16:00:00'),
('R0000004', 'Ibuprofeno 600mg', 30.25, '2027-09-10', '22:00:00'),
('R0000005', 'Omeprazol 20mg', 05.00, '2026-11-20', '06:00:00');
