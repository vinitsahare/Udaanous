use udaanous;
create table sales_dataset(Company varchar(255), Sales integer, Profit integer);

 insert into sales_dataset(Company,Sales,Profit)
 values("Plasto",10000,5000.37),
 ("Dell",25000,-5000.70),
 ("Acer",55000,-1000.45),
 ("Asus",10000,5000.100),
 ("Red gear",10000,-3000.700),
 ("S Enterprises",7000,-2000.55),
 ("Milton",1500,-1000.17),
 ("S Enterprises",7000,-2000.90);
 
 select * from sales_dataset;
 
 SELECT ABS(profit)
 FROM sales_dataset;
 
SELECT SUM(Sales)
 FROM sales_dataset;
 
  SELECT AVG(sales)
 FROM Sales_dataset;
 
  SELECT COUNT(company)
 FROM sales_dataset;
 
  SELECT sales DIV 2
 FROM sales_dataset;
 
  SELECT MIN(sales)
 FROM sales_dataset;
 
 SELECT MAX(sales)
 FROM sales_dataset; 
 
 select power(sales,2)
 from sales_dataset;
 
 SELECT ROUND(profit, 5 )
 FROM sales_dataset;
 
SELECT SQRT(sales)
 FROM Sales_dataset;
 
 SELECT LOG(profit)
 FROM Sales_dataset;
 
 ------------------------------------------------------------------------------------------------------
 use udaanous;
 CREATE TABLE exam_info (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores integer
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80),
('Alice', 'Smith',  75),
('Bob', 'Johnson',  78),
('Emily', 'Brown',  60),
('Michael', 'Davis', 86),
('Sarah', 'Wilson', 90),
('David', 'Lee', 75),
('Jessica', 'Taylor', 75),
('Chris', 'Evans',  55),
('Emma', 'Thompson',  67);

select * from exam_info;

select power(scores, 3)
from exam_info;
------------------------------------------------------------------------------------------------------
use udaanous;
CREATE TABLE exam_info_2 (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50),
    Scores float
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info_2 (FirstNames, LastNames, Scores) VALUES
('John', 'Doe',  80.345544),
('Alice', 'Smith',  75.6355),
('Bob', 'Johnson',  78.5364565),
('Emily', 'Brown',  60.3565),
('Michael', 'Davis', 86.5353656),
('Sarah', 'Wilson', 90.535464),
('David', 'Lee', 75.567765),
('Jessica', 'Taylor', 75.34242),
('Chris', 'Evans',  55.09098),
('Emma', 'Thompson',  67.34535);

select round(scores,2) as RoundedScores
from exam_info_2;

---------------------------------------------------------------------------------------------------------

select * from date_dataset;

select datediff(Now(),`Order Date`) As Update_Date
From date_dataset;

select day(`Order Date`)
from date_dataset;