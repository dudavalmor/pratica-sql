CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id INT AUTO_INCREMENT,
funcao VARCHAR(50),
manaInicial INT, 
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
vida INT, 
runa VARCHAR (255),
id_classe INT,
ataque BIGINT,
defesa BIGINT,
PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classe) REFERENCES tb_classes(id);

INSERT INTO tb_classes(funcao, manaInicial)
VALUES("MAGO", 100),
("Assassino", 150),
("Suporte", 300),
("Tanque", 50),
("Atirador", 200);

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (nome, vida, runa, id_classe, ataque, defesa)
VALUES
("Ahri", 500, "Eletrocutar", 1, 2500, 1000),          
("Zed", 600, "Eletrocutar", 2, 2500, 3000),           
("Thresh", 650, "Pós-choque", 3, 2500, 2000),         
("Malphite", 800, "Aperto dos Mortos-Vivos", 4, 1500, 2500), 
("Ashe", 450, "Cometa Arcano", 5, 1000, 500),        
("Lux", 500, "Cometa Arcano", 1, 850, 1000),         
("Darius", 700, "Conquistador", 4, 2500, 1850),       
("Jinx", 400, "Ritmo Fatal", 5, 950, 1950);        

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 && defesa <=2000;

SELECT * FROM tb_personagens WHERE nome = "%c%";

SELECT nome, vida, tb_classes.funcao, runa, ataque, defesa, tb_classes.manaInicial 
FROM tb_personagens INNER JOIN tb_classes
on tb_personagens.id_classe = tb_classes.id;

SELECT *
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id;

SELECT nome, tb_classes.funcao, vida, ataque, defesa
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 1;

SELECT nome, tb_classes.funcao, vida, ataque, defesa
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 2;

SELECT nome, tb_classes.funcao, vida, ataque, defesa
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 3;

SELECT nome, tb_classes.funcao, vida, ataque, defesa
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 4;

SELECT nome, tb_classes.funcao, vida, ataque, defesa
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 5;
