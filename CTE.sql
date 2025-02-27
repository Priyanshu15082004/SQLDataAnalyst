-- CTEs
with CTE_Example (gender, avg_sal,  max_sal, Min_SAL, COUNT_SAL) as
(
SELECT gender , avg(salary) avg_sal, Max(salary) max_sal, Min(salary) min_sal, count(salary) count_sal
FROM parks_and_recreation.employee_demographics dem
Join parks_and_recreation.employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
)
select *
From CTE_Example 
;




select Avg(avg_sal)
from
(SELECT gender , avg(salary) avg_sal, Max(salary) max_sal, Min(salary) min_sal, count(salary) count_sal
FROM parks_and_recreation.employee_demographics dem
Join parks_and_recreation.employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
) example_subquery
;



with CTE_Example as
(
SELECT employee_id , gender , birth_date
FROM parks_and_recreation.employee_demographics 
where birth_date > '1985-01-01'
),
CTE_Example2 as
(
select employee_id,salary
From parks_and_recreation.employee_salary
where salary > 50000
)
select*
From CTE_Example 
join CTE_Example2
on CTE_Example.employee_id = CTE_Example2.employee_id
;










