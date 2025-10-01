-- Day 3 -- joins and practics through classical models

use classicmodels;
show tables;

select * from customers;
select * from orders;
select * from orderdetails;
select * from products;
select * from productLines;
select cust.customerNumber,customerName,concat_ws(" ",contactFirstName,contactLastName)contactName, ord.ordernumber, orderDate, status,quantityOrdered, priceEach,pr.productCode,productName,productLine,productVendor,buyPrice,MSRP
from customers cust
join orders ord on cust.customerNumber = ord.customerNumber
join orderdetails o on ord.orderNumber = o.orderNumber
join products pr on o.productCode = pr.productCode;



select cust.customerNumber, customerName,
concat_ws(" ",contactFirstname,ContactLastName) contactName,
ord.orderNUmber, orderDate, status,
quantityOrdered, priceEach,
pr.productCode, productName, productLine,buyPrice,MSRP,productVendor
from customers cust
join orders ord on cust.customerNumber = ord.customerNumber
join orderdetails o on ord.orderNumber = o.orderNumber
join products pr on o. productCode = pr.productCode
where cust.customerNUmber = 128;

select * from orders
order by orderDate desc;