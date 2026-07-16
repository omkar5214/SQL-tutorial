-- triggers and event
#trigger
# if we update in one table and forgot in other this trigger can help us to update in updating in other tables
select * from employee_demographics;

select * from employee_salary;

delimiter $$
create trigger employee_insert
	after insert on employee_salary #we can also do before instead of after can be used for delete func
    for each row
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name); #old - for delete or updated
end $$
delimiter ;
# it does n't it own little section in the sechmas chart but can be in inside a tables click arrow button and u will find it
insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values(15, "jon", "jin", "actor", "50000", null),
(14, "lu", "lin", "director", "60000", null);

#Events its like reminder or like check if row satisfy condition
select * from employee_demographics;

delimiter $$
create event delete_retirees
on schedule every 30 second
do
begin
	delete from employee_demographics where age >= 60;
end $$
