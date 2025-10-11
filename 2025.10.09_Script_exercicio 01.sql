USE ABD_03361_A_Nilson;

CREATE TABLE CLIENTE (
    ID_CLIENTE INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(50) NOT NULL,
    SOBRENOME VARCHAR(50) NOT NULL,
    TELEFONE VARCHAR(20),
    EMAIL VARCHAR(100)
);


CREATE TABLE AUTOMOVEL (
    ID_AUTOMOVEL INT AUTO_INCREMENT PRIMARY KEY,
    MARCA VARCHAR(50) NOT NULL,
    MODELO VARCHAR(50) NOT NULL,
    TIPO VARCHAR(50)
);

SHOW TABLES;

CREATE TABLE DATALOCACAO (
    ID_DATALOCACAO INT AUTO_INCREMENT PRIMARY KEY,
    ID_CLIENTE INT NOT NULL,
    ID_AUTOMOVEL INT NOT NULL,
    DATA_INICIO_LOCACAO DATE NOT NULL,
    DATA_FINAL_LOCACAO DATE NOT NULL,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
    FOREIGN KEY (ID_AUTOMOVEL) REFERENCES AUTOMOVEL(ID_AUTOMOVEL)
);

INSERT INTO CLIENTE (NOME, SOBRENOME, TELEFONE, EMAIL) VALUES
('João', 'Silva', '(11) 98888-1234', 'joao.silva@email.com'),
('Maria', 'Oliveira', '(21) 97777-5678', 'maria.oliveira@email.com'),
('Carlos', 'Santos', '(31) 96666-4321', 'carlos.santos@email.com'),
('Ana', 'Souza', '(41) 95555-7890', 'ana.souza@email.com'),
('Fernanda', 'Costa', '(51) 94444-3456', 'fernanda.costa@email.com'),
('Bruno', 'Almeida', '(61) 93333-6543', 'bruno.almeida@email.com'),
('Patrícia', 'Ferreira', '(71) 92222-9876', 'patricia.ferreira@email.com'),
('Ricardo', 'Moraes', '(81) 91111-1234', 'ricardo.moraes@email.com'),
('Juliana', 'Pereira', '(91) 90000-5678', 'juliana.pereira@email.com'),
('Felipe', 'Rodrigues', '(85) 98888-4321', 'felipe.rodrigues@email.com');

SELECT * FROM CLIENTE;

INSERT INTO AUTOMOVEL (MARCA, MODELO, TIPO) VALUES
('Chevrolet', 'Onix 1.0 LT', 'Hatch'),
('Volkswagen', 'Gol 1.6', 'Hatch'),
('Fiat', 'Strada 1.4', 'Picape'),
('Hyundai', 'HB20 1.0 Comfort', 'Hatch'),
('Toyota', 'Corolla 2.0 XEi', 'Sedan'),
('Honda', 'Civic 2.0 Sport', 'Sedan'),
('Renault', 'Duster 1.6', 'SUV'),
('Jeep', 'Compass Longitude 2.0', 'SUV'),
('Nissan', 'Kicks 1.6 SV', 'SUV'),
('Ford', 'Ka Sedan 1.5', 'Sedan');

SELECT * FROM AUTOMOVEL;

INSERT INTO DATALOCACAO (ID_CLIENTE, ID_AUTOMOVEL, DATA_INICIO_LOCACAO, DATA_FINAL_LOCACAO)
VALUES
(1, 3, '2025-01-05', '2025-01-10'),
(2, 7, '2025-02-01', '2025-02-05'),
(3, 5, '2025-02-15', '2025-02-18'),
(4, 1, '2025-03-03', '2025-03-07'),
(5, 8, '2025-03-10', '2025-03-15'),
(6, 9, '2025-04-01', '2025-04-04'),
(7, 2, '2025-04-10', '2025-04-13'),
(8, 10, '2025-05-05', '2025-05-09'),
(9, 4, '2025-05-20', '2025-05-25'),
(10, 6, '2025-06-01', '2025-06-06');

SELECT * FROM DATALOCACAO;








