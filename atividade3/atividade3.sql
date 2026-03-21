CREATE database atividade3;
USE atividade3;

-- =========================
-- TABELA USUARIO
-- =========================
CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- =========================
-- TABELA AUTOR
-- =========================
CREATE TABLE Autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

-- =========================
-- TABELA EDITORA
-- =========================
CREATE TABLE Editora (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

-- =========================
-- TABELA CATEGORIA
-- =========================
CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

-- =========================
-- TABELA LIVRO
-- =========================
CREATE TABLE Livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    id_usuario INT,
    id_autor INT,
    id_editora INT,
    id_categoria INT,

    FOREIGN KEY (id_usuario)
        REFERENCES Usuario(id_usuario)
        ON DELETE CASCADE,

    FOREIGN KEY (id_autor)
        REFERENCES Autor(id_autor)
        ON DELETE RESTRICT,

    FOREIGN KEY (id_editora)
        REFERENCES Editora(id_editora)
        ON DELETE RESTRICT,

    FOREIGN KEY (id_categoria)
        REFERENCES Categoria(id_categoria)
        ON DELETE RESTRICT
);
describe Usuario;
describe Autor;
describe Editora;
describe Categoria;
show tables;