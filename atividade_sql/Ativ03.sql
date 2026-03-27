-- 1. Criar o banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- 2. Usar o banco
USE db_farmacia_bem_estar;

-- 3. Criar tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

-- 4. Criar tabela de produtos
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    estoque INT,
    marca VARCHAR(50),
    id_categoria INT,

    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- 5. Inserir categorias (5 registros)
INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios em geral'),
('Higiene', 'Produtos de higiene pessoal'),
('Beleza', 'Cosméticos'),
('Suplementos', 'Vitaminas e suplementos'),
('Infantil', 'Produtos para crianças');

-- 6. Inserir produtos (8 registros)
INSERT INTO tb_produtos (nome, preco, estoque, marca, id_categoria) VALUES
('Paracetamol', 15.00, 100, 'Genérico', 1),
('Dipirona', 12.00, 150, 'Genérico', 1),
('Shampoo Anticaspa', 25.00, 50, 'Clear', 2),
('Sabonete Facial', 18.00, 80, 'Nivea', 3),
('Vitamina C', 55.00, 60, 'Cimed', 4),
('Whey Protein', 120.00, 30, 'Growth', 4),
('Fralda Infantil', 65.00, 40, 'Pampers', 5),
('Creme Dental', 10.00, 200, 'Colgate', 2);

-- 7. SELECT produtos com valor maior que R$50
SELECT *
FROM tb_produtos
WHERE preco > 50.00;

-- 8. SELECT produtos com valor entre R$5 e R$60
SELECT *
FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

-- 9. SELECT produtos com letra C no nome
SELECT *
FROM tb_produtos
WHERE nome LIKE '%C%';

-- 10. INNER JOIN (produtos + categorias)
SELECT 
    p.nome AS produto,
    p.preco,
    c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;