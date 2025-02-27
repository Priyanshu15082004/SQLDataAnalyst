-- Limit and Aliasing 
SELECT * FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3, 1
;
-- Aliasing
SELECT gender, avg(age)  avg_age
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 40; 