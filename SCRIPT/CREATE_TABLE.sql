
CREATE TABLE GENERO ( 
  idGenero smallint primary key identity(1,1),
  nomeGenero varchar(30)
  );
  GO
  --CTRL + SHIFT + R

  CREATE TABLE FILME (
  idFilme smallint primary key identity(1,1),
  idGenero smallint foreign key references GENERO(idGenero),
  tituloFilme nvarchar(50) NOT NULL )
  GO