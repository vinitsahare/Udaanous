-- Create the table
CREATE TABLE purchases (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 
-- Insert values
INSERT INTO purchases (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-05'),
(2, '2024-01-02', '2024-01-06'),
(3, '2024-01-03', '2024-01-07'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-11'),
(8, '2024-01-08', '2024-01-12'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-14');

select * from purchases;

select *, date_format(purchasedate,"%y-%M-%D") as formated_date
from purchases;

----------------------------------------------------------------------------------------------------------
use udaanous;
-- Create the table
CREATE TABLE purchases2 (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 
-- Insert values
INSERT INTO purchases2 (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-09'),
(2, '2024-01-02', '2024-01-16'),
(3, '2024-01-03', '2024-01-11'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-21'),
(8, '2024-01-08', '2024-01-29'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-24');

select PurchaseDate,ReturnDate , datediff(ReturnDate,PurchaseDate) as date_difference
from purchases2;

-----------------------------------------------------------------------------------------------------------------
use udaanous;

-- Create the table
CREATE TABLE purchases3 (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
 
-- Insert values
INSERT INTO purchases3 (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-05'),
(2, '2024-01-02', '2024-01-06'),
(3, '2024-01-03', '2024-01-07'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-11'),
(8, '2024-01-08', '2024-01-12'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-14');

select *, year(ReturnDate) as Yearsdata
from purchases3;

select customerid, returndate, extract(year from Returndate) as Year_data
from purchases3;
 
------------------------------------------------------------------------------------------------------------------

select * from date_dataset;

SELECT count(*),category
FROM date_dataset
GROUP BY category;

select *
from date_dataset	
order by  CustomerName asc;

-------------------------------------------------------------------------------------------------------

select * from courses_data;

select * from courses_data c
inner join enrollments_data e
on c.`Course ID`=e.`Course ID`;

select * from courses_data c
left join enrollments_data e
on c.`Course ID`=e.`Course ID`;

select * from courses_data c
right join enrollments_data e
on c.`Course ID`=e.`Course ID`;

select * from courses_data c
cross join enrollments_data e
on c.`Course ID`=e.`Course ID`;