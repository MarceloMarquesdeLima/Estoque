/*  CRIA O generator PARA O CAMPO ID USUARIO*/
 CREATE GENERATOR GEN_ID_USUARIO;

/*  CRIA A TRIGGER PARA USUARIO */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_USUARIO FOR USUARIO ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_USUARIO=gen_id(GEN_ID_USUARIO,1);
END^

SET TERM ; ^


INSERT INTO USUARIO(NOME,SENHA,TIPO,CADASTRO)
VALUES('EDIVALDO','147','ADM','02.05.2020');

INSERT INTO USUARIO(NOME,SENHA,TIPO,CADASTRO)
VALUES('ROBERTO','148','ADM','02.05.2020');

SELECT * FROM USUARIO

/* CLIENTE */
/*  CRIA O generator PARA O CAMPO ID USUARIO*/
 CREATE GENERATOR GEN_ID_CLIENTE;

/*  CRIA A TRIGGER PARA USUARIO */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_CLIENTE FOR CLIENTE ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_CLIENTE=gen_id(GEN_ID_CLIENTE,1);
END^

SET TERM ; ^



/* EMPRESA*/
/*  CRIA O generator PARA O CAMPO ID USUARIO*/
 CREATE GENERATOR GEN_ID_EMPRESA;

/*  CRIA A TRIGGER PARA USUARIO */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_EMPRESA FOR EMPRESA ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_EMPRESA=gen_id(GEN_ID_EMPRESA,1);
END^

SET TERM ; ^



/* FORNECEDORES*/
/*  CRIA O generator PARA O CAMPO ID USUARIO*/
 CREATE GENERATOR GEN_ID_FORNECEDOR;

/*  CRIA A TRIGGER PARA USUARIO */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORNECEDOR FOR FORNECEDOR ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_FORNECEDOR=gen_id(GEN_ID_FORNECEDOR,1);
END^

SET TERM ; ^




/* PRODUTO*//*  CRIA O generator PARA O CAMPO ID USUARIO*/
 CREATE GENERATOR GEN_ID_PRODUTO;

/*  CRIA A TRIGGER PARA USUARIO */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_PRODUTO FOR PRODUTO ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_PRODUTO=gen_id(GEN_ID_PRODUTO,1);
END^

SET TERM ; ^





/* FROMAS DE PGTO*//*  CRIA O generator PARA O CAMPO ID USUARIO*/
 CREATE GENERATOR GEN_ID_FORMA_PGTO;

/*  CRIA A TRIGGER PARA USUARIO */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_FORMA_PGTO FOR FORMA_PGTO ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_FORMA_PGTO=gen_id(GEN_ID_FORMA_PGTO,1);
END^

SET TERM ; ^



/*COMPRAS*/
/*  CRIA O generator PARA O CAMPO ID USUARIO*/
 CREATE GENERATOR GEN_ID_COMPRA;

/*  CRIA A TRIGGER PARA USUARIO */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_COMPRA FOR COMPRA ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_COMPRA=gen_id(GEN_ID_COMPRA,1);
END^

SET TERM ; ^




/* VENDA*/
/*  CRIA O generator PARA O CAMPO ID USUARIO*/
 CREATE GENERATOR GEN_ID_VENDA;

/*  CRIA A TRIGGER PARA USUARIO */
SET TERM ^ ;

CREATE TRIGGER INSERE_ID_VENDA FOR VENDA ACTIVE 
 BEFORE INSERT POSITION 0 
AS 
BEGIN 
    NEW.ID_VENDA=gen_id(GEN_ID_VENDA,1);
END^

SET TERM ; ^

































