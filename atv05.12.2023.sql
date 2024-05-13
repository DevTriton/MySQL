CREATE DATABASE sla;
USE sla;

CREATE TABLE tabelaA(
	Nome varchar(50)
);

CREATE TABLE tabelaB(
	NOME varchar(50)
);

CREATE TABLE cliente(
	cod INT,
	nome VARCHAR(50),
    passagem INT,
    poltrona VARCHAR(50)
);

CREATE TABLE passagem(
	cod INT,
	nome VARCHAR(50),
    passagem INT,
    poltrona VARCHAR(50)
);

INSERT INTO tabelaA VALUES ("SILVIO");
INSERT INTO tabelaA VALUES ("CLAUDIA");
INSERT INTO tabelaA VALUES ("Tais");
INSERT INTO tabelaA VALUES ("iVETE");

INSERT INTO tabelaB VALUES ("SILVIO");
INSERT INTO tabelaB VALUES ("CLAUDIA");
INSERT INTO tabelaB VALUES ("Tais");
INSERT INTO tabelaB VALUES ("iVETE");

#INNER
SELECT a.NOME, b.NOME
FROM tabelaA as a
INNER JOIN tabelaB as b
					on a.NOME = b.NOME;

#LEFT
SELECT a.NOME, b.NOME
FROM tabelaA as a
LEFT JOIN tabelaB as b
					on a.NOME = b.NOME;
                    
#RIGHT
SELECT a.NOME, b.NOME
FROM tabelaA as a
RIGHT JOIN tabelaB as b
					on a.NOME = b.NOME;  
                    
#OUTER
SELECT *
FROM tabelaA as a
LEFT JOIN tabelaB as b 
					on a.NOME = b.NOME
WHERE b.NOME is NULL

UNION   

SELECT *
FROM tabelaA as a
right JOIN tabelaB as b on a.NOME = B.NOME
WHERE a.NOME IS NULL;     

#FULL
SELECT a.NOME, b.NOME
FROM tabelaA as a
LEFT JOIN tabelaB as b 
					on a.NOME = b.NOME

UNION   

SELECT a.NOME, b.NOME
FROM tabelaA as a
right JOIN tabelaB as b 
					on a.NOME = B.NOME;     
                    
#LEFT OUTER
SELECT a.NOME, b.NOME
FROM tabelaA as a
LEFT JOIN tabelaB as b
					on a.NOME = b.NOME
WHERE b.NOME IS NULL;        

CREATE VIEW cliente_passagem AS

	SELECT nome, passagem.num, poltrona
    FROM cliente, passagem
    WHERE cliente.cod_cli = passagem.cod_cli
		ORDER BY nome, num;
     
SELECT * FROM cliente_passagem;

DROP VIEW cliente_passagem;     