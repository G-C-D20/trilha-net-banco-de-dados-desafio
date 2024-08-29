-- Relat�rio 1: Filtro por Nome e Ano dos Filmes

SELECT 
Nome,
Ano
FROM Filmes

-- Relat�rio 2:  Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT * FROM Filmes
ORDER BY Ano ASC

-- Relat�rio 3: Buscar pelo filme de volta para o futuro, trazendo o nome,ano e dura��o

SELECT * FROM Filmes
WHERE Id = '28'

-- Relat�rio 4: Buscar filmes lan�ados em 1997

SELECT * FROM Filmes
WHERE Ano = '1997'

--Relat�rio 5: Buscar filmes lan�ados ap�s o ano 2000

SELECT * FROM Filmes
WHERE Ano > '2000'

-- Relat�rio 6: Buscar os filmes com a dura��o maior que 100 e menos que 150,
--ordenado pela dura��o em ordem crescente

SELECT * FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- Relat�rio 7:  Buscar a quantidade de filmes lan�adas no ano, agrupando por ano,
--ordenando pela duracao em ordem decrescente

SELECT 
Ano,
COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Relat�rio 8: Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, 
-- UltimoNome

SELECT * FROM Atores
WHERE Genero = 'M'

-- Relat�rio 9: Buscar os Atores do g�nero feminino, retornando o PrimeiroNome,
--UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Relat�rio 10: Buscar o nome do filme e o g�nero

SELECT 
  Filmes.Nome,
  Generos.Genero
  FROM
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id  

-- Relat�rio 11:  Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT 
  Filmes.Nome,
  Generos.Genero
  FROM
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id  
WHERE Genero = 'Mist�rio'

-- Relat�rio 12:  Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
  FROM
Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id  