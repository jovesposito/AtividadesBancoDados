CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    massa VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, massa) VALUES
('doce', 'fina'),
('salgada', 'pan'),
('doce', 'integral'),
('salgada', 'tradicional'),
('doce', 'crocante');

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, categoriaid) VALUES
('Margherita', 'Molho de tomate, queijo mussarela, manjericão', 55.00, 'Média', 2),
('Pepperoni', 'Molho de tomate, queijo mussarela, pepperoni', 60.00, 'Grande', 2),
('Quatro Queijos', 'Molho de tomate, queijo mussarela, gorgonzola, parmesão, provolone', 70.00, 'Grande', 2),
('Calabresa', 'Molho de tomate, queijo mussarela, calabresa, cebola', 58.00, 'Média', 2),
('Vegetariana', 'Molho de tomate, queijo mussarela, pimentão, cebola, azeitonas, champignon', 65.00, 'Grande', 2),
('Frango com Catupiry', 'Molho de tomate, queijo mussarela, frango desfiado, catupiry', 75.00, 'Grande', 2),
('Portuguesa', 'Molho de tomate, queijo mussarela, presunto, ovos, cebola, azeitonas', 62.00, 'Média', 2),
('Chocolate com Morango', 'Base de chocolate, morangos frescos, raspas de chocolate', 55.00, 'Pequena', 1),
('Pizza Gourmet Trufada', 'Molho de tomate, queijo brie, presunto de Parma, trufas', 120.00, 'Grande', 2),
('Pizza Especial de Camarão', 'Molho de tomate, queijo mussarela, camarões frescos, alho-poró', 140.00, 'Grande', 2);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, descricao, preco, tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT nome, descricao, preco, tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.tipo = "salgada";