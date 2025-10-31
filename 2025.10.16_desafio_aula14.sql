-- Seu gerente pediu dois relatórios distintos. 
-- Para cada um, você precisa decidir qual tipo de JOIN usar.

-- Relatório 1 (Clientes Ativos): 
-- Crie uma consulta que retorne uma lista contendo apenas 
-- os clientes que já fizeram algum pedido, mostrando o nome do cliente 
-- e o nome do produto que compraram.

SELECT 
    C.NOME_CLIENTE,
    P.PRODUTO_NOME
FROM CLIENTES C
INNER JOIN PEDIDOS P
ON C.ID_CLIENTE = P.CLIENTE_ID;


-- Relatório 2 (Lista Completa de Clientes): 
-- Crie uma consulta que retorne uma lista de TODOS os clientes cadastrados,
-- mostrando o nome do cliente e o produto que compraram. 
-- Se um cliente nunca comprou nada, o nome do produto deve aparecer como NULL.

SELECT 
    C.NOME_CLIENTE,
    P.PRODUTO_NOME
FROM CLIENTES C
LEFT JOIN PEDIDOS P
ON C.ID_CLIENTE = P.CLIENTE_ID;

-- Pergunta:

-- Escreva os dois comandos SQL, um para cada relatório, 
-- usando o INNER JOIN e o LEFT JOIN na situação correta.

SELECT 
    C.NOME_CLIENTE,
    P.PRODUTO_NOME
FROM CLIENTES C
INNER JOIN PEDIDOS P
ON C.ID_CLIENTE = P.CLIENTE_ID;


SELECT 
    C.NOME_CLIENTE,
    P.PRODUTO_NOME
FROM CLIENTES C
LEFT JOIN PEDIDOS P
ON C.ID_CLIENTE = P.CLIENTE_ID;


