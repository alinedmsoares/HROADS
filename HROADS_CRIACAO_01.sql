CREATE DATABASE SENAI_HROADS_TARDE

USE SENAI_HROADS_TARDE

CREATE TABLE PERSONAGENS(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (250) NOT NULL UNIQUE
	,ID_CLASSE INT FOREIGN KEY REFERENCES CLASSE(ID) NOT NULL
	,CAPACIDADE_MAXIMA_VIDA INT NOT NULL
	,CAPACIDADE_MAXIMA_MANA INT NOT NULL
	,DATA_ATUALIZACAO DATETIME NOT NULL
	,DATA_CRIACAO DATETIME NOT NULL
);

CREATE TABLE CLASSE(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (250) NOT NULL UNIQUE
);

CREATE TABLE HABILIDADES(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (250) NOT NULL UNIQUE
	,ID_TIPO_HABILIDADE INT FOREIGN KEY REFERENCES TIPO_HABILIDADE(ID) NOT NULL
);

CREATE TABLE TIPO_HABILIDADE(
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (250) NOT NULL UNIQUE
);

CREATE TABLE CLASSES_HABILIDADES(
	ID_CLASSE INT FOREIGN KEY REFERENCES CLASSE(ID) NOT NULL
	,ID_HABILIDADE INT FOREIGN KEY REFERENCES HABILIDADES(ID) NOT NULL
);