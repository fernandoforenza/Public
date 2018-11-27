
Parte 1 - Carregar dados no HDFS


# Criar diretório
hdf dfs -mkdir /user/cloudera/empregados


# Carregar dados no HDFS
hdfs dfs -copyFromLocal empregados.txt /user/cloudera/empregados


# Abrir o shell
hbase shell

# Cria uma tabela com uma column family para receber os dados
create 'emp_table,  {NAME=>'emp'}

 
Parte 2 - Manipular dados com Pig

# Abrir o shell do Pig
pig -x mapreduce

# Navegar até o diretório
cd empregados;

# Visualizar o conte˙do do arquivo
cat empregados.txt;

# Carregar dados do HDFS para o Pig
dados = LOAD  'empregados.txt' Using PigStorage(',')  AS (id:int, nome:chararray, cargo:chararray, salario:float, cidade:chararray);

# Usando Pig Store
STORE  data  INTO 'hbase://emp_details' Using org.apache.pig.backend.hadoop.hbase.HBaseStorage ('emp:name, emp:designation emp:salary, emp:city’);


# Parte 3 - Visualizar os dados no Hbase

# Abrir o shell
hbase shell

# Scan na tabela
hbase> scan 'emp_table’









