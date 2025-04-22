use sql_task;
select * from sales_data;

-- total sales 

select sum(quantity *price) as Total_sales from sales_data;


-- total sales value by month 

select format(order_date,"yyyy,mm") as month , sum(quantity *price) as Total_sales
from sales_data 
group by format(order_date,"yyyy,mm")
order by month ;

-- top 5 products based on sales value 

select product_name , sum(quantity*price) as total_revenue
from sales_data
group by product_name
limit 5;

-- sales by region 

select region , sum(quantity*price) total_sales
from sales_data
group by region;

-- customer purchase frequency 

select customer_id, sum(quantity) from sales_data
group by customer_id
limit 10 ;

--  category wise revenue contribution 

select category, sum(quantity*price) as category_revenue,
ROUND(100.0 * SUM(quantity*price) / SUM(SUM(quantity*price)) OVER (), 2) AS revenue_percentage
from sales_data
group by category
order by revenue_percentage desc ;

-- customers have made more than one purchase

select customer_id , count(customer_id) from sales_data
group by customer_id having count(customer_id) > 1;
    
-- second outcome of customers have made more than one purchase
    
select count(*) as customers
from (
	select customer_id
    from sales_data
    group by  customer_id
    having count(*)>1) as `cust>1purch`;
