-- day 1
use sakila;

select * from actor where actor_id >= 20 and actor_id <= 30;

select * from actor

where actor_id between 20 and 30 or first_name = "ED";

select * from actor where actor_id between 15 and 20
or actor_id between 30 and 39
or actor_id between 2 and 4;


select * from actor where first_name in ("penelope","ed","Rohit","adam");


select * from actor 
where first_name like "%";


select * from actor
limit 4 offset 2;
select * from actor 
where first_name like "%R%" and last_name like "%S";

select * from customer
order by customer_id desc;


select * from actor
order by first_name;
select * from actor
order by first_name desc;
