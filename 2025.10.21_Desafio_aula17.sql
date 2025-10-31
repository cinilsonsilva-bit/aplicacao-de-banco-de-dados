-- Você é o analista de dados do departamento de RH e 
-- precisa criar dois relatórios complexos. Para isso, você tem acesso a três tabelas: 
-- Funcionarios, Niveis_Salariais e Departamentos.

-- Observação: Note que o departamento de "Inovação" foi criado recentemente e 
-- ainda não possui funcionários alocados.

-- Pergunta:

-- Escreva os dois comandos SQL necessários para gerar esses relatórios.

-- Relatório 1 (Classificação Salarial - Join Não-Idêntica): 
-- Crie uma consulta que mostre o nome de cada funcionário e 
-- o seu nível salarial (Junior, Pleno ou Senior),
-- com base na faixa de salário em que ele se encontra .
-- (Dica: a condição do JOIN usará BETWEEN)

SELECT
F.NOME,
NS.NIVEL
FROM FUNCIONARIOS F
JOIN NIVEIS_SALARIAIS NS
ON F.SALARIO BETWEEN NS.SALARIO_MIN AND NS.SALARIO_MAX;

-- Relatório 2 (Mapeamento de Departamentos - Join Externa): 
-- Crie uma consulta que liste TODOS os departamentos da empresa 
-- e, ao lado, o nome dos funcionários que pertencem a cada um. 
-- Se um departamento não tiver funcionários, 
-- o nome do funcionário deve aparecer como NULL . 
-- (Dica: você precisará de um OUTER JOIN).

SELECT
D.NOME_DEPTO,
F.NOME
FROM DEPARTAMENTOS D
LEFT OUTER JOIN FUNCIONARIOS F
ON D.ID_DEPTO = F.ID_FUNC;

