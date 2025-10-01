-- task  
create database shopdb;
use shopdb;
create table customers
     (
        customer_id int primary key auto_increment,
        first_name varchar(100) not null,
        last_name varchar(100) not null,
        gmail varchar(100) unique not null,
        phone varchar(100) unique not null,
        city varchar(100),
        created_at datetime not null default current_timestamp
	   );
show tables;
select * from customers;

create table products
(  
   prodcut_id int  primary key auto_increment,
   name varchar(100) not null,
   category varchar(100) not null,
   price int  not null check (price > 0),
   stock int not null check (stock >= 0)
);


create table employees
(
   employee_id int primary key auto_increment,
   first_name varchar(100) not null ,
   last_name varchar(100) not null,
   role varchar(100) not null ,
   hire_date int not null ,
   salary int not null check( salary > 0)
);

create table orders(
order_id int primary key auto_increment,
 customers_id int,
 product_id int,
 quantity int not null check(quantity > 0),
 order_date int not null,
 status varchar(100) not null check (status in ("Pending","Shipped","Delivered","Cancelled")),
 total int not null check(total > 0)
);

alter table orders
add constraint foreign key(customers_id) references customers(customer_id),
add constraint foreign key(product_id) references products(prodcut_id);


INSERT INTO customers (customer_id, first_name, last_name, gmail, phone, city, created_at) VALUES
(1, 'Rohan', 'Mehta', 'rohan@gmail.com', '9876543210', 'Mumbai', '2024-01-05'),
(2, 'Priya', 'Sharma', 'priya@gmail.com', '9123456780', 'Pune', '2024-01-10'),
(3, 'Aarav', 'Patel', 'aarav@gmail.com', '9988776655', 'Surat', '2024-02-15'),
(4, 'Neha', 'Singh', 'neha@gmail.com', '9112233445', 'Thane', '2024-03-20'),
(5, 'Karan', 'Desai', 'karan@gmail.com', '9001122334', 'Ahmedabad', '2024-04-01');

drop table customers;
select * from customers;
show tables;

INSERT INTO products ( prodcut_id , name, category, price, stock) VALUES
(1, 'Laptop', 'Electronics', 55000.0, 15),
(2, 'Office Chair', 'Furniture', 4500.0, 40),
(3, 'T-Shirt', 'Clothing', 799.0, 100),
(4, 'Mixer Grinder', 'Kitchen', 3200.0, 25),
(5, 'Cricket Bat', 'Sports', 2500.0, 30);

INSERT INTO employees  VALUES
(1, 'Ankit', 'Joshi', 'Sales', '2023', 30000.0),
(2, 'Sneha', 'Kapoor', 'Delivery', '2023', 22000.0),
(3, 'Ramesh', 'Iyer', 'Manager', '2022', 45000.0),
(4, 'Pooja', 'Shetty', 'Support', '2023', 25000.0),
(5, 'Vishal', 'Choudhary', 'Accountant', '2023', 28000.0);

delete from employees
where employee_id = 8;

INSERT INTO orders VALUES
(1, 1, 1, 1, '2024', 'Delivered', 55000.0),
(2, 2, 3, 2, '2024', 'Shipped', 1598.0),
(3, 3, 5, 1, '2024', 'Pending', 2500.0),
(4, 4, 2, 3, '2024', 'Delivered', 13500.0),
(5, 5, 2, 2, '2024', 'Cancelled', 6400.0);

select * from orders;
select * from employees;
select * from products;
select * from customers;


