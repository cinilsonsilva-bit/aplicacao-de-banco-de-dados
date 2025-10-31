-- Tabela de estudantes e tabela de series
-- popule a tabela com 100 dados
 -- retorne o join entre a tabela de alunos 
 -- e series dos campos (nome da serie, idade, nome do estudante, 
 -- somente dos estudantes maiores de 12 anos
 
USE _ABD_03361_A_NILSON_BIBLIOTECA;

SHOW TABLES;

SELECT * FROM ALUNOS;

SELECT * FROM SERIES;

INSERT INTO ALUNOS (NOME, ID_SERIE, NASCIMENTO) VALUES
('Ana Silva', 1, '2011-03-15'),
('Bruno Oliveira', 2, '2010-07-22'),
('Carla Santos', 1, '2011-11-08'),
('Daniel Costa', 3, '2009-05-30'),
('Eduarda Lima', 2, '2010-09-14'),
('Felipe Souza', 1, '2011-01-25'),
('Gabriela Rocha', 4, '2008-12-03'),
('Henrique Alves', 3, '2009-08-19'),
('Isabela Martins', 2, '2010-04-11'),
('João Pereira', 1, '2011-06-28'),
('Larissa Ferreira', 5, '2007-10-07'),
('Marcos Ribeiro', 4, '2008-02-14'),
('Natália Cardoso', 3, '2009-11-21'),
('Otávio Dias', 2, '2010-03-05'),
('Patrícia Monteiro', 1, '2011-08-17'),
('Rafael Nunes', 6, '2006-09-12'),
('Sofia Castro', 5, '2007-04-25'),
('Thiago Barbosa', 4, '2008-07-08'),
('Vanessa Lopes', 3, '2009-12-30'),
('William Santos', 2, '2010-06-13'),
('Amanda Costa', 1, '2011-02-09'),
('Breno Silva', 7, '2005-11-18'),
('Camila Oliveira', 6, '2006-03-27'),
('Diego Lima', 5, '2007-08-04'),
('Elaine Souza', 4, '2008-01-16'),
('Fabrício Rocha', 3, '2009-10-23'),
('Giovana Alves', 2, '2010-05-07'),
('Hugo Martins', 1, '2011-09-29'),
('Igor Pereira', 1, '2011-07-14'),
('Juliana Ferreira', 7, '2005-12-01'),
('Kaique Ribeiro', 6, '2006-06-19'),
('Lorena Cardoso', 5, '2007-02-11'),
('Matheus Dias', 4, '2008-11-26'),
('Nathalia Monteiro', 3, '2009-04-08'),
('Osvaldo Nunes', 2, '2010-10-15'),
('Pamela Castro', 1, '2011-07-02'),
('Quésia Barbosa', 1, '2011-05-21'),
('Ricardo Lopes', 7, '2005-09-03'),
('Sabrina Santos', 7, '2005-01-28'),
('Tiago Costa', 6, '2006-12-05'),
('Ursula Silva', 5, '2007-03-16'),
('Vitor Oliveira', 4, '2008-08-09'),
('Wanessa Lima', 3, '2009-02-22'),
('Xavier Souza', 2, '2010-11-11'),
('Yasmin Rocha', 1, '2011-04-04'),
('Zélia Alves', 7, '2005-10-31'),
('Arthur Martins', 1, '2011-06-12'),
('Bianca Pereira', 7, '2005-01-07'),
('Cauê Ferreira', 7, '2005-04-20'),
('Débora Ribeiro', 6, '2006-07-13'),
('Emanuel Cardoso', 5, '2007-12-24'),
('Fernanda Dias', 4, '2008-05-17'),
('Gustavo Monteiro', 3, '2009-09-01'),
('Helena Nunes', 2, '2010-02-14'),
('Ivan Castro', 1, '2011-10-10'),
('Júlia Barbosa', 7, '2005-03-25'),
('Kevin Lopes', 1, '2011-08-06'),
('Lívia Santos', 7, '2005-12-19'),
('Miguel Costa', 7, '2005-06-02'),
('Nina Silva', 6, '2006-01-15'),
('Oscar Oliveira', 5, '2007-09-28'),
('Paula Lima', 4, '2008-04-11'),
('Quevin Souza', 3, '2009-07-24'),
('Rita Rocha', 2, '2010-12-07'),
('Samuel Alves', 1, '2011-05-20'),
('Tatiane Martins', 7, '2005-02-03'),
('Ubirajara Pereira', 1, '2011-11-16'),
('Valentina Ferreira', 7, '2005-04-29'),
('Wagner Ribeiro', 7, '2005-10-12'),
('Xênia Cardoso', 6, '2006-05-25'),
('Yuri Dias', 5, '2007-08-18'),
('Zacarias Monteiro', 4, '2008-03-01'),
('Alice Nunes', 3, '2009-06-14'),
('Bernardo Castro', 2, '2010-01-27'),
('Clara Barbosa', 1, '2011-12-09'),
('Davi Lopes', 7, '2005-07-22'),
('Estela Santos', 1, '2011-04-05'),
('Fábio Costa', 7, '2005-08-18'),
('Geovana Silva', 7, '2005-02-28'),
('Heitor Oliveira', 6, '2006-11-10'),
('Íris Lima', 5, '2007-06-23'),
('Joaquim Souza', 4, '2008-09-06'),
('Kelly Rocha', 3, '2009-01-19'),
('Leonardo Alves', 2, '2010-08-02'),
('Marina Martins', 1, '2011-03-15'),
('Noah Pereira', 7, '2005-12-28'),
('Olívia Ferreira', 1, '2011-05-11'),
('Pedro Ribeiro', 7, '2005-10-24'),
('Raquel Mendes', 1, '2011-09-03'),
('Sérgio Torres', 2, '2010-12-18'),
('Tânia Moreira', 3, '2009-08-25'),
('Ulisses Ramos', 4, '2008-06-14'),
('Viviane Pires', 5, '2007-04-07'),
('Wilson Duarte', 6, '2006-02-28'),
('Xisto Almeida', 7, '2005-11-09'),
('Yara Cunha', 1, '2011-07-16'),
('Zacarias Fonseca', 2, '2010-05-29');


SELECT 
    s.NOME_SERIE AS 'Série',
    a.NOME AS 'Nome do Estudante',
    TIMESTAMPDIFF(YEAR, a.NASCIMENTO, CURDATE()) AS 'Idade'
FROM ALUNOS a
INNER JOIN SERIES s ON a.ID_SERIE = s.ID
WHERE TIMESTAMPDIFF(YEAR, a.NASCIMENTO, CURDATE()) > 12
ORDER BY s.NOME_SERIE, a.NOME;


