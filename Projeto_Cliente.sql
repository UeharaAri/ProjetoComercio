/* Criar Data Base */

CREATE DATABASE COMERCIO;

USE COMERCIO;

SHOW DATABASES;

/* Criando a Tabela Cliente */

CREATE TABLE CLIENTE(
   IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
   NOME VARCHAR(30) NOT NULL,
   SEXO ENUM('M','F') NOT NULL,
   EMAIL VARCHAR (50) UNIQUE,
   CPF VARCHAR (15) UNIQUE
);

SHOW TABLES;

/* Criando a Tabela Endereço */

CREATE TABLE ENDERECO(
   IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
   RUA VARCHAR (30) NOT NULL,
   BAIRRO VARCHAR (30) NOT NULL,
   CIDADE VARCHAR (30) NOT NULL,
   ESTADO CHAR (2) NOT NULL,
   ID_CLIENTE INT UNIQUE,
   FOREIGN KEY (ID_CLIENTE)
   REFERENCES CLIENTE (IDCLIENTE)
);

/* Criando a Tabela Telefone */

CREATE TABLE TELEFONE (
   IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
   TIPO ENUM ('RES','COM','CEL') NOT NULL,
   NUMERO VARCHAR (10) NOT NULL,
   ID_CLIENTE INT,
   FOREIGN KEY (ID_CLIENTE)
   REFERENCES CLIENTE  (IDCLIENTE)
);

/* ENDERECO - OBRIGATORIO
CADASTRO DE SOMENTE UM,

TELEFONE- NAO OBRIGATORIO
CADASTRO DE MAIS DE UM (OPICIONAL) */

/* Inclusão de dados dos clientes */


INSERT INTO CLIENTE VALUES (NULL,'JOAO','M','JOAO@IG.COM','76458674898');
INSERT INTO CLIENTE VALUES (NULL,'CARLOS','M','CARLOS@IG.COM','09458674898');
INSERT INTO CLIENTE VALUES (NULL,'ANA','F','ANA@IG.COM','9082674898');
INSERT INTO CLIENTE VALUES (NULL,'CLARA','F','NULL','54328674898');
INSERT INTO CLIENTE VALUES (NULL,'JORGE','M','JORGE@IG.COM','34358674898');
INSERT INTO CLIENTE VALUES (NULL,'CELIA','F','CELIA@IG.COM','23258674898');

/* Visualização de dados que foram incluídos (Querie utilizada somente para estudo) */
 
SELECT * FROM CLIENTE;


+-----------+--------+------+---------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF         |
+-----------+--------+------+---------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 76458674898 |
|         2 | CARLOS | M    | CARLOS@IG.COM | 09458674898 |
|         3 | ANA    | F    | ANA@IG.COM    | 9082674898  |
|         4 | CLARA  | F    | NULL          | 54328674898 |
|         5 | JORGE  | M    | JORGE@IG.COM  | 34358674898 |
|         6 | CELIA  | F    | CELIA@IG.COM  | 23258674898 |
+-----------+--------+------+---------------+-------------+


/* Inclusão de dados dos clientes */

INSERT INTO ENDERECO VALUES (NULL,'RUA ANTONIO SA','CENTRO','BELO HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES (NULL,'RUA CAPITARO HERMES','CENTRO','RIO DE JANEIRO','RJ',1);
INSERT INTO ENDERECO VALUES (NULL,'RUA PRES VARGAS','CENTRO','JARDINS','SP',3);
INSERT INTO ENDERECO VALUES (NULL,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES (NULL,'RUA DO OUVIRDOR','FLAMENGO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDERECO VALUES (NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);


/* inclusão de dados telefonicos dos clientes */

INSERT INTO TELEFONE VALUES (NULL,'CEL','789762531',5);
INSERT INTO TELEFONE VALUES (NULL,'RES','23162531',5);
INSERT INTO TELEFONE VALUES (NULL,'CEL','785662531',1);
INSERT INTO TELEFONE VALUES (NULL,'COM','789762531',2);
INSERT INTO TELEFONE VALUES (NULL,'RES','89762531',1);
INSERT INTO TELEFONE VALUES (NULL,'CEL','754762531',3);
INSERT INTO TELEFONE VALUES (NULL,'CEL','589762531',3);
INSERT INTO TELEFONE VALUES (NULL,'COM','122976251',1);
INSERT INTO TELEFONE VALUES (NULL,'RES','90762531',5);
INSERT INTO TELEFONE VALUES (NULL,'CEL','654762531',2);

SELECT * FROM TELEFONE;

+------------+------+-----------+------------+
| IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+------------+------+-----------+------------+
|          1 | CEL  | 789762531 |          5 |
|          2 | RES  | 23162531  |          5 |
|          3 | CEL  | 785662531 |          1 |
|          4 | COM  | 789762531 |          2 |
|          5 | RES  | 89762531  |          1 |
|          6 | CEL  | 754762531 |          3 |
|          7 | CEL  | 589762531 |          3 |
|          8 | COM  | 122976251 |          1 |
|          9 | RES  | 90762531  |          5 |
|         10 | CEL  | 654762531 |          2 |
|         13 | CEL  | 33567765  |         11 |
|         14 | CEL  | 88668786  |         11 |
|         15 | COM  | 55689654  |         11 |
|         16 | COM  | 88687979  |         12 |
|         17 | COM  | 88965676  |         13 |
|         18 | CEL  | 89966809  |         15 |
|         19 | COM  | 88679978  |         16 |
|         20 | CEL  | 99655768  |         17 |
|         21 | RES  | 89955665  |         18 |
|         22 | RES  | 77455786  |         19 |
|         23 | RES  | 89766554  |         19 |
|         24 | RES  | 77755785  |         20 |
|         25 | COM  | 44522578  |         20 |
|         26 | CEL  | 44522578  |         21 |
+------------+------+-----------+------------+

