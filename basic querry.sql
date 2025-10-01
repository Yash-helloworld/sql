-- basic querrys
use sakila;
select left("abdul",3);
select *, left(first_name,1) as charc from actor;
select *,concat(right(first_name,2),right(last_name ,3)) as a from actor;
select upper("hello");
select lower("Hello");

select substr("memom abdul gani",5);
select ascii("A");
select ascii("Abdul");
select asci("bdul");