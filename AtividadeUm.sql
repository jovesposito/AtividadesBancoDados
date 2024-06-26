CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_colaboradores(
    id_colaborador BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    setor VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_colaborador)
);

INSERT INTO tb_colaboradores(nome, cargo, setor, salario)
VALUES ("Fernanda Rodrigues", "Gerente de Vendas", "Comercial", 13000.00),
("Gustavo Oliveira", "Analista de Recursos Humanos", "Departamento Pessoal", 5200.00),
("Larissa Silva", "Desenvolvedora Java", "Tecnologia", 6500.00),
("Ricardo Alves", "Assistente Administrativo", "Administrativo", 1900.00),
("Rodrigo Santos", "Estagiário de Marketing", "Marketing", 900.00),
("Carolina Menezes", "Assistente de Atendimento ao Cliente", "Atendimento", 1800.00),
("Bruno Almeida", "Auxiliar de Logística", "Logística", 1700.00),
("Amanda Costa", "Analista de Treinamento", "Desenvolvimento de Pessoas", 5700.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 15000.00 WHERE id_colaborador = 1;

SELECT * FROM tb_colaboradores;