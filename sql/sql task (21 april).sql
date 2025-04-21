create database sql_task ;

use sql_task;

-- •	Basic SELECT

select * from orders ; 
select * from customers;
select * from products;

-- •	List all customers and their cities.

select first_name , last_name , city 
from customers;

select * 
from orders as o
join customers as c 
on c.customer_id = o.customer_id
join products as p 
on p.product_id = o.product_id; 

-- •	JOIN
-- •	Display each order with customer full name, product name, and total price (quantity × price).

select 
	concat(first_name, " ", last_name) as Customer_name ,
    p.Product_name, o.Quantity * p.price as Total_price
from orders as o 
join customers as c 
on c.customer_id = o.customer_id
join products as p 
on p.product_id = o.product_id; 

-- •	Filter & Date
-- •	Show all orders placed in March 2024.

select * from orders where month(order_date) = 03 and year (order_date) = 2024;

-- •	GROUP BY
-- •	Count how many times each product has been ordered.

select p.product_name, count(*)
from products p 
join orders o
on o.product_id = p.product_id
group by p.product_name having count(o.product_id);

-- •	Revenue Analysis
-- •	Calculate total revenue generated from each product.

select p.product_name,
    sum(p.price * o.quantity) AS total_revenue
from orders as o
join products as p ON o.product_id = p.product_id
group by p.product_name;

-- •	Top Customer
-- •	Identify the customer who spent the most.
    
select c.first_Name, sum(o.quantity * p.price ) as total_spent
from customers as c 
join orders as o 
on c.customer_id = o.customer_id
join products as p 
on p.product_id = o.product_id
group by c.first_name   
order by total_spent desc;

-- •	Bonus:
-- •	Which city has the highest average spending per customer?

select c.city, avg(o.quantity * p.price ) as total_spent
from customers as c 
join orders as o 
on c.customer_id = o.customer_id
join products as p 
on p.product_id = o.product_id
group by c.city   
order by total_spent desc;