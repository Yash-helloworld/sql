-- practics of joins and subquerry

select * from (select emp_id,
emp_name,
salary,
date_of_joining,
(year(now()) - year(date_of_joining)) year_exp,
date_of_birth
from employee) emp_exp
where year_exp > 2;

select * from employee;

select dept_id, avg(salary) salary from employee
group by dept_id;

select * from employee
where dept_id = 1;

select * from employee
where dept_id = 1 and salary > 3500;
select  * from employee
where dept_id = 1 and salary > 2990;

select * from employee e1
where salary >
(
  select avg(salary) from employee e2
  where e2.dept_id = e1.dept_id
);
