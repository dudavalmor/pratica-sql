CREATE DATABASE bd_bancoBados;
USE bd_bancoDados;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR (300) NOT NULL,
cpf VARCHAR(14) NOT NULL,
telefone VARCHAR(14),
salario DECIMAL (6,2),
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, cpf, telefone, salario) 
VALUES ("Eduarda", "234.234.234-23", "(21)98876-8767", 5000.00),
("João Matheus", "154.548.144-98", "(21)98999-0978", 2000.00),
("Rafael", "235.099.256-22", "(21)98856-9999", 1700.00),
("Matheus", "555.666.999-24", "(11)99999-8888", 7500.00),
("Júlia", "111.222.666-98", "(21)555-7666", 1500.00);

SELECT nome, salario, cpf FROM tb_colaboradores WHERE salario > 2000;

SELECT  nome, salario, cpf FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1700.00 WHERE id = 4;

SELECT * FROM tb_colaboradores;
