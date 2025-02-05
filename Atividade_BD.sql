-- Exercício 1:

-- banco de dados ‘sprint1’
CREATE DATABASE sprint1; 
USE ATLETA;

-- Criar a tabela chamada Atleta
CREATE TABLE ATLETA (  
idAtleta INT PRIMARY KEY,
nome VARCHAR (40),
modalidade VARCHAR (40),
qtdMedalha INT
);

-- Inserir dados na tabela
INSERT INTO ATLETA VALUES
('01','Edson Arantes','Futebol','461'),
('02','Airton Senna','F1','41'),
('03','Rebeca Andrade','Olímpica','6'),
('04','Gustavo França Borges','Natação','8');

-- Exibir todos os dados da tabela
SELECT * FROM ATLETA;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas
SELECT nome, qtdMedalha FROM ATLETA;

-- Exibir apenas os dados dos atletas de uma determinada modalidade (F1 Senna)
SELECT * FROM ATLETA WHERE modalidade = 'F1';

-- Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM ATLETA ORDER BY NOME ASC;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM ATLETA ORDER BY qtdMedalha DESC;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM ATLETA WHERE nome LIKE '%A%';

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM ATLETA WHERE nome LIKE 'E%';

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
SELECT * FROM ATLETA WHERE nome LIKE '%O';

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
SELECT * FROM ATLETA WHERE nome LIKE '_R%';

-- excluir tabela
DROP TABLE ATLETA;