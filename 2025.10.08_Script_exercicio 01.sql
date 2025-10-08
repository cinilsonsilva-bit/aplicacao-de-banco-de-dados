USE ABD_03361_A_Nilson;

-- 1 CRIAR UMA TABELA COM O NOME ERRADO PARA SIMULAR UM ERRO
-- Objetivo: praticar DROP criando algo errado de propósito
-- Dica: use um nome errado (ex: COMIDAS_FAV) e veja como corrigir depois

-- criei de propósito com nome errado
CREATE TABLE COMIDAS_FAV (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME_PESSOA VARCHAR(100),
    COMIDA VARCHAR(100),
    TIPO VARCHAR(50),
    NOTA DECIMAL(3,1),
    CIDADE VARCHAR(50)
);

-- 2 APAGAR A TABELA COM NOME ERRADO USANDO DROP

DROP TABLE IF EXISTS COMIDAS_FAV;

-- 3 CRIAR NOVAMENTE A TABELA COM O NOME CORRETO
-- Objetivo: recriar a tabela com o nome certo e colunas básicas
-- Dica: defina tipos e tamanhos de dados corretos desde o início

CREATE TABLE COMIDAS_FAV_ERRADA (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME_PESSOA VARCHAR(100),
    COMIDA VARCHAR(100),
    TIPO VARCHAR(50),
    NOTA DECIMAL(3,1),
    CIDADE VARCHAR(50)
);

-- 4 ADICIONAR UMA NOVA COLUNA QUE ESQUECEMOS USANDO ALTER TABLE

ALTER TABLE COMIDAS_FAV_ERRADA
ADD COLUMN DATA_REGISTRO DATE;

DESCRIBE COMIDAS_FAV_ERRADA;

-- 5 INSERIR DOIS REGISTROS NA TABELA
-- Objetivo: praticar INSERT com múltiplas linhas
-- Dica: use INSERT INTO ... VALUES (...), (...);

INSERT INTO COMIDAS_FAV_ERRADA (NOME_PESSOA, COMIDA, TIPO, NOTA, CIDADE)
VALUES 
('Fernanda Oliveira', 'Pizza Portuguesa', 'Salgado', 9, 'São Paulo'),
('Carlos Mendes', 'Pudim', 'Doce', 8, 'Rio de Janeiro');

-- 6 VERIFICAR SE OS DADOS FORAM INSERIDOS
-- Objetivo: confirmar com SELECT se os dados estão corretos
-- Dica: use SELECT * FROM nome_tabela;

SELECT * FROM COMIDAS_FAV_ERRADA;

-- 7 LIMPAR TODA A TABELA USANDO TRUNCATE
-- Objetivo: apagar todos os registros rapidamente
-- Dica: TRUNCATE é mais rápido que DELETE e reinicia o AUTO_INCREMENT

TRUNCATE TABLE COMIDAS_FAV_ERRADA;

-- 8 CONFERIR QUE A TABELA ESTÁ VAZIA MAS A ESTRUTURA PERMANECE
-- Objetivo: testar SELECT e confirmar que a estrutura ainda existe
-- Dica: use SELECT COUNT(*) e SHOW CREATE TABLE

SELECT * FROM COMIDAS_FAV_ERRADA;

-- 9 LIMPAR TODA A TABELA USANDO DELETE
-- Objetivo: apagar todos os registros rapidamente
-- Dica: TRUNCATE é mais rápido que DELETE e reinicia o AUTO_INCREMENT

SET SQL_SAFE_UPDATES = 0;

DELETE FROM COMIDAS_FAV_ERRADA;

SET SQL_SAFE_UPDATES = 1;

-- 10 DELETAR UMA COLUNA NOTA

ALTER TABLE COMIDAS_FAV_ERRADA
DROP COLUMN NOTA;

DESCRIBE COMIDAS_FAV_ERRADA;




























