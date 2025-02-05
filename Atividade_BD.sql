-- Exercício 1:

-- banco de dados ‘sprint1’
CREATE DATABASE sprint1; 

-- Selecionando o banco de dados 'sprint1'
USE sprint1;

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

-- Exercício 2:

-- Selecionando o banco de dados 'sprint1'
USE sprint1;

-- Criar a tabela chamada Musica 
CREATE TABLE Musica  (  
idMusica INT PRIMARY KEY,
titulo VARCHAR (40),
artista VARCHAR (40),
genero VARCHAR (40)
);

-- Inserir pelo menos umas 7 músicas
INSERT INTO Musica VALUES
(1, 'Bohemian Rhapsody', 'Queen', 'Rock'),
(2, 'Billie Jean', 'Michael Jackson', 'Pop'),
(3, 'Hotel California', 'Eagles', 'Rock'),
(4, 'Smells Like Teen Spirit', 'Nirvana', 'Grunge'),
(5, 'Shape of You', 'Ed Sheeran', 'Pop'),
(6, 'Lose Yourself', 'Eminem', 'Hip-Hop'),
(7, 'Back in Black', 'AC/DC', 'Rock');

-- a) Exibir todos os dados da tabela.
SELECT * FROM Musica;

-- b) Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM Musica;

-- c) Exibir apenas os dados das músicas de um determinado gênero.
SELECT * FROM Musica WHERE genero = 'Rock';

-- d) Exibir apenas os dados das músicas de um determinado artista.
SELECT * FROM Musica WHERE artista = 'Eminem';

-- e) Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM Musica ORDER BY titulo ASC;

-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM Musica ORDER BY artista DESC;

-- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM Musica WHERE nome LIKE 'B%';

-- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM Musica WHERE nome LIKE '%a';

-- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM Musicas WHERE titulo LIKE '%e_';

-- k) Elimine a tabela.
DROP TABLE Musica;

-- Exercício 3:

-- Selecionando o banco de dados 'sprint1'
USE sprint1;

