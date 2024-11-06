-- 1

SELECT 
Nome,
Ano
FROM Filmes

--2

SELECT 
Nome, 
Ano,
Duracao
FROM filmes
ORDER BY ano ASC;

--3

SELECT 
Nome, 
Ano,
Duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

--4

SELECT
Nome, 
Ano,
Duracao
FROM filmes
WHERE ano = 1997;

--5

SELECT
Nome, 
Ano,
Duracao
FROM filmes
WHERE ano > 2000;


--6

SELECT
Nome, 
Ano,
Duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

--7

SELECT ano, 
COUNT(*) AS quantidade_filmes, 
SUM(duracao) AS duracao_total
FROM filmes
GROUP BY ano
ORDER BY duracao_total DESC;

--8

SELECT
Id,
PrimeiroNome, 
UltimoNome,
Genero
FROM Atores
WHERE Genero = 'M';


--9

SELECT
Id,
PrimeiroNome, 
UltimoNome,
Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--10

SELECT 
Nome,
Genero
FROM Filmes
JOIN Generos ON genero = genero;

--11

SELECT 
Nome, 
Genero
FROM filmes 
INNER JOIN Generos  ON Genero = Genero
WHERE Genero = 'Mistério';


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel


SELECT 


f.Nome AS Filme,
a.PrimeiroNome,
a.UltimoNome,
ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
