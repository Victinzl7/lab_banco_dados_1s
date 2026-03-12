create database biblioteca_pessoal12026;
USE  biblioteca_pessoal12026;
create table usuario(
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
email VARCHAR(128) NOT NULL UNIQUE,
data_cadastro DATE DEFAULT (CURRENT_DATE) NOT NULL
);
show tables;

Create table livro(
id_livro INT AUTO_INCREMENT PRIMARY KEY,
sinopse TEXT NULL,
autor VARCHAR(128) NOT NULL,
editora VARCHAR(128) UNIQUE,
categoria VARCHAR(128) NOT NULL UNIQUE,
ano_publicacao YEAR NOT NULL
);
show tables;