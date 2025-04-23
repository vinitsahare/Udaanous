select * from order_items;
select * from customers;
select * from orders;
select * from products;

-- 	Calculate total revenue per month.

select sum(i.quantity * i.price) as total_revenue, date_format(o.order_date ,"%Y,%M") as month
from order_items i
join orders as o on i.order_id=o.order_id
group by month;

select o.customer_id , c.customer_name ,sum(total_amount) as total_spent
from customers as c
join orders as o on c.customer_id = o.customer_id
group by o.customer_id ,c.customer_name;

select product_name, count(region), region
from customers as c
join orders as o on c.customer_id = o.customer_id
join order_items as oi on oi.order_id = o.order_id
join products as p on oi.product_id = p.product_id
group by region, product_name;

select p.product_name , sum((price - cost) * quantity) as Profit
from products as p
join order_items as oi on oi.product_id = p.product_id
join orders as o on oi.order_id = o.order_id
join customers as c on c.customer_id = o.customer_id
group by p.product_name;


SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
CASE WHEN order_date = (SELECT MIN(o2.order_date) FROM orders o2 WHERE o2.customer_id = o.customer_id) THEN 'new'
    ELSE 'returning'
    END AS type, COUNT(*) AS total FROM orders o
GROUP BY month, type;