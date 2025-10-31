
USE livraria_db;

-- Observação: Note que o livro "Dom Casmurro" 
-- e "A Revolução dos Bichos" existem, 
-- mas ainda não possuem nenhum registro de venda. 
-- O autor "Machado de Assis" também não teve livros vendidos ainda.


-- Escreva as consultas SQL para gerar os seguintes relatórios:

-- Relatório 1 (Catálogo Completo): 
-- Crie uma consulta que mostre o título de cada livro 
-- e o nome do seu respectivo autor.

SELECT l.titulo, a.nome_autor FROM livros l INNER JOIN autores a ON l.id_autor = a.id_autor;

-- Relatório 2 (Itens Vendidos): 
-- Crie uma consulta que liste apenas o título dos livros que foram vendidos 
-- e a quantidade vendida em cada transação.

SELECT l.titulo, v.quantidade_vendida 
FROM vendas v 
INNER JOIN livros l ON v.id_livro = l.id_livro;

-- Relatório 3 (Detalhes da Venda): 
-- Crie uma consulta mais completa que mostre o título do livro vendido, 
-- o nome do autor e a quantidade vendida. (Dica: você precisará juntar 3 tabelas!).

SELECT l.titulo, a.nome_autor, v.quantidade_vendida FROM vendas v
INNER JOIN livros l ON v.id_livro = l.id_livro
INNER JOIN autores a ON l.id_autor = a.id_autor;

-- Relatório 4 (Status de Vendas de Todos os Livros): 
-- Crie uma lista de TODOS os livros do catálogo e a quantidade vendida. 
-- Se um livro nunca foi vendido, a quantidade deve aparecer como NULL.

SELECT l.titulo, v.quantidade_vendida FROM livros l
LEFT JOIN vendas v ON l.id_livro = v.id_livro;

-- Salve todas as suas 4 consultas SELECT 
-- em um único arquivo chamado desafio_aula15.sql.
-- Faça o commit e push do arquivo para seu repositório 
-- no GitHub com a mensagem "Desafio da Aula 15 concluído".

