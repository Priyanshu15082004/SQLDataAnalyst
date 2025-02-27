-- Triggers and Events

select *
from employee_demographics;


select *
from employee_salary;

Delimiter $$
create trigger employee_insert
after insert on employee_salary
for each row 
begin 
    insert into employee_demographics (employee_id,first_name,last_name)
    values(new.employee_id,new.first_name,new.last_name);
    
end $$
delimiter ;

insert into employee_salary (employee_id,first_name,last_name,occupation,
salary,dept_id)
values(13, 'jean-Ralphio','sapertein','Extertainment 720 CEO',10000000,null);

-- EVENTS

select *
from employee_demographics;


Delimiter $$
create event delete_retirees
on schedule every 30 second 
Do
Begin
   delete
   from employee_demographics
   where age >= 60;
 end$$
 delimiter ;
 
 Show variables like 'event%';











