-- more joins pratices  unions joins
-- update qerrys
create table employee
(
  eid int primary key,
  ename varchar(50) not null,
  reports_to int,
  foreign key(reports_to) references employee(eid)
);

desc employee;

insert into employee(eid,ename) values
(1,"Amrit Parkar"),
(2,"John Simon"),
(3,"Nilesh Shinde"),
(4,"Abdul Memon"),
(5,"Pranjal Sharma"),
(6,"Nitin Deshmukh"),
(7,"Rohit Plande"),
(8,"Shoaib Khan"),
(9,"Anjali Gupta"),
(10,"Shoail Memon"),
(11,"Rajesh More");

select * from employee;
UPDATE `sprk__pq`.`employee` SET `reports_to` = '3' WHERE (`eid` = '1');
UPDATE `sprk__pq`.`employee` SET `reports_to` = '1' WHERE (`eid` = '2');
UPDATE `sprk__pq`.`employee` SET `reports_to` = '11' WHERE (`eid` = '4');
UPDATE `sprk__pq`.`employee` SET `reports_to` = '4' WHERE (`eid` = '5');
UPDATE `sprk__pq`.`employee` SET `reports_to` = '1' WHERE (`eid` = '6');
UPDATE `sprk__pq`.`employee` SET `reports_to` = '4' WHERE (`eid` = '7');
UPDATE `sprk__pq`.`employee` SET `reports_to` = '4' WHERE (`eid` = '8');
UPDATE `sprk__pq`.`employee` SET `reports_to` = '4' WHERE (`eid` = '9');
UPDATE `sprk__pq`.`employee` SET `reports_to` = '10' WHERE (`eid` = '11');


select * from employee;
 
select * from employee e1
join employee e2
on e1.reports_to = e2.eid;

select e1.eid, e1.ename,
e2.eid mid , e2.ename manger_name
from employee e1
join employee e2
on e1.reports_to = e2.eid;

select * from my_table_one;
select * from my_table_two;

select * from my_table_one
union 
select * from my_table_two;

select * from my_table_one
union all
select * from my_table_two
order by id;

select * from my_table_one t1
left join my_table_two t2
on t1.id = t2.id
union
select * from my_table_one t1
right join my_table_two t2
on t1.id = t2.id;


select id, data from my_table_one
union select data, id from my_table_two;