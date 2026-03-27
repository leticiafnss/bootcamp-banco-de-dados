-- 1. Criar o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- 2. Usar o banco
USE db_pizzaria_legal;

-- 3. Criar tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

-- 4. Criar tabela de pizzas
CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(20),
    borda_recheada BOOLEAN,
    id_categoria INT,
    
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- 5. Inserir categorias (5 registros)
INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas tradicionais salgadas'),
('Doce', 'Pizzas doces'),
('Vegetariana', 'Sem carne'),
('Especial', 'Pizzas premium'),
('Fit', 'Opções mais saudáveis');

-- 6. Inserir pizzas (8 registros)
INSERT INTO tb_pizzas (nome, preco, tamanho, borda_recheada, id_categoria) VALUES
('Calabresa', 40.00, 'Grande', TRUE, 1),
('Mussarela', 38.00, 'Grande', FALSE, 1),
('Frango com Catupiry', 45.00, 'Grande', TRUE, 1),
('Chocolate', 55.00, 'Média', FALSE, 2),
('Morango com Nutella', 65.00, 'Média', TRUE, 2),
('Vegetariana Especial', 50.00, 'Grande', FALSE, 3),
('Pizza Fit de Atum', 48.00, 'Média', FALSE, 5),
('Especial da Casa', 75.00, 'Grande', TRUE, 4);

-- 7. SELECT pizzas com valor maior que R$45
SELECT * 
FROM tb_pizzas
WHERE preco > 45.00;

-- 8. SELECT pizzas com valor entre R$50 e R$100
SELECT * 
FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

-- 9. SELECT pizzas com letra M no nome
SELECT * 
FROM tb_pizzas
WHERE nome LIKE '%M%';

-- 10. INNER JOIN (todas as pizzas com suas categorias)
SELECT 
    p.nome AS pizza,
    p.preco,
    c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;

-- 11. INNER JOIN filtrando categoria específica (ex: doces)
SELECT 
    p.nome AS pizza,
    p.preco,
    c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Doce';
