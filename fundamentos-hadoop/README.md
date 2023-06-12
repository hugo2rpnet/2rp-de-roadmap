# FUNDAMENTOS HADOOP - EDUREKA

### O QUE É
O Hadoop não é uma lingugagem ou framework, mas um grupo de sistemas

### COMPOSIÇÃO
Composto principalmente por: Mapreduce, Hive, Pig, HBase, Spark, Kafka, Yarn, HDFS

### PRINCIPAIS PONTOS
- HDFS lida com diferentes tipos de data sets: estruturados, não estruturados, semi estruturados
- YARN é um gerenciador de recursos, compósto por dois serviços: Resource Manager e o NodeManager
- Mapreduce é core do Hadoop e produz os conceitos de Map ( funções como filtro, agrupamento e sorting) e o reduce (funções como agregação e sumarização resultados do map)
- Pig é uma linguagem de data flow usada para ETL e produz diversos jobs para Big Data, como filtrar, agrupar, sorting
- Hive é um componente de DW que analisa dados e utiliza a linguagem HQL. Ainda, é composto pelo CLI e o JDBC/ODBC driver
- Mahout pe uma engine de ML desenvolvida em Java e utilizada para Big Data
- Spark é utilizado principalmente para processamentos batch, desenvolvido em Scala e é executgado a nível de memória de servidores para diminuir o custo computacional com Map-reduce
- HBase é um servidor No-SQL e suporte diversos tipos de dados. É escrito em Java e suporte até aplicações em REST
- Drill é um open source que suporte diferentes tipos de databases para NoSQL e pode combina-los de diferentes formas
- Oozie é não só um agendador de jobs, mas pode definir tipos de processamento de jobs. Utiliza dos tipos de jobs: Oozie workflow e o Oozie Coordinator
- Flume é utilizado para ingestões no HDFS de forma estruturada e não estruturada.
- Sqoop é um serviço de ingestão que pode exportar estruturas de dados do RDBMS de dados estruturados e não estruturados
 - Solr e o Lucene são serviços e busca e indexação do Hadoop. Baseado em Java é uma biblioteca muito ampla e completa
- O Zookeeper coordena os diversos tipos de serviços no ambiente distribuído do Hadoop.
- Ambari é um gerenciador do Hadoop e prover todos os serviços para configurar serviços da plataforma

### HADOOP ARQUITETURA
Quais as vantagens do HDFS?
- Ler uma quantidade massiva de dados em um menor tempo
- Com menos recursos computacionais

O que é NAme Node?
 - é onde se mantém e gerencia os datanodes. É o master node!
 - Recebe localização, tamanho, permissão e hirearquias dos metadados

O que é Data node?
 - São os slaves nodes e mantém a estrutura original de dados. Também, servem como requisição de escrita e leitura de dados dos clientes

Cluster Arquitetura

 - É formado por diversos cores de switchs na qual constituem grupos de computadores/servidores

Como o HDFS é armazenado
 - São blocos de aproximadamente 128 Mb no Apache Hadoop 2.x
 - Ainda há a estruturação de repetição de blocos por nodes
 - O mecanismo mais simples de escrita para um pipeline no HDFS é através de um bloco na qual por uma requisição em um name node e em seguida isso é distribuido/replicado pelo client node entre os switchs
-  - O mecanismo mais simples de leitura no HDFS é através de uma requisição um bloco na qual em um name node. E, em seguida, isso é replicado, ou seja, a leitura é percorrida pelo client node entre os switchs para consulta entre os diferentes Datanodes disponíveis


### Distributed Storage 
- Nesse último vídeo há mais algumas explicações a nível mais teórico de como funciona o sistema HDFs, a nível de topologia, benefícios, vantagens. Porém, muitas das explicações já repassadas nos vídeos da Edureka!
- O Toyin explica um pouco melhor como é o processamento paralelo com exemplos de uma topologia por diversos samples
- Faz uma rápida demonstração de como funciona o Cloudera Manager na prática.
- Tenta demonstrar como é o processo de inspeção e validação para criação de um cluster com os respectivos apps para o ambiente de Big Data.
- E então ele consegue explicar melhor algumas questões até de API como configurar e navegar por funções do Cloudera Manager e demonstrar a tela em si: diretório do Datanode, gerenciar logs, visualizar instance nodes.
- Ainda, consegue demonstrar alguns comandos CLIs básicos, como: dfs -ls, dfs -rm, dfs -mkdir, dfs -cp. Repectivamente, são comandos de listar arquivos, remover, criar diretórios, copiar.
- Em uma última etapa, ele demonstra um gerenciamento de clusters a nível de CLI, mostrando como configurar usuários, arquivos, tamanho do cluster. E faz simulação de estouro de memória/capacidade.



#### SOBRE O AUTOR/ORGANIZADOR
Hugo Araújo Souza
hugo.souza@2rpnet.com