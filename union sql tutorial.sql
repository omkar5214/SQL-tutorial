# unions
select first_name, last_name from employee_demographics union select first_name, last_name from employee_salary;
# union distinct
select first_name, last_name from employee_demographics union distinct select first_name, last_name from employee_salary;
#union all - will get duplicates
select first_name, last_name from employee_demographics union all select first_name, last_name from employee_salary;

select first_name, last_name ,'old' as label from employee_demographics where age > 50 ;
#old above is label

select first_name, last_name ,'old' as label from employee_demographics where age > 40 and gender ="Male" union 
select first_name, last_name ,'highly paid ' as label from employee_salary where salary > 70000 order by first_name, last_name;
