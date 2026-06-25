#window functions
select gender, avg(salary) as avg_salary from employee_demographics as dem join employee_salary as sal on dem.employee_id=sal.employee_id group by gender;
 # now using window 
 select dem.first_name, gender, avg(salary) over(partition by gender) from employee_demographics as dem join employee_salary as sal on dem.employee_id=sal.employee_id;
#rolling_total
 select dem.first_name, gender,salary,sum(salary) over(partition by gender order by dem.employee_id) as rolling_total from employee_demographics as dem join employee_salary as sal on dem.employee_id=sal.employee_id;
