CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT,
    marca VARCHAR(50)
);

INSERT INTO produtos (nome, categoria, preco, estoque, marca) VALUES
('Notebook', 'Eletrônicos', 3500.00, 10, 'Dell'),
('Celular', 'Eletrônicos', 1200.00, 25, 'Samsung'),
('Fone', 'Acessórios', 150.00, 50, 'JBL'),
('TV', 'Eletrônicos', 2800.00, 8, 'LG'),
('Mouse', 'Acessórios', 80.00, 100, 'Logitech'),
('Teclado', 'Acessórios', 200.00, 60, 'Redragon'),
('Monitor', 'Eletrônicos', 900.00, 15, 'AOC'),
('Cadeira Gamer', 'Móveis', 600.00, 5, 'DXRacer');

-- Maior que 500
SELECT * FROM produtos WHERE preco > 500;

-- Menor que 500
SELECT * FROM produtos WHERE preco < 500;

SET SQL_SAFE_UPDATES = 0;

UPDATE produtos SET preco = 1300 WHERE nome = 'Celular';

SELECT * FROM produtos;