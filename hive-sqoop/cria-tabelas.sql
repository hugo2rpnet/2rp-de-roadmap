--Tabela generation
create table work_dataeng.generation_hugo(
    generation int,
    date_introduced date
)
 stored as orc;

--Tabela pokemon
create table work_dataeng.pokemon_hugo (
	idnum   int, 
	name string, 
	hp  int,
	speed   int,
	attack  int,
	special_attack  int, 
	defense int, 
	special_defense int, 
	generation  int
)
stored as orc;