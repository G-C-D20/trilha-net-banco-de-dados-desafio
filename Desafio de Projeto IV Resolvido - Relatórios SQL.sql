-- Relatório 1: Filtro por Nome e Ano dos Filmes

SELECT 
Nome,
Ano
FROM Filmes

-- Relatório 2:  Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT * FROM Filmes
ORDER BY Ano ASC

-- Relatório 3: Buscar pelo filme de volta para o futuro, trazendo o nome,ano e duração

SELECT * FROM Filmes
WHERE Id = '28'

-- Relatório 4: Buscar filmes lançados em 1997

SELECT * FROM Filmes
WHERE Ano = '1997'

--Relatório 5: Buscar filmes lançados após o ano 2000

SELECT * FROM Filmes
WHERE Ano > '2000'

-- Relatório 6: Buscar os filmes com a duração maior que 100 e menos que 150,
--ordenado pela duração em ordem crescente

SELECT * FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- Relatório 7:  Buscar a quantidade de filmes lançadas no ano, agrupando por ano,
--ordenando pela duracao em ordem decrescente

SELECT 
Ano,
COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Relatório 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, 
-- UltimoNome

SELECT * FROM Atores
WHERE Genero = 'M'

-- Relatório 9: Buscar os Atores do gênero feminino, retornando o PrimeiroNome,
--UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Relatório 10: Buscar o nome do filme e o gênero

SELECT 
  Filmes.Nome,
  Generos.Genero
  FROM
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id  

-- Relatório 11:  Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT 
  Filmes.Nome,
  Generos.Genero
  FROM
Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id  
WHERE Genero = 'Mistério'

-- Relatório 12:  Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT 
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
  FROM
Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id  