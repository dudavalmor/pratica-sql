CREATE DATABASE bd_ecommerce;
USE bd_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
codigo INT,
produto VARCHAR(300),
preco DECIMAL(6,2),
marca VARCHAR(300),
PRIMARY KEY(id)
);

INSERT INTO tb_produtos (codigo, produto, preco, marca) 
VALUES(123, "Iphone X", 5310.99, "Apple"), 
(456, "Xiomi", 1999.99, "Xiomi"),
(789, "S4", 4599.99, "Samsung"),
(358, "Notebook", 2500.99, "Dell"),
(646, "Mouse", 299.99, "Red Dragon"),
(567, "Monitor", 899.99, "Acer"),
(788, "Mouse", 399.50, "Red Dragon"),
(666, "Iphone XI", 5500.99, "Apple");

SELECT produto, codigo FROM tb_produtos WHERE preco > 500;

SELECT produto, codigo FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 500 WHERE id = 6;

SELECT * FROM tb_produtos;

