-- practices tables 2
use sprk__pq; 
drop table if exists student;

create table course
(
  cid int primary key auto_increment,
  cname varchar(30) not null,
  cinstructor varchar(30) not null,
  cprice int not null,
  cduration varchar(100) not null
  );
  
  describe course;


create table student
( roll_no int not null,
name varchar(30) not null,
phone varchar(20) not null,
cid int,
foreign key(cid) references course(cid)
);

describe student;

show create table student;

insert into 
course(cname,cinstructor,cprice,cduration)
values
("SQL","Mr S", 5000, "30 days"),
("Core Java","Mr J", 7500, "45 days"),
("Python","Mr S", 5000, "20 days"),
("Power BI","Mr P", 10000, "30 days"),
("Spring Boot","Mr J", 15000, "45 days");

select * from course;
select * from student;

update student
set cid =  2
where roll_no = 2;

desc student;

insert into student values
(3,"Abdul","3315",3),
(1,	"Ajit","1234",3),
(1,	"Ajit","1234",4),
(2,	"Shivani", "8761",5),
(4,	"Shoaib", "1333",1);


alter table student
add gender varchar(200) after phone;

select * from student;
update student
set gender = "Male"
where roll_no in (1,3,5);

update student
set gender = "female"
where roll_no in (2,4);

update student
set gender = "male"
where roll_no = 4;