#...LIMIT AND ALIASING
select gender, avg(age) from employee_demographics group by gender having avg(age) > 40 LIMIT 3;
