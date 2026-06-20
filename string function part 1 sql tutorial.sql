-- string functions buildin in sql which helps use string differently
# length
select length("skyfall"); #answer is 7;
select first_name, length(first_name) from employee_demographics order by 2;
#upper
select upper("sky");
#lower
select lower("SKY");
select first_name, upper(first_name) from employee_demographics order by 2;

#TRIM , left trim , right trim 
select trim("      sky     ");
select ltrim("    sky   ");
select Rtrim("   sky    ");

select first_name, left(first_name, 4) from employee_demographics; # gives first 4 aphabets from left
select first_name, right(first_name, 4) from employee_demographics; # gives first 4 aphabets from right
select first_name, left(first_name, 4), right(first_name, 4) from employee_demographics; # gives first 4 aphabets from first

