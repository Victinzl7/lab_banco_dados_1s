USE atividade2;
ALTER TABLE Usuario
MODIFY data_cadastro TIMESTAMP;

ALTER TABLE Usuario
ADD data_atualizacao TIMESTAMP;
