create database dsacademy;

create schema dsacademy2;


show databases;

drop database dsacademy2;
drop schema dsacademy2;


CREATE TABLE IF NOT EXISTS aluno (id int, nome String);


CREATE TABLE IF NOT EXISTS colaboradores ( id int, nome String, cargo String, salario decimal)
COMMENT ‘tabela de colaboradores’
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n
STORED AS TEXTFILE;

ALTER TABLE colaboradores CHANGE salario salario Double;

ALTER TABLE colaboradores ADD COLUMNS (cidade String COMMENT 'Nome da Cidade');

show tables;

DROP TABLE IF EXISTS aluno;

