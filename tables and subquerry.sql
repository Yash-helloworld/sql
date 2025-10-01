-- create table and subqerrys min , max , avg 
use sprk__pq;
show tables;
drop table employee;

create table employee
(
	emp_id int primary key auto_increment,
    emp_name varchar(50) not null,
    phone varchar(15) not null unique,
    salary int not null,
    date_of_birth date not null,
    date_of_joining date not null,
    dept_id int not null
);

create table department
(
	dept_id int primary key auto_increment,
    dept_name varchar(50) not null,
    location varchar(50) not null
);

insert into department(dept_name, location)
values 
("HR","Airoli"),
("IT","Pune"),
("Sales","Airoli"),
("HR","Pune"),
("Admin","Thane"),
("Operations","Delhi"),
("Learning and Development","Pune"),
("Marketing","Bengaluru");

select * from department;

alter table employee
add constraint foreign key(dept_id) references 
department(dept_id);

show create table employee;
insert into employee values
(default,"Ayush Sharma","+91 12345 12345",2000,"1999-11-26","2022-05-25",2),
(default,"Shobit Jadhav","+91 12345 54321",5000,"1991-10-20","2020-01-20",4),
(default,"Jaya Vishwakarma","+91 54321 54321",2000,"1996-05-22","2021-10-20",8),
(default,"Memon Abdul Gani","+91 54321 12345",2000,"2001-09-10","2023-05-15",8),
(default,"Yash Ingle","+91 54321 87678",5000,"1999-05-25","2024-10-15",1),
(default,"Sahil Yadav","+91 87575 87678",1000,"2005-05-25","2025-02-10",1),
(default,"Dhondiba Shinde","+91 99999 87678",1500,"2002-05-25","2025-02-10",1),
(default,"Dev Shirke","+91 99999 88888",2500,"2001-10-20","2024-10-10",2),
(default,"Pranjal Gupta","+91 77777 88888",3500,"1995-05-25","2021-05-22",4),
(default,"Anjali Gupta","+91 66666 88888",4500,"1998-10-20","2022-05-23",5);

select * from employee;

select avg(salary) from employee;

select * from employee where salary > 2900;
insert into employee values
(default,"Salman Khan","+91 15151 12345",1500,"1985-05-20","2018-01-02",1);

select avg(salary) from employee;
select * from employee where salary > 2772.7273;


select * from employee
where salary > (select avg(salary) from employee);


select * from employee
where salary = (select max(salary) from employee); 

select * from employee
where salary = ( select max(salary) from employee
where salary < ( select max(salary) from employee)); 

select * from employee;

select distinct dept_id from employee;
select * from department;

select * from employee;

update employee set salary = 5000
where emp_id =  5;

select dept_id, max(salary) as top_salary from employee
group by dept_id;

select e.dept_id , max(salary) as top_salry,
dept_name, location
from employee e
join department d on e.dept_id = d.dept_id
group by dept_id;

select * from employee

where dept_id = 1 and salary = 5000
or dept_id =  2 and salary = 2500;

select * from employee
where dept_id = 4 and salary = 5000;


select * from employee
where (dept_id, salary) in
(
select dept_id, max(salary) from employee
group by dept_id);
use sprk__pq;

select e.*, dept_name, location
from employee e
join
department d on e.dept_id - d.dept_id
where (e.dept_id, salary) in (select dept_id, max(salary)
from employee
group by dept_id);

select emp_id,emp_name,salary, date_of_joining
, (year(now())- year(date_of_joining)) year_exp,
date_of_birth
from employee;

select emp_id,emp_name, salary,date_of_joining,(year(now()) - year(date_of_joining)) year_exp,
date_of_birth
from employee
having year_exp > 2;