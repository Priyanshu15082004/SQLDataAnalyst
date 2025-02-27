-- Window function

SELECT dem.first_name, dem.last_name, gender , avg(salary) as avg_salary
FROM parks_and_recreation.employee_demographics  dem
join parks_and_recreation.employee_salary sal
on dem.employee_id = sal.employee_id
group by dem.first_name,dem.last_name,gender
;


SELECT dem.first_name, dem.last_name, gender , avg(salary) over(partition by gender)
FROM parks_and_recreation.employee_demographics  dem
join parks_and_recreation.employee_salary sal
on dem.employee_id = sal.employee_id
;



SELECT dem.first_name, dem.last_name, gender , salary,
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_Total
FROM parks_and_recreation.employee_demographics  dem
join parks_and_recreation.employee_salary sal
on dem.employee_id = sal.employee_id
;

SELECT dem.employee_id , dem.first_name, dem.last_name,gender, salary,
row_number()over(partition by gender order by salary desc) as row_num,
Rank() over(partition by gender order by salary desc) rank_num,
dense_Rank() over(partition by gender order by salary desc) dense_rank_num

FROM parks_and_recreation.employee_demographics  dem
join parks_and_recreation.employee_salary sal
on dem.employee_id = sal.employee_id
;