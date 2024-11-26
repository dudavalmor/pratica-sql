CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR (20),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20),
preco DECIMAL(5,2),
id_categoria BIGINT,
estoque INT,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(categoria)
VALUES("Remédios"),
("Higiene"),
("Cuidados Básicos"),
("Infantil"),
("Perfumaria");

INSERT INTO tb_produtos(nome, preco, id_categoria, estoque)
VALUES("Dipirona", 15.90, 1, 200), 
("Sabonete", 10.90, 2, 150),
("Desodorante", 15.90, 5, 45),
("Shampoo", 25.90, 2, 50),
("Condicionador", 30.90, 2, 50),
("Paracetamol", 30.90, 1, 80),
("Pomada Hidratante", 40.99, 4, 67),
("Anti-gases", 20.99, 1, 100);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%"

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.id = 1;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.id = 2;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.id = 5;
