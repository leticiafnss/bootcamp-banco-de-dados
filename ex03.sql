CREATE DATABASE escola;
USE escola;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(20),
    nota DECIMAL(3,1),
    data_matricula DATE
);

INSERT INTO estudantes (nome, idade, turma, nota, data_matricula) VALUES
('Lucas', 15, '1A', 8.5, '2023-02-01'),
('Julia', 16, '1A', 6.0, '2023-02-01'),
('Pedro', 15, '1B', 7.5, '2023-02-01'),
('Ana', 14, '1B', 5.5, '2023-02-01'),
('Marcos', 16, '1C', 9.0, '2023-02-01'),
('Beatriz', 15, '1C', 4.5, '2023-02-01'),
('Rafael', 14, '1A', 7.2, '2023-02-01'),
('Carla', 15, '1B', 6.8, '2023-02-01');

-- Maior que 7
SELECT * FROM estudantes WHERE nota > 7.0;

-- Menor que 7
SELECT * FROM estudantes WHERE nota < 7.0;

SET SQL_SAFE_UPDATES = 0;

UPDATE estudantes SET nota = 7.0 WHERE nome = 'Julia';

SELECT * FROM estudantes;