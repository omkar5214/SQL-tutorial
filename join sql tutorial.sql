# join
#inner join (default join)
select * from employee_demographics inner join employee_salary on employee_demographics.employee_id = employee_salary.employee_id;
#0r
select * from employee_demographics as dem  inner join employee_salary as sal on dem.employee_id = sal.employee_id;
#for certain column 
select dem.employee_id, age, occupation from employee_demographics as dem  inner join employee_salary as sal on dem.employee_id = sal.employee_id;

#outer join--- left join everything from letf and matching from right
select * from employee_demographics as dem  left join employee_salary as sal on dem.employee_id = sal.employee_id;

# outer join -- right join everything from right table and matching from left
select dem.employee_id, age, occupation from employee_demographics as dem  right join employee_salary as sal on dem.employee_id = sal.employee_id;

#self join - tie table with itself eg.
select * from employee_salary as emp join employee_salary as emp1 on emp.employee_id +1 =emp1.employee_id;
# self join simplify
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp, 
emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2 
on emp1.employee_id +1 =emp2.employee_id;

#joining multiple table together
select * from employee_demographics as dem
inner join employee_salary as sal on dem.employee_id = sal.employee_id 
inner join parks_departments pd
on sal.dept_id=pd.department_id;
select * from parks_departments,