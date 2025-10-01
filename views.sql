-- views
 
create view emp_with_dept
as select e1.* ,dept_name, location from employee e1
join department d on e1.emp_id = d.dept_id
where salary >
(
  select avg(salary) from employee e2
  where e2.dept_id = e1.dept_id
)
order by salary;

select * from emp_with_dept;



select * from employee;
desc employee;

create view emp_view as
select emp_name, phone , salary,date_of_birth,date_of_joining,
dept_id from employee;

select * from emp_view;
insert into emp_view values
("Shobit Gupta","+91 12121 12121",5000,"1985-10-25",
"2025-02-22",4);

select * from employee;
create view emp_without_salary as
select emp_name, phone, date_of_birth, date_of_joining, dept_id
from emp_view;
select * from emp_without_salary;
select *,salary from emp_without_salary;

select * from employee;

select * from emp_view;
drop view emp_view;

select * from emp_without_salary;
drop view emp_without_salary;