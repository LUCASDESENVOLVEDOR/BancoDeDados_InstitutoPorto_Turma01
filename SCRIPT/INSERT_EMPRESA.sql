use empresa

insert into PESSOA (nomePessoa)
VALUES ('PATRICIA'), ('ALEXANDRE')

-- * exibe todas as colunas.
SELECT * FROM PESSOA

insert into CNH (idPessoa,numero,dataEmissao)
VALUES (2,'12323478922','2023-05-02')

SELECT * FROM CNH 

--alterar numero de cnh da pessoa 1.
update CNH set numero = '12345678900'
where idCnh = 1


--abrir uma transacao antes de (update/delete)
BEGIN TRAN

--eliminar um registro de uma tabela
delete from cnh
where idCnh = 3

--voltar o estado do banco anterior.
ROLLBACK

--manter o estado atual do banco de dado.
COMMIT





insert into EMAIL(idPessoa,enderecoEmail)
VALUES (2,'ale@hotmail.com')

select * from email 

insert into TELEFONE (idPessoa,numeroTelefone)
values (1,'912345678'),(2,'912345123')

select * from TELEFONE