-- Case Statement


select first_name,
  last_name,
  age,
  case
  when age <= 30 then 'Young'
  when age between 31 and 50 then 'Old'
  when age >=50 then 'On deaths door'
  end as Age_Bracket
From parks_and_recreation.employee_demographics
; 

-- Pay increase and Bonus
-- < 50000 = 5%
--  >50000 = 7%
--  Finance = 10% bonus 

Select first_name, last_name, salary,
case
when salary < 50000 then salary * 1.05
when salary > 50000 then salary * 1.07

End as New_salary,
case
when dept_id = 6 then salary * .10
End as Bonus
From parks_and_recreation.employee_salary;








