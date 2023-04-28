USE EMPRESA

CREATE TABLE PESSOA (
idPessoa smallint  primary key identity(1,1),
nomePessoa varchar(30) not null
)

CREATE TABLE CNH (
idCnh smallint  primary key identity(1,1),
idPessoa smallint foreign key references PESSOA(idPessoa),
numero char(11) not null unique,
dataEmissao date not null
)

--CUIDADO
DROP TABLE CNH

/*ALTERAR COLUNA JA CRIADA
ALTER TABLE CNH
ALTER COLUMN numero char(11) not null
*/


CREATE TABLE TELEFONE (
idTelefone smallint  primary key identity(1,1),
idPessoa smallint foreign key references PESSOA(idPessoa),
numeroTelefone char(9) not null
)

CREATE TABLE EMAIL (
idEmail smallint  primary key identity(1,1),
idPessoa smallint foreign key references PESSOA(idPessoa),
enderecoEmail varchar(50) not null
)