USE atividade2;
ALTER TABLE Livro
DROP COLUMN autor;

ALTER TABLE Livro
DROP COLUMN editora;

ALTER TABLE Livro
DROP COLUMN categoria;

ALTER TABLE Livro
ADD id_usuario INT,
ADD id_autor INT,
ADD id_editora INT,
ADD id_categoria INT,
ADD data_cadastro TIMESTAMP,
ADD data_atualizacao TIMESTAMP;

ALTER TABLE Livro
ADD CONSTRAINT fk_usuario
FOREIGN KEY (id_usuario)
REFERENCES Usuario(id_usuario)
ON DELETE CASCADE;

ALTER TABLE Livro
ADD CONSTRAINT fk_autor
FOREIGN KEY (id_autor)
REFERENCES Autor(id_autor);

ALTER TABLE Livro
ADD CONSTRAINT fk_editora
FOREIGN KEY (id_editora)
REFERENCES Editora(id_editora);

ALTER TABLE Livro
ADD CONSTRAINT fk_categoria
FOREIGN KEY (id_categoria)
REFERENCES Categoria(id_categoria);
 
 show tables;