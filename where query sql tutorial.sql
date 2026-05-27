#where - it has comparison operators like <,<=,>,>=,=,!=
select * from employee_salary where first_name = "Leslie";
select * from employee_salary where salary > 50000;
select * from employee_salary where salary >= 50000;
select * from employee_salary where salary <50000;
select * from employee_salary where salary <= 50000;
select * from employee_salary where salary !=50000;
# where logicail operator AND OR NOT
select * from employee_demographics where birth_date > "1985-01-01" and gender = "male";

select * from employee_demographics where birth_date > "1985-01-01" or gender = "male";
select * from employee_demographics where birth_date > "1985-01-01" and gender != "male";

select * from employee_demographics where( birth_date > "1985-01-01" and gender = "male") or age>50;
#like statement --%(anything aftr initial eg jer% = jerry or %er%= jerry) and _ (after word amount of _ is amount of word should be in it eg a__=ash)

select * from employee_demographics where first_name like "jer";
select * from employee_demographics where first_name like "jer__";
select * from employee_demographics where birth_date like "1989%"






