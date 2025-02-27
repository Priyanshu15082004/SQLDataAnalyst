-- Subqueries

SELECT * FROM parks_and_recreation.employee_demographics
Where employee_id in (Select employee_id
                       From parks_and_recreation.employee_salary
					   where dept_id =1 )
;


Select first_name, salary, 
( select Avg(salary) from parks_and_recreation.employee_salary)
From parks_and_recreation.employee_salary;


Select gender, avg(age), max(age) ,Min(age),count(age)
From parks_and_recreation.employee_demographics
group by gender;

select avg(`max_age`)
from
(Select gender, 
avg(age) as avg_age , 
max(age) as max_age  ,
 Min(age) as min_age ,
 count(age)
From parks_and_recreation.employee_demographics
group by gender) as Agg_table
;
 
 
 
 
 
 
 