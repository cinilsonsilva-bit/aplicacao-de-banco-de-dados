-- Desafio 1 e Desafio 2
-- Enunciado da Prática (Padaria)
-- Pensando em um negócio de uma padaria, 
-- você deverá aplicar os conceitos de joins não idênticas 
-- e joins externas para resolver os seguintes desafios. 
-- Considere que você terá as tabelas Produtos, 
-- Vendas e uma tabela para Faixas_Preco.

-- Desafio 1: Produtos e Vendas
-- Objetivo: Listar todos os produtos disponíveis, 
-- mostrando quantas vezes cada um foi vendido — mesmo que nunca tenha sido vendido.
-- Dica: Você precisará de uma join externa para garantir 
-- que todos os produtos sejam listados, independentemente de terem sido vendidos.

-- 1. INNER JOIN — Mostrar o nome do produto e a quantidade vendida 

SELECT 
    P.NOME_PRODUTO,
    V.QUANTIDADE
FROM PRODUTOS P
INNER JOIN VENDAS V
ON P.ID_PRODUTO = V.ID_PRODUTO;

-- 2. LEFT JOIN — Mostrar todos os produtos, mesmo os que ainda não foram vendidos

SELECT 
    P.NOME_PRODUTO,
    V.QUANTIDADE
FROM PRODUTOS P
LEFT JOIN VENDAS V
ON P.ID_PRODUTO = V.ID_PRODUTO;

--  3. RIGHT JOIN — Mostrar todas as vendas, mesmo as que não têm produto cadastrado

SELECT 
    P.NOME_PRODUTO,
    V.QUANTIDADE,
    V.DATA_VENDA
FROM PRODUTOS P
RIGHT JOIN VENDAS V
ON P.ID_PRODUTO = V.ID_PRODUTO;

-- 4. FULL JOIN (simulado no MySQL com UNION de LEFT + RIGHT)

SELECT 
    P.NOME_PRODUTO,
    V.QUANTIDADE,
    V.DATA_VENDA
FROM PRODUTOS P
LEFT JOIN VENDAS V
ON P.ID_PRODUTO = V.ID_PRODUTO

UNION

SELECT 
    P.NOME_PRODUTO,
    V.QUANTIDADE,
    V.DATA_VENDA
FROM PRODUTOS P
RIGHT JOIN VENDAS V
ON P.ID_PRODUTO = V.ID_PRODUTO;

--  5. JOIN NÃO IDÊNTICO — Associar produtos às suas faixas de preço

SELECT 
    P.NOME_PRODUTO,
    P.PRECO,
    F.DESCRICAO AS FAIXA_PRECO
FROM PRODUTOS P
JOIN FAIXAS_PRECO F
ON P.PRECO BETWEEN F.PRECO_MIN AND F.PRECO_MAX;

SELECT 
    P.PRODUCT_NAME,
    P.PRICE,
    F.DESCRIPTION AS PRICE_RANGE
FROM PRODUCTS P
JOIN PRICE_RANGES F
ON P.PRICE BETWEEN F.MIN_PRICE AND F.MAX_PRICE;


-- 6. LEFT JOIN + Faixa de preço — Mostrar todos os produtos 
-- com sua faixa (mesmo se algum preço estiver fora das faixas)

SELECT 
    P.NOME_PRODUTO,
    P.PRECO,
    F.DESCRICAO AS FAIXA_PRECO
FROM PRODUTOS P
LEFT JOIN FAIXAS_PRECO F
ON P.PRECO BETWEEN F.PRECO_MIN AND F.PRECO_MAX;

SELECT 
    P.PRODUCT_NAME,
    P.PRICE,
    F.DESCRIPTION AS PRICE_RANGE
FROM PRODUCTS P
LEFT JOIN PRICE_RANGES F
ON P.PRICE BETWEEN F.MIN_PRICE AND F.MAX_PRICE;



