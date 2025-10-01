-- practice table
create database sprk__pq;
use sprk__pq;

create table student
( 
roll_no int,
first_name varchar(100),
last_name varchar(100),
gender varchar(10),
percentage decimal(5,2)
);

drop table student;

drop database sprk_morning;

select * from student;
describe student;


insert into student values
(10,"bsbsbbs","sdsd","male",34.34);




insert into student(roll_no,first_name,gender,percentage) values
(1,"pranhali","female",34.23);

select * from student;



alter table student
add addmission_date datetime;

select * from student;

describe student;

drop table student;
show tables;

select now(), current_timestamp(), current_timestamp;


create table student
( 
roll_no int primary key auto_increment,
name varchar(100) not null,
email varchar(100) unique not null,
age int not null check (age between 5 and 40),
add_date datetime not null default current_timestamp
);
drop table student;
describe student;

insert into student(name,email,age) values
("Prathamesh Katkar", "parthamesh12@gmail.com",28),
("Parth Jadhav", "parth20@gmail.com",15),
("Shubham Palande", "shubh20@gmail.com",30);

select * from student;

update student
set email = "abdul12@gmail.com"
where roll_no = 2;

delete from student
where roll_no = 2;