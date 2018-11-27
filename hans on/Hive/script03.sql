CREATE TABLE TEMP_COLAB (texto String);

LOAD DATA INPATH '/user/maria_dev/empregados.csv' OVERWRITE INTO TABLE TEMP_COLAB;

drop table colaboradores ;


CREATE TABLE IF NOT EXISTS colaboradores ( id int, nome String, cargo String, salario double, cidade String);




insert overwrite table colaboradores 
 
SELECT  
  
  regexp_extract(texto, '^(?:([^,]*),?){1}', 1) ID,  
  regexp_extract(texto, '^(?:([^,]*),?){2}', 1) nome,  
  regexp_extract(texto, '^(?:([^,]*),?){3}', 1) cargo,
  regexp_extract(texto, '^(?:([^,]*),?){4}', 1) salario,  
  regexp_extract(texto, '^(?:([^,]*),?){5}', 1) cidade


from temp_colab;



select * from colaboradores;


SELECT * FROM colaboradores WHERE Id = 3002;


SELECT * FROM colaboradores WHERE salario >= 25000;


SELECT * FROM colaboradores WHERE salario > 25000 && cidade = 'Natal';


SELECT round(2.6) from temp;


SELECT sum(salario), cidade from colaboradores group by cidade;





