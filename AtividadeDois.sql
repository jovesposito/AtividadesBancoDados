CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id_produto BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    nome_produto VARCHAR(255) NOT NULL,
    estoque INT,
    preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_produto)
);

INSERT INTO tb_produtos(nome_categoria, nome_produto, estoque, preco)
VALUES ("Roupas", "Blazer Vivi", 100, 1390.00),
("Eletrônicos", "Carregador Turbo", 50, 44.90),
("Brinquedos", "Veículo Elétrico Mercedez Bens", 43, 1650.30),
("Ferramentas", "Martelo Magnético", 30, 36.90),
("Livros", "Matéria Escura", 200, 100.00),
("Livros", "Para Toda a Eternidade", 200, 48.64),
("Ferramentas", "Alicate Universal", 15, 66.90),
("Brinquedos", "Pelúcia Peppa Pig", 60, 149.99);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 42.00 WHERE id_produto = 2;

SELECT * FROM tb_produtos;