#group by 
select gender from employee_demographics group by gender;
#aggregate func - max , avg , min, sum, 
select gender , avg(age) from employee_demographics group by gender;

select occupation, salary from employee_salary group by occupation, salary;

#order by give ascending and descending order . by default ascending
select * from employee_demographics order by first_name;
select * from employee_demographics order by first_name desc;
select * from employee_demographics order by gender, age desc; # gender remains same but age desc me hoga
select * from employee_demographics order by age , gender; #as age will be first order by and then gender
#order by position
select * from employee_demographics order by 5,4; #column position ,but not recommended




