-- Unions 

SELECT first_name,last_name
FROM parks_and_recreation.employee_demographics
union distinct
SELECT first_name,last_name 
FROM parks_and_recreation.employee_salary;
;


SELECT first_name,last_name, 'Old Man' as Label
FROM parks_and_recreation.employee_demographics
where age > 40 and gender ='Male'
union
SELECT first_name,last_name, 'Highly pain employee' as Label
FROM parks_and_recreation.employee_salary
where salary > 70000
union
SELECT first_name,last_name, 'Old Lady' as Label
FROM parks_and_recreation.employee_demographics
where age > 40 and gender ='Female'
order by first_name,last_name
;

