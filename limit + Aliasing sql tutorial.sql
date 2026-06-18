#...LIMIT AND ALIASING
select gender, avg(age) from employee_demographics group by gender having avg(age) > 40 LIMIT 3;
select * from employee_demographics order by age desc LIMIT 3;
select * from employee_demographics order by age desc LIMIT 3,1; # start at position 3 and go one row after
-- alaising  changing name 
select gender, avg(age) as avgage from employee_demographics group by gender having avgage>40;
 -- or we can skip as
 select gender, avg(age) avgage from employee_demographics group by gender having avgage>40;
