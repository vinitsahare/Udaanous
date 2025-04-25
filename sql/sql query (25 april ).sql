use sql_task ;

select * from logins;
select * from users;

-- 1.	Monthly Active Users (MAU) – Count of distinct users who logged in during each month over the last 12 months.

select date_format(l.login_date,'%Y-%M') as month, count(distinct l.user_id) as monthly_user
from logins as l
join users as u on l.user_id = u.user_id
where l.login_date between '2023-01-01' AND '2024-04-30'
group by month
order by monthly_user desc ;


-- 2.	1-Month Retention Rate – For each signup month, calculate the percentage of users who signed up in that month and also logged in again in the following month.

select
  date_format(u.signup_date, '%Y-%m') as signup_month,
  count(distinct u.user_id) as signup_users,
  count(DISTINCT IF(
    l.login_date >= DATE_ADD(DATE(u.signup_date), INTERVAL 1 MONTH) AND
    l.login_date <  DATE_ADD(DATE(u.signup_date), INTERVAL 2 MONTH),
    u.user_id, null
  )) AS retained_users,
  ROUND(
    COUNT(DISTINCT IF(
      l.login_date >= DATE_ADD(DATE(u.signup_date), INTERVAL 1 MONTH) AND
      l.login_date <  DATE_ADD(DATE(u.signup_date), INTERVAL 2 MONTH),
      u.user_id, NULL
    )) / COUNT(DISTINCT u.user_id) * 100, 2
  ) AS retention_rate
FROM users u
LEFT JOIN logins l ON u.user_id = l.user_id
WHERE u.signup_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY signup_month
ORDER BY signup_month;


select MIN(Login_date), max(login_date) from logins;
select * from logins where login_date is null or user_id is null ;