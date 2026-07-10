# having and where together
#having clause
select gender, avg(age) from employee_demographics group by gender having avg(age) > 40 ;

#having clause using where clause.
select occupation, avg(salary) from employee_salary where occupation like %manager% group by occupation having avg(salary) > 4000 ;

