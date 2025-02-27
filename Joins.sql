-- joins 
SELECT *
FROM parks_and_recreation.employee_demographics;
select*
from parks_and_recreation.employee_salary;


SELECT dem.employee_id,age,occupation
FROM parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
ON dem.employee_id = sal.employee_id
;

-- Outer join 

SELECT *
FROM parks_and_recreation.employee_demographics as dem
right outer join parks_and_recreation.employee_salary as sal
ON dem.employee_id = sal.employee_id
;

-- Self join 

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp

From parks_and_recreation.employee_salary emp1
join parks_and_recreation.employee_salary emp2
on emp1.employee_id + 1 = emp2.employee_id
;



-- joining multiple table together 

SELECT *
FROM parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
ON dem.employee_id = sal.employee_id
inner join parks_and_recreation.parks_departments pd
on sal.dept_id = pd.department_id
;

select*
From parks_and_recreation.parks_departments;





