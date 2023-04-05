/*DESAFIO 34*/

CREATE TABLE Canal(
CanalID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
ContagemInscritos INT DEFAULT 0,
DataCriacao DATETIME NOT NULL
);

CREATE TABLE Video(
VideoID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
Vizualizacoes INT DEFAULT 0,
Likes INT DEFAULT 0,
Dislikes INT DEFAULT 0,
Duracao INT NOT NULL,
CanalID INT FOREIGN KEY REFERENCES Canal(CanalID)
);

SELECT *
FROM Canal

SELECT *
FROM Video

/*DESAFIO 35*/

CREATE TABLE Aulas(
Id INT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL
);

INSERT INTO Aulas(Id, Nome)
VALUES(1, 'AULA 1'),
(2, 'AULA 2'),
(3, 'AULA 3');

SELECT * FROM Aulas;

CREATE TABLE NovasAulas(
Id INT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
);

INSERT INTO NovasAulas(Id, Nome)
VALUES(4, 'AULA 4');

INSERT INTO NovasAulas(Id, Nome)
SELECT Id, Nome
FROM Aulas;

SELECT * FROM NovasAulas

/*DESAFIO 36*/
UPDATE NovasAulas 
SET Nome = 'FORA'
WHERE Id=3 OR ID=4
/*DESAFIO 37*/

DELETE FROM NovasAulas
WHERE Nome = 'FORA'

SELECT * FROM NovasAulas

/*DESAFIO 38*/

ALTER TABLE Canal
ADD Ativo BIT

SELECT* FROM Canal

/*DESAFIO 39*/
ALTER TABLE Canal
ALTER COLUMN Nome VARCHAR(100) NOT NULL

/*DESAFIO 40*/
EXEC sp_rename 'Canal.nome', 'nomeCanal', 'COLUMN'
EXEC sp_rename 'Canal', 'Conta'

/*DESAFIO 41*/
DROP TABLE NovasAulas

/*DESAFTIO 42*/

TRUNCATE TABLE Aulas
SELECT * FROM Aulas

/*DESAFIO 43*/
CREATE TABLE CarteiraMotorista(
Id INT NOT NULL,
Nome VARCHAR(150) NOT NULL,
Idade INT CHECK(Idade >= 18) NOT NULL,
CodigoCNH INT NOT NULL
);

INSERT INTO CarteiraMotorista(Id, Nome, Idade)
VALUES(1, ' TESTE', 17)

INSERT INTO CarteiraMotorista(Id, Nome, Idade)
VALUES(1, ' TESTE', 19)

SELECT * FROM CarteiraMotorista

/*DESAFIO 44*/
ALTER TABLE CarteiraMotorista
ADD CodigoCNH INT NOT NULL UNIQUE


INSERT INTO CarteiraMotorista(Id, Nome, Idade, CodigoCNH)
VALUES(1, ' TESTE', 19, 85),
(2, ' TESTE', 19, 876),
(4, ' TESTE', 19, 67)

TRUNCATE TABLE CarteiraMotorista

/*DESAFIO 45*/
CREATE VIEW Carteira 
AS SELECT Nome, CodigoCNH
FROM DBO.CarteiraMotorista

SELECT  * FROM Carteira


