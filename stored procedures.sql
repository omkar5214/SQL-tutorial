#stored procedures u can also specify but not necessary which table u want to it in and it can be stored permantently access outside the function code called from other file 
use parks_and_recreation ;
CREATE procedure large_salaries()
select * from employee_salary
where salary >= 50000;


call large_salaries();

#delimiter$$  & delimeter; multiple query in one query
delimiter $$
CREATE procedure large_salaries3()
begin
	select * from employee_salary
	where salary >= 50000;
    select * from employee_salary
    where salary >= 10000;
end $$
delimiter ;# space between delimiter and ; is very imp 

call large_salaries3();
