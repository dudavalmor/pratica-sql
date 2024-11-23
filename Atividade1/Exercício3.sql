CREATE DATABASE bd_escola;
USE bd_escola;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(300),
matricula INT,
turma VARCHAR(300),
nota DECIMAL(4,2),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, matricula, turma, nota)
VALUES("Eduarda", 123, "908-A", 10), 
("João Matheus", 456, "908-A", 9.5),
("Luisa", 789, "908-A", 9.8),
("Bianca", 234, "908-A", 9.7),
("Marcella", 980, "908-A", 9.5),
("Diego", 489, "908-A", 9.0),
("Daniel", 125, "908-A", 6.7),
("Mariana", 193, "908-A", 6.2),
("Miguel", 156, "908-A", 5.8),
("Rafaela", 683, "908-A", 5.2);

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 6 WHERE id = 9;

SELECT * FROM tb_alunos