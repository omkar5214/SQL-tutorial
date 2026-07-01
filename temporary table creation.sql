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

#second way - this will only work in the section
select* from employee_salary;
create temporary table salary_over_50k 
select * from employee_salary where salary>=50000;

select * from salary_over_50k;
