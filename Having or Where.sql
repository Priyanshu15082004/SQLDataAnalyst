-- Having vs Whetre 
SELECT gender , AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;
SELECT occupation,AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
group by occupation
having AVG(salary) > 75000;
-- Aggregate function use after the group by means the having function use after the grouop by