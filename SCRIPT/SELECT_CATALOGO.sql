USE CATALOGO

--SELECT * FROM FILME
--SELECT * FROM GENERO

--Alterar a coluna de idGenero
--na tabela filme para aceitar null.

drop table Filme

CREATE TABLE FILME (
idFilme smallint primary key identity(1,1),
idGenero smallint, --atualizacao
tituloFilme nvarchar(50) NOT NULL )
GO

truncate table  genero
truncate table  Filme

insert into GENERO(nomeGenero)
values ('Ação'),('Romance'),('Terror')


insert into Filme (idGenero,tituloFilme)
values (1,'Tango e Cash'),
       (1,'John Wick'),
	   (2,'Ghost'),
	   (2,'Diário de uma paixão'),
	   (null,'Galinha Pintadinha'),
	   (null,'Mário')

select * from Filme 
select * from GENERO

---LISTAR  TODOS OS FILMES, MOSTRANDO O NOME
-- DO GENERO DE CADA UM MESMO QUE UM FILME
-- NAO POSSUA UM GENERO ATRELADO

SELECT idFilme,
       FILME.idGenero,
	   tituloFilme,
	   nomeGenero
FROM FILME
LEFT JOIN GENERO ON (FILME.idGenero = GENERO.idGenero)

--LISTAR SOMENTE OS FILMES QUE POSSUEM GENERO, TRAZENDO
--TAMBEM OS GENEROS QUE NAO REPRESENTEM UM FILME.

SELECT *
FROM FILME
RIGHT JOIN GENERO ON (FILME.idGenero = GENERO.idGenero)

--LISTAR SOMENTE OS FILMES QUE POSSUAM UM GENERO
--DEFINIDO, GENEROS QUE NAO CORRESPONDAM A ALGUM FILME,
--NAO DEVEM SER MOSTRADOS.

SELECT *
FROM FILME
INNER JOIN GENERO ON (FILME.idGenero = GENERO.idGenero)

--LISTAR TODOS OS FILMES E TODOS GENEROS 
--MESMO QUE NAO HAJA CORRESPONDENCIA ENTRE ELES.

SELECT *
FROM FILME
FULL OUTER JOIN GENERO ON (FILME.idGenero = GENERO.idGenero)

