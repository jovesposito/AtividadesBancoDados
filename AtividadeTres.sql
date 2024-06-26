CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
    matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    situacao VARCHAR(255) NOT NULL,
    nota DECIMAL(2,1) NOT NULL,
    PRIMARY KEY (matricula)
);

INSERT INTO tb_estudantes(nome, genero, situacao, nota)
VALUES ("Rafaela Oliveira", "Feminino", "Ativa", 6.5),
("Diego Rodrigues", "Masculino", "Ativa", 5.8),
("Juliana Almeida", "Feminino", "Trancada", 6.2),
("Bruno Santos", "Feminino", "Ativa", 7.5),
("Carla Costa", "Não binário", "Ativa", 9.5),
("Lucas Pereira", "Não binário", "Ativa", 7.8),
("Mariana Fernandes", "Feminino", "Formada", 6.5),
("Eduardo Silva", "Masculino", "Ativa", 5.5);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.0 WHERE matricula = 8;

SELECT * FROM tb_estudantes;