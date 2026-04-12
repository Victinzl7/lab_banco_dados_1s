USE biblioteca_pessoal_1s2026;
-- CARGA INICIAL 

-- USUÁRIO
INSERT INTO usuario (nome, email, senha) VALUES
('João Silva', 'joao@email.com', '123456');

-- CATEGORIAS
INSERT INTO categoria (nome, descricao) VALUES
('Fantasia', 'Livros de fantasia'),
('Filosofia', 'Livros filosóficos'),
('Romance', 'Livros românticos');

-- AUTORES
INSERT INTO autor (nome, ano_nascimento, apresentacao) VALUES
('J.K. Rowling', 1965, 'Autora de Harry Potter'),
('Platão', -427, 'Filósofo grego'),
('Machado de Assis', 1839, 'Autor brasileiro');

-- EDITORAS
INSERT INTO editora (nome, cidade, estado, pais) VALUES
('Rocco', 'Rio de Janeiro', 'RJ', 'Brasil'),
('Editora Abril', 'São Paulo', 'SP', 'Brasil'),
('Companhia das Letras', 'São Paulo', 'SP', 'Brasil');

-- LIVROS
INSERT INTO livro (id_usuario, id_autor, id_editora, id_categoria, titulo, sinopse, ano_publicacao, lido) VALUES
(1, 1, 1, 1, 'Harry Potter e a Pedra Filosofal', 'Primeiro livro da saga Harry Potter', 1997, 1),
(1, 1, 1, 1, 'Harry Potter e a Câmara Secreta', 'Segundo livro da saga', 1998, 1),
(1, 2, 2, 2, 'A República', 'Obra filosófica de Platão', -380, 0),
(1, 3, 3, 3, 'Dom Casmurro', 'Clássico brasileiro', 1899, 1);

-- QUERIES SOLICITADAS

-- 1. Livros da autora 'J.K. Rowling'
SELECT titulo
FROM livro
WHERE id_autor = (
    SELECT id_autor FROM autor WHERE nome = 'J.K. Rowling'
);

-- 2. Livros da categoria 'Filosofia'
SELECT titulo
FROM livro
WHERE id_categoria = (
    SELECT id_categoria FROM categoria WHERE nome = 'Filosofia'
);

-- 3. Alterar nome da categoria 'Filosofia' para 'Censurado'
UPDATE categoria
SET nome = 'Censurado'
WHERE nome = 'Filosofia';

-- 4. Deletar livros da categoria 'Censurado'
DELETE FROM livro
WHERE id_categoria = (
    SELECT id_categoria FROM categoria WHERE nome = 'Censurado'
);