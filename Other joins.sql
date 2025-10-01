 -- qerrys and other joins, natural , cross joins, and sub qurrys
 create table food_item
(
	item_name varchar(30),
    item_price int
);

insert into food_item values
("Dosa",60),("Burger",80),("Pizza",180),("Pav Bhaji",120);

select * from food_item;

create table toppings
(
	extra_item varchar(30),
    additional_price int
);
insert into toppings values
("Cheese",50),("Butter Cheese",80),("Sada",0),("Butter",40);


select * from food_item;
select * from toppings;

select * from food_item
cross join toppings;

select concat(extra_item," ",item_name) menu,
(item_price + additional_price) total
from food_item
cross join toppings;

select concat_ws(" ",extra_item,item_name) menu,
(item_price + additional_price) total
from food_item
cross join toppings
order by item_name, total;


select * from my_table_one;
select * from my_table_two;

select * from my_table_one
natural join my_table_two;

alter table my_table_two
rename column value to data;

select * from my_table_two;

select * from my_table_one
natural join my_table_two;

select * from my_table_one
natural left join my_table_two;
