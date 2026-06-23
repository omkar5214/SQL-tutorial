#CASE
select first_name, last_name, age,   CASE when age<=30 then "Young" End from employee_demographics;
select first_name, last_name, age,   CASE when age<=30 then "Young" when age between 31 and 50 then "old" when age>50 then "very old" End from employee_demographics;
#Eg. pay increase and bonus by <50000= 5% , >50000=7% and finances=10% bonus
select first_name, last_name, salary,
 CASE 
 when salary<50000 then salary+(salary*0.05) 
 when salary>=50000 then salary+(salary*0.07) End as new_salary, 
 CASE 
 when dept_id =6 then salary*0.10 end as bonus 
 from employee_salary ;