INSERT INTO customers (customer_id, first_name, last_name, gmail, phone, city, created_at) VALUES
(6, 'Anaya', 'Deshmukh', 'anaya@gmail.com', '9123467890', 'Pune', '2024-05-10'),
(7, 'Siddharth', 'Rao', 'sid@gmail.com', '9876501234', 'Mumbai', '2024-06-15'),
(8, 'Tanya', 'Gupta', 'tanya@gmail.com', '9988123456', 'Delhi', '2024-07-20'),
(9, 'Kabir', 'Singh', 'kabir@gmail.com', '9000100111', 'Chennai', '2024-08-18'),
(10, 'Meera', 'Patel', 'meera@gmail.com', '9112345678', 'Ahmedabad', '2024-09-10'),
(11, 'Arjun', 'Nair', 'arjun@gmail.com', '9998877665', 'Bangalore', '2024-09-15'),
(12, 'Simran', 'Kaur', 'simran@gmail.com', '9887766554', 'Chandigarh', '2024-09-18'),
(13, 'Jatin', 'Malhotra', 'jatin@gmail.com', '9776655443', 'Hyderabad', '2024-09-20'),
(14, 'Rhea', 'Mishra', 'rhea@gmail.com', '9665544332', 'Kanpur', '2024-09-22'),
(15, 'Dev', 'Shah', 'dev@gmail.com', '9554433221', 'Lucknow', '2024-09-25'),
(16, 'Nina', 'Joshi', 'nina@gmail.com', '9443322110', 'Vadodara', '2024-09-28'),
(17, 'Om', 'Patil', 'om@gmail.com', '9332211009', 'Nagpur', '2024-10-01'),
(18, 'Isha', 'Verma', 'isha@gmail.com', '9221100998', 'Indore', '2024-10-04'),
(19, 'Yash', 'Sharma', 'yash@gmail.com', '9110099887', 'Rajkot', '2024-10-07'),
(20, 'Kavya', 'Reddy', 'kavya@gmail.com', '9009988776', 'Coimbatore', '2024-10-10'),
(21, 'Aarav', 'Singh', 'aarav.singh@gmail.com', '9998887776', 'Delhi', '2024-10-13'),
(22, 'Anjali', 'Kumar', 'anjali.k@gmail.com', '9987776665', 'Mumbai', '2024-10-16'),
(23, 'Rohit', 'Gupta', 'rohit.g@gmail.com', '9976665554', 'Pune', '2024-10-19'),
(24, 'Priya', 'Agarwal', 'priya.a@gmail.com', '9965554443', 'Surat', '2024-10-22'),
(25, 'Lakshya', 'Desai', 'lakshya.d@gmail.com', '9954443332', 'Thane', '2024-10-25'),
(26, 'Tanvi', 'Patel', 'tanvi.p@gmail.com', '9943332221', 'Ahmedabad', '2024-10-28'),
(27, 'Karan', 'Mehta', 'karan.m@gmail.com', '9932221110', 'Bhopal', '2024-10-31'),
(28, 'Sanya', 'Joshi', 'sanya.j@gmail.com', '9921110009', 'Ludhiana', '2024-11-03'),
(29, 'Aditya', 'Shah', 'aditya.s@gmail.com', '9910009998', 'Agra', '2024-11-06'),
(30, 'Maya', 'Rao', 'maya.r@gmail.com', '9909998887', 'Nagpur', '2024-11-09');

select * from customers;
INSERT INTO products (prodcut_id, name, category, price, stock) VALUES
(6, 'Desk Lamp', 'Electronics', 1200.0, 50),
(7, 'Water Bottle', 'Sports', 350.0, 150),
(8, 'Dining Table', 'Furniture', 12000.0, 10),
(9, 'Jeans', 'Clothing', 1900.0, 80),
(10, 'Blender', 'Kitchen', 3500.0, 22),
(11, 'Running Shoes', 'Sports', 2500.0, 60),
(12, 'Microwave', 'Kitchen', 10000.0, 18),
(13, 'Smartphone', 'Electronics', 30000.0, 25),
(14, 'Headphones', 'Electronics', 8000.0, 40),
(15, 'Bookshelf', 'Furniture', 7500.0, 15),
(16, 'Winter Jacket', 'Clothing', 3500.0, 45),
(17, 'Coffee Maker', 'Kitchen', 4500.0, 10),
(18, 'Baseball Bat', 'Sports', 3200.0, 28),
(19, 'Office Desk', 'Furniture', 6000.0, 12),
(20, 'Trousers', 'Clothing', 1200.0, 90),
(21, 'Gaming Console', 'Electronics', 35000.0, 30),
(22, 'Electric Kettle', 'Kitchen', 1800.0, 50),
(23, 'Yoga Mat', 'Sports', 1000.0, 70),
(24, 'Sofa', 'Furniture', 20000.0, 5),
(25, 'Dress Shirt', 'Clothing', 1500.0, 65),
(26, 'Air Conditioner', 'Electronics', 40000.0, 8),
(27, 'Toaster', 'Kitchen', 2300.0, 20),
(28, 'Tennis Racket', 'Sports', 4500.0, 15),
(29, 'Office Chair Deluxe', 'Furniture', 7500.0, 25),
(30, 'Sneakers', 'Clothing', 1800.0, 70);
select * from products;

INSERT INTO employees (employee_id, first_name, last_name, role, hire_date, salary) VALUES
(6, 'Rajesh', 'Kumar', 'Support', '2023-05-10', 27000.0),
(7, 'Divya', 'Saxena', 'Sales', '2023-06-15', 32000.0),
(8, 'Mohan', 'Verma', 'Manager', '2023-04-05', 48000.0),
(9, 'Alka', 'Chaudhary', 'Accountant', '2023-07-20', 29000.0),
(10, 'Nitin', 'Sharma', 'Delivery', '2023-08-10', 23000.0),
(11, 'Snehal', 'Patil', 'Support', '2023-01-20', 26000.0),
(12, 'Ritika', 'Deshmukh', 'Sales', '2023-03-12', 31000.0),
(13, 'Saurabh', 'Jain', 'Manager', '2022-11-15', 47000.0),
(14, 'Neeta', 'Joshi', 'Accountant', '2023-02-25', 28000.0),
(15, 'Harsh', 'Gupta', 'Delivery', '2023-06-01', 22000.0),
(16, 'Shreya', 'Kapoor', 'Support', '2023-07-15', 27000.0),
(17, 'Karan', 'Shah', 'Sales', '2023-05-30', 32000.0),
(18, 'Monika', 'Chaudhary', 'Manager', '2023-04-28', 49000.0),
(19, 'Ravi', 'Iyer', 'Accountant', '2023-03-10', 29000.0),
(20, 'Pooja', 'Singh', 'Delivery', '2023-08-05', 24000.0),
(21, 'Vikram', 'Rao', 'Support', '2023-01-18', 26000.0),
(22, 'Sonali', 'Mehta', 'Sales', '2023-06-20', 33000.0),
(23, 'Abhishek', 'Patel', 'Manager', '2023-02-01', 51000.0),
(24, 'Ira', 'Saxena', 'Accountant', '2023-04-12', 28000.0),
(25, 'Kunal', 'Malhotra', 'Delivery', '2023-05-25', 23000.0),
(26, 'Megha', 'Singh', 'Support', '2023-07-03', 27000.0),
(27, 'Nikhil', 'Desai', 'Sales', '2023-08-19', 32000.0),
(28, 'Shivani', 'Kumar', 'Manager', '2023-03-22', 50000.0),
(29, 'Tarun', 'Bhatt', 'Accountant', '2023-06-05', 29000.0),
(30, 'Radhika', 'Ghosh', 'Delivery', '2023-08-15', 22000.0);
alter table employees
modify hire_date varchar(100) not null;

INSERT INTO orders (order_id,  customers_id , product_id, quantity, order_date, status, total) VALUES
(6, 6, 7, 4, '2024-05-10', 'Delivered', 1400.0),
(7, 7, 8, 1, '2024-06-15', 'Delivered', 12000.0),
(8, 8, 9, 3, '2024-07-22', 'Shipped', 5700.0),
(9, 9, 10, 2, '2024-08-18', 'Pending', 7000.0),
(10, 10, 6, 5, '2024-09-15', 'Cancelled', 6000.0),
(11, 11, 11, 1, '2024-09-18', 'Delivered', 2500.0),
(12, 12, 12, 2, '2024-10-01', 'Shipped', 20000.0),
(13, 13, 13, 1, '2024-10-03', 'Delivered', 30000.0),
(14, 14, 14, 1, '2024-10-05', 'Pending', 8000.0),
(15, 15, 15, 1, '2024-10-07', 'Delivered', 7500.0),
(16, 16, 16, 1, '2024-10-09', 'Delivered', 40000.0),
(17, 17, 17, 3, '2024-10-11', 'Cancelled', 13500.0),
(18, 18, 18, 2, '2024-10-13', 'Delivered', 6400.0),
(19, 19, 19, 1, '2024-10-15', 'Delivered', 6000.0),
(20, 20, 20, 4, '2024-10-17', 'Pending', 4800.0),
(21, 21, 21, 1, '2024-10-19', 'Delivered', 35000.0),
(22, 22, 22, 2, '2024-10-21', 'Cancelled', 3600.0),
(23, 23, 23, 3, '2024-10-23', 'Shipped', 3000.0),
(24, 24, 24, 1, '2024-10-25', 'Delivered', 20000.0),
(25, 25, 25, 2, '2024-10-27', 'Delivered', 3000.0),
(26, 26, 26, 1, '2024-10-29', 'Shipped', 40000.0),
(27, 27, 27, 3, '2024-10-31', 'Pending', 6900.0),
(28, 28, 28, 2, '2024-11-02', 'Delivered', 9000.0),
(29, 29, 29, 1, '2024-11-04', 'Cancelled', 7500.0),
(30, 30, 30, 5, '2024-11-06', 'Delivered', 9000.0);
alter table orders 
modify order_date varchar(100) not null;
select * from orders;

// add addition column though GPT
select * from orders;
select * from employees;
select * from products;
select * from customers;




UPDATE `shopdb`.`orders` SET `order_date` = '2024-07-22' WHERE (`order_id` = '1');
UPDATE `shopdb`.`orders` SET `order_date` = '2024-06-15' WHERE (`order_id` = '2');
UPDATE `shopdb`.`orders` SET `order_date` = '2024-07-22' WHERE (`order_id` = '3');
UPDATE `shopdb`.`orders` SET `order_date` = '2024-08-18' WHERE (`order_id` = '4');
UPDATE `shopdb`.`orders` SET `order_date` = '2024-05-10' WHERE (`order_id` = '5');

UPDATE `shopdb`.`employees` SET `hire_date` = '2023-05-10' WHERE (`employee_id` = '1');
UPDATE `shopdb`.`employees` SET `hire_date` = '2023-06-15' WHERE (`employee_id` = '2');
UPDATE `shopdb`.`employees` SET `hire_date` = '2023-07-20' WHERE (`employee_id` = '3');
UPDATE `shopdb`.`employees` SET `hire_date` = '2023-03-12' WHERE (`employee_id` = '4');
UPDATE `shopdb`.`employees` SET `hire_date` = '2023-06-01' WHERE (`employee_id` = '5');





-- qestions

select * from orders;
select * from employees;
select * from products;
select * from customers;
select * from orders;
-- 1
select month(order_date) as ordermonth , count(*) as total from orders
group by month(order_date);

-- 2
select customers_id, min(order_date) as early_customers from orders
group by order_date;
select * from orders;

-- 3

select c.customer_id,concat(first_name," ",last_name) as name ,o.order_date from customers c
join orders o on c.customer_id = o.customers_id
having month(order_date) = 3;



-- 3
select customers_id,min(order_date) from orders group by customers_id order by customers_id;
 -- 4
 select dayname(order_date) as day_of_week, count(*) as total_orders from orders
 group by day_of_week
 order by total_orders desc;
 -- 5
 
 select prodcut_id ,name ,category,price , stock
 from products
 where stock = 0 or stock < (select avg(stock) from products);


select * from employees;
select * from products;
select * from customers;
select * from orders;

