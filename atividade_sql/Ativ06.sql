-- 1. Criar o banco de dados
CREATE DATABASE db_curso_da_minha_vida;

-- 2. Usar o banco
USE db_curso_da_minha_vida;

-- 3. Criar tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

-- 4. Criar tabela de cursos
CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    carga_horaria INT,
    nivel VARCHAR(30),
    id_categoria INT,

    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- 5. Inserir categorias (5 registros)
INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos de desenvolvimento'),
('Design', 'Cursos de design gráfico'),
('Marketing', 'Cursos de marketing digital'),
('Negócios', 'Cursos de gestão e negócios'),
('Idiomas', 'Cursos de línguas');

-- 6. Inserir cursos (8 registros)
INSERT INTO tb_cursos (nome, preco, carga_horaria, nivel, id_categoria) VALUES
('Java Completo', 800.00, 60, 'Intermediário', 1),
('Python do Zero', 500.00, 40, 'Iniciante', 1),
('JavaScript Avançado', 950.00, 70, 'Avançado', 1),
('Photoshop Profissional', 600.00, 50, 'Intermediário', 2),
('Marketing Digital Completo', 700.00, 45, 'Intermediário', 3),
('Gestão de Empresas', 650.00, 60, 'Avançado', 4),
('Inglês Básico', 400.00, 80, 'Iniciante', 5),
('Espanhol Intermediário', 550.00, 70, 'Intermediário', 5);

-- 7. SELECT cursos com valor maior que R$500
SELECT *
FROM tb_cursos
WHERE preco > 500.00;

-- 8. SELECT cursos com valor entre R$600 e R$1000
SELECT *
FROM tb_cursos
WHERE preco BETWEEN 600.00 AND 1000.00;

-- 9. SELECT cursos com letra J no nome
SELECT *
FROM tb_cursos
WHERE nome LIKE '%J%';

-- 10. INNER JOIN (cursos + categorias)
SELECT 
    c.nome AS curso,
    c.preco,
    cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat
ON c.id_categoria = cat.id_categoria;

-- 11. INNER JOIN filtrando categoria específica (ex: Programação)
SELECT 
    c.nome AS curso,
    c.preco,
    cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat
ON c.id_categoria = cat.id_categoria
WHERE cat.nome = 'Programação';