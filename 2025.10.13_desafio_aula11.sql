
USE locadora_db;

SHOW TABLES;
SELECT * FROM filmes;

-- Clássicos do Século XX: Quais filmes do catálogo foram lançados antes do ano 2000?

SELECT titulo, ano_lancamento
FROM filmes
WHERE ano_lancamento < 2000;

-- Aclamados pela Crítica: Quais filmes têm uma nota de avaliação maior ou igual a 8.8?

SELECT titulo, avaliacao
FROM filmes
WHERE avaliacao >= 8.8;

-- Ficção Científica Moderna: Quais filmes são do gênero 'Ficção Científica' 
-- E foram lançados a partir de 2010?

SELECT titulo, ano_lancamento, avaliacao
FROM filmes
WHERE genero = 'Ficção Científica' AND ano_lancamento >= 2010;

-- Sessão da Tarde: Quais filmes são do gênero 'Drama' OU do gênero 'Animação'?

SELECT titulo, genero
FROM filmes
WHERE genero = 'Drama' OR genero = 'Animação';

-- Excluindo um Título: Liste todos os filmes, exceto o filme com o título 'Matrix'.

SELECT id, titulo, genero, ano_lancamento, avaliacao
FROM filmes
WHERE titulo != 'Matrix';



