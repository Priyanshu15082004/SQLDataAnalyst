-- Create a temporary table
CREATE TEMPORARY TABLE temp_tables (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    favourite_movie VARCHAR(100)
);

-- Insert data into the temporary table
select*
from temp_tables;
INSERT INTO temp_tables
VALUES ('name', 'hdujne', 'jjeiinkdonb');

-- Select data from the temporary table
SELECT *
FROM temp_tables;


select*
from employee_salary;


create temporary table salary_over_50K
select*
from employee_salary
where salary >= 50000;

select* 
from salary_over_50K;
