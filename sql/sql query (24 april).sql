use sql_task;

select * from customer;
select * from orders;

WITH ranked_customers AS (
  SELECT c.name, c.region, COUNT(*) AS order_count, SUM(o.total_amount) AS total_spent,
         RANK() OVER (PARTITION BY c.region ORDER BY SUM(o.total_amount) DESC) AS rank_in_region
  FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  WHERE o.order_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
  GROUP BY c.customer_id, c.name, c.region
  HAVING order_count > 3
)
SELECT name, region, total_spent, order_count
FROM ranked_customers
WHERE rank_in_region <= 3
ORDER BY region, rank_in_region;
