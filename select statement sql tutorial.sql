# * - is used to fetch all the columns from table eg.
select * from parks_and_recreation.employee_demographics;
# we can also fetch single columns from the table eg
select first_name, last_name, birth_date, age, age+10 from parks_and_recreation.employee_demographics;
# remember sql follows PEMDAS rule = - which is the order of calc of arithmatic or map in mysql, parenthese, exponential, multiplication, division , addition, subtraction. 
select first_name, last_name, birth_date, age, (age+10)*100 from parks_and_recreation.employee_demographics;
#distinct - unique value plus unique combination of columns
select distinct first_name, gender from parks_and_recreation.employee_demographics;

