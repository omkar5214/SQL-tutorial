#temporary table
#first way 
create temporary table temp_table
(first_name varchar(20),
last_name varchar(20),
favourite_movie varchar(20)
);

select * from temp_table;

insert into temp_table
values("alex","fernandes", "lord of the rings");

select * from temp_table;

