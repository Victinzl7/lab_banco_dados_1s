USE atividade2;
Create table livro(
id_livro INT AUTO_INCREMENT PRIMARY KEY,
sinopse TEXT NULL,
autor VARCHAR(128) NOT NULL,
editora VARCHAR(128) UNIQUE,
categoria VARCHAR(128) NOT NULL UNIQUE,
ano_publicacao YEAR NOT NULL
);
show tables;