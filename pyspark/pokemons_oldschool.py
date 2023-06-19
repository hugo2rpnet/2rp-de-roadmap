#imports
from pyspark.context import SparkContext
from pyspark.sql.session import SparkSession

#criando sessão spark
sc = SparkContext.getOrCreate();
spark = SparkSession(sc);

#Carregando dados da tabela pokemon
df_pokemon = spark.table("work_dataeng.pokemon_hugo");
df_pokemon.show();

#Carregando dados da tabgela generation
df_generation = spark.table("work_dataeng.generation_hugo");
df_generation.show();


#Filtrar somente as gerações <= 2002-11-21 e fazer um cache do dataframe:
df_generation = df_generation.filter("date_introduced < '2002-11-21'");
df_generation.show();
df_generation_c = df_generation.cache()

#Renomear colunas generation para evitar nomes duplicados
df_pokemon = df_pokemon.withColumnRenamed('generation', 'p_generation');
df_generation = df_generation.withColumnRenamed('generation', 'g_generation');

#Inner join entre generation e pokemon
df_join = df_pokemon.join(df_generation, on=[df_pokemon.p_generation == df_generation.g_generation], how = 'inner');

#Criando uma tabela para armazenar os dados
df_join.write.mode('overwrite').format('orc').saveAsTable('work_dataeng.pokemons_oldschool_hugo');