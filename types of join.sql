-- all types of joins, left join , right join , outer join, inner join , union
create table my_table_one
(
	id int,
    data varchar(30)
);
insert into my_table_one values
(1,"One"),
(3,"Three-3"),
(5,"Five"),
(2,"Two-2"),
(10,"Ten"),
(6,"Six"),
(8,"Eight");

select * from my_table_one;

create table my_table_two
(
	id int,
    value varchar(30)
);

insert into my_table_two values
(3,"Three"),
(10,"Ten"),
(1,"One"),
(2,"Two"),
(15,"Fifteen"),
(19,"Nineteen"),
(25,"Twentyfive"),
(12,"Twelve"),
(14,"Fourteen");

select * from my_table_one;
select * from my_table_two;

select * from my_table_one
join my_table_two
on my_table_one.id = my_table_two.id
order by my_table_one.id;



select * from my_table_one
join my_table_two
on data = value;

select my_table_one.id as t1id , data as t1data,
 my_table_two.id as t1id, value as t2values
 from my_table_one
 join my_table_two
 on my_table_one.id = my_table_two.id
 order by my_table_one.id;
 
 show tables;
 
 select * from my_table_one;
 select * from my_table_two;
 
 select * from my_table_one t1
 left join my_table_two t2
 on t1.id = t2.id;
 
 select * from my_table_one t1
 right join my_table_two t2
 on t1.id = t2.id;
 
 select * from student;
 select * from course;
 select * from student_course;
 
 select * from student s
 join student_course sc
 on s.roll_no =  sc.roll_no
 join course c
 on sc.cid = c.cid;
 
 
 select transaction_id, s.*,date_of_purchase,c.* from student s 
 join student_course sc
 on s.roll_no = sc.roll_no
 join course c
 on sc.cid = c.cid;
 
 select * from student s join student_course sc
 on s.roll_no = sc.roll_no;
 
 show tables;