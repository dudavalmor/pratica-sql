CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(20),
preco DECIMAL(6,2),
tamanho INT, 
codigo INT,
PRIMARY KEY(id)
);

ALTER TABLE tb_pizza ADD id_sabor BIGINT;
ALTER TABLE tb_pizza ADD CONSTRAINT fk_pizza_categoria
FOREIGN KEY (id_sabor) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(categoria)
VALUES("Doces"),
("Salgadas"),
("Vegetarianas"),
("Veganas"),
("Fitness");

INSERT INTO tb_pizza(sabor, preco, tamanho, codigo, id_sabor)
VALUES("Calabresa", 39.90, 35, 875, 2),
("Chocolate", 33.50, 25, 678, 1),
("Chocolate Branco", 45.55, 35, 234, 1),
("Presunto", 45.75, 35, 876, 2), 
("4 Queijos", 35.50, 35, 764, 3),
("Parmesão", 55.50, 40, 233, 3),
("Banana", 67.60, 25, 999, 1),
("Portuguesa", 77.50, 40, 876, 2);

SELECT * FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizza WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizza INNER JOIN tb_categorias on tb_pizza.id_sabor = tb_categorias.id;

SELECT * FROM tb_pizza INNER JOIN tb_categorias on tb_pizza.id_sabor = tb_categorias.id WHERE tb_categorias.id = 1;
SELECT * FROM tb_pizza INNER JOIN tb_categorias on tb_pizza.id_sabor = tb_categorias.id WHERE tb_categorias.id = 2;
SELECT * FROM tb_pizza INNER JOIN tb_categorias on tb_pizza.id_sabor = tb_categorias.id WHERE tb_categorias.id = 3;
SELECT * FROM tb_pizza INNER JOIN tb_categorias on tb_pizza.id_sabor = tb_categorias.id WHERE tb_categorias.id = 4;