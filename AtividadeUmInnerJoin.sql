CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
	dificuldade VARCHAR(20) NOT NULL
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    ataque INT,
    defesa INT,
    classeid BIGINT,
    FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (descricao, dificuldade) VALUES
('Guerreiro', 'Intermediário'),
('Mago', 'Avançado'),
('Arqueiro', 'Iniciante'),
('Ladrão', 'Avançado'),
('Cavaleiro', 'Intermediário');

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classeid) VALUES
('Aragorn', 10, 2500, 1500, 1),
('Eldara', 8, 2200, 1800, 2),
('Cassandra', 6, 1800, 1200, 3),
('Lucas', 5, 2100, 900, 4),
('Gandalf', 12, 2800, 2200, 2),
('Thorin', 9, 1900, 1700, 5),
('Frodo', 4, 1500, 800, 4),
('Legolas', 7, 2100, 1600, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, nivel, ataque, defesa, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT nome, nivel, ataque, defesa, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.descricao = "Arqueiro";