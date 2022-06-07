CREATE DATABASE Minequiz;
USE Minequiz;

CREATE TABLE cliente(
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR(45) NOT NULL,
    emailCliente CHAR(45) NOT NULL UNIQUE,
    senha VARCHAR(45) NOT NULL
);


CREATE Table Pontos(
	idPonto INT auto_increment , 
	fkCliente INT , foreign key Pontos(fkCliente) references cliente(idCliente),
    primary key (idPonto, fkCliente),
    Pontuação INT
	)auto_increment= 1000;
    
CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES Cliente(idCliente)
);


