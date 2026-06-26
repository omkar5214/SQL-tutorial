#window functions
select gender, avg(salary) as avg_salary from employee_demographics as dem join employee_salary as sal on dem.employee_id=sal.employee_id group by gender;
 # now using window 
 select dem.first_name, gender, avg(salary) over(partition by gender) from employee_demographics as dem join employee_salary as sal on dem.employee_id=sal.employee_id;
#rolling_total
 select dem.first_name, gender,salary,sum(salary) over(partition by gender order by dem.employee_id) as rolling_total from employee_demographics as dem join employee_salary as sal on dem.employee_id=sal.employee_id;

#row number row gets own unique value
 select dem.first_name, gender,salary, 
 row_number() over() 
from employee_demographics as dem join employee_salary as sal 
 on dem.employee_id=sal.employee_id;
 
 #row number but value can repeat because of partition
 select dem.first_name, gender,salary, 
 row_number() over(partition by gender) 
from employee_demographics as dem join employee_salary as sal 
 on dem.employee_id=sal.employee_id;

 #row number but value can repeat because of partitionwhat if we want to do rank by salary high to low 
 select dem.first_name, gender,salary, 
 row_number() over(partition by gender order by salary desc) 
from employee_demographics as dem join employee_salary as sal 
 on dem.employee_id=sal.employee_id;
