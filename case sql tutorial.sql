#CASE
select first_name, last_name, age,   CASE when age<=30 then "Young" End from employee_demographics;
select first_name, last_name, age,   CASE when age<=30 then "Young" when age between 31 and 50 then "old" when age>50 then "very old" End from employee_demographics;