-- Criar a tabela Filme: 
CREATE TABLE Filme (
    idFilme INT PRIMARY KEY,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

-- Inserir dados na tabela com pelo menos 7 filmes:
INSERT INTO Filme (idFilme, titulo, genero, diretor) VALUES
(1, 'Inception', 'Ficção Científica', 'Christopher Nolan'),
(2, 'Interstellar', 'Ficção Científica', 'Christopher Nolan'),
(3, 'O Cavaleiro das Trevas', 'Ação', 'Christopher Nolan'),
(4, 'Pulp Fiction', 'Crime', 'Quentin Tarantino'),
(5, 'Kill Bill', 'Ação', 'Quentin Tarantino'),
(6, 'Titanic', 'Romance', 'James Cameron'),
(7, 'Avatar', 'Ficção Científica', 'James Cameron');

-- Exibir todos os dados da tabela Filme
SELECT * FROM Filme;

-- Exibir apenas os títulos e os diretores dos filmes
SELECT titulo, diretor FROM Filme;

-- Exibir apenas os dados dos filmes de um determinado gênero ('Ficção Científica')
SELECT * FROM Filme WHERE genero = 'Ficção Científica';

-- Exibir apenas os dados dos filmes de um determinado diretor ('Christopher Nolan')
SELECT * FROM Filme WHERE diretor = 'Christopher Nolan';

-- Exibir os dados da tabela ordenados pelo título do filme em ordem alfabética
SELECT * FROM Filme ORDER BY titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente 
SELECT * FROM Filme ORDER BY diretor DESC;

-- Exibir os dados da tabela dos filmes cujo título começa com uma determinada letra ('I')
SELECT * FROM Filme WHERE titulo LIKE 'I%';

-- Exibir os dados da tabela dos filmes cujo diretor termina com uma determinada letra ('n')
SELECT * FROM Filme WHERE diretor LIKE '%n';

-- Exibir os dados da tabela dos filmes cujo gênero tenha como segunda letra uma determinada letra ('i')
SELECT * FROM Filme WHERE genero LIKE '_i%';

-- Exibir os dados da tabela dos filmes cujo título tenha como penúltima letra uma determinada letra ('r')
SELECT * FROM Filme WHERE titulo LIKE '%r_';

-- Eliminar a tabela Filme
DROP TABLE Filme;

-- Exercício 4:

-- Selecionando o banco de dados 'sprint1'
USE sprint1;

-- Criar a tabela Professor com as colunas idProfessor, nome, especialidade e dtNasc
CREATE TABLE Professor (
    idProfessor INT PRIMARY KEY,  
    nome VARCHAR(50),             
    especialidade VARCHAR(40),    
    dtNasc DATE                 
);

-- Inserir dados na tabela, garantindo que uma especialidade se repita para mais de um professor ('Matemática') e tenha pelo menos 6 professores
INSERT INTO Professor (idProfessor, nome, especialidade, dtNasc) VALUES
(1, 'Alessandro Semente', 'Administração', '2000-03-20'),
(2, 'Vera Goulart', 'Recursos Humanos', '1975-07-14'),
(3, 'Joao Paulo JP', 'Ciência da Computação', '1989-12-15'),
(4, 'Cláudio Frizza', 'Sistemas de Informação', '1911-09-03'),
(5, 'Vivian', 'Banco de Dados', '1994-02-01'),
(6, 'Celso Eduardo Goes', 'Administração', '1985-03-22');

-- Exibir todos os dados da tabela Professor
SELECT * FROM Professor;

-- Exibir apenas as especialidades dos professores (sem repetições)
SELECT DISTINCT especialidade FROM Professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade ('Administração')
SELECT * FROM Professor WHERE especialidade = 'Administração';

-- Exibir os dados da tabela ordenados pelo nome do professor em ordem alfabética
SELECT * FROM Professor ORDER BY nome;

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente 
SELECT * FROM Professor ORDER BY dtNasc DESC;

-- Exibir os dados da tabela dos professores cujo nome começa com uma determinada letra ('C')
SELECT * FROM Professor WHERE nome LIKE 'C%';

-- Exibir os dados da tabela dos professores cujo nome termina com uma determinada letra ('a')
SELECT * FROM Professor WHERE nome LIKE '%a';

-- Exibir os dados da tabela dos professores cujo nome tenha como segunda letra uma determinada letra ('l')
SELECT * FROM Professor WHERE nome LIKE '_l%';

-- Exibir os dados da tabela dos professores cujo nome tenha como penúltima letra uma determinada letra ('r')
SELECT * FROM Professor WHERE nome LIKE '%r_';

-- Eliminar a tabela Professor
DROP TABLE Professor;

-- Exercício 5:

-- Selecionando o banco de dados 'sprint1'
USE sprint1;

-- Criar a tabela chamada Jogo para conter os dados: idJogo, nome (tamanho 50), comentario (tamanho 200), ranking (número inteiro), sendo que idJogo é a chave primária da tabela.
CREATE TABLE Jogo (
    idJogo INT PRIMARY KEY,      
    nome VARCHAR(50),            
    comentario VARCHAR(200),     
    ranking INT                  
);

-- Inserir pelo menos 5 jogos 
INSERT INTO Jogo (idJogo, nome, comentario, ranking) VALUES
(1, 'Minecraft', 'Um jogo de construção e exploração infinita.', 5),
(2, 'The Legend of Zelda', 'Aventura épica com história envolvente.', 4),
(3, 'Dark Souls', 'Desafiador e recompensador.', 3),
(4, 'Super Mario Bros', 'Clássico do mundo dos games.', 5),
(5, 'Cyberpunk 2077', 'RPG futurista com um mundo imersivo.', 2);

-- a) Exibir todos os dados da tabela
SELECT * FROM Jogo;

-- b) Exibir apenas os nomes dos jogos
SELECT nome FROM Jogo;

-- c) Exibir apenas o comentário de um determinado jogo ('Dark Souls')
SELECT comentario FROM Jogo WHERE nome = 'Dark Souls';

-- d) Exibir os dados da tabela ordenados pelo nome do jogo
SELECT * FROM Jogo ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo ranking em ordem decrescente
SELECT * FROM Jogo ORDER BY ranking DESC;

-- f) Exibir os dados da tabela dos jogos cujo nome começa com uma determinada letra ('S')
SELECT * FROM Jogo WHERE nome LIKE 'S%';

-- g) Exibir os dados da tabela dos jogos cujo nome termine com uma determinada letra ('a')
SELECT * FROM Jogo WHERE nome LIKE '%a';

-- h) Exibir os dados da tabela dos jogos cujo nome tenha como segunda letra uma determinada letra ('a')
SELECT * FROM Jogo WHERE nome LIKE '_a%';

-- i) Exibir os dados da tabela dos jogos cujo nome tenha como penúltima letra uma determinada letra ('o')
SELECT * FROM Jogo WHERE nome LIKE '%o_';

-- j) Exibir os dados da tabela dos jogos cujo nome seja diferente de Minecraft
SELECT * FROM Jogo WHERE nome <> 'Minecraft';

-- k) Eliminar a tabela
DROP TABLE Jogo;


