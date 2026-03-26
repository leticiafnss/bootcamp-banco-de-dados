CREATE DATABASE rh_empresa;
USE rh_empresa;

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    departamento VARCHAR(50),
    data_admissao DATE
);

INSERT INTO colaboradores (nome, cargo, salario, departamento, data_admissao) VALUES
('Ana Souza', 'Analista RH', 3000.00, 'RH', '2022-03-10'),
('Carlos Lima', 'Desenvolvedor', 5000.00, 'TI', '2021-07-15'),
('Mariana Silva', 'Assistente', 1800.00, 'Financeiro', '2023-01-20'),
('João Pedro', 'Gerente', 7000.00, 'RH', '2020-05-01'),
('Fernanda Alves', 'Estagiária', 1500.00, 'TI', '2024-02-01');

SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

SET SQL_SAFE_UPDATES = 0;

UPDATE colaboradores SET salario = 2000 WHERE nome = 'Mariana Silva';

SELECT * FROM colaboradores;