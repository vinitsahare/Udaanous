use udaanous;

create table salary_data(
	ID int unique not null , Name varchar(255) not null , Roll varchar(255) not null, Salary int not null );
    
insert into salary_data(
id, name , roll ,salary)
values(1 , "vinit", "DA", 100000 ),(2 , "shubham","DA",120000),(3, "utkarsha", "DA", 5000),(4, "arjun", "DA",5000);

select * from salary_data;



update salary_data
set salary = 10000 ,salary = 12000
where id = 3 ;

delete from salary_data 
where id = 4;

truncate table salary_data;

drop table salary_data;

----------------------------------------------------------------------------------------------------------------

create table salary_data(
	ID int unique not null , Name varchar(255) not null , Roll varchar(255) not null, Salary int not null );
    
insert into salary_data(
id, name , roll ,salary)
values(1 , "vinit", "DA", 100000 ),(2 , "shubham","DA",120000),(3, "utkarsha", "DA", 5000),(4, "arjun", "DA",5000);

select * from salary_data;


ALTER TABLE salary_data
ADD Floor int not null ;


UPDATE Salary_data
SET floor = CASE id
  WHEN 1 THEN '2'
  WHEN 2 THEN '3'
  WHEN 3 THEN '4'
  when 4 then "5"
END
WHERE id IN (1, 2, 3,4);

ALTER TABLE salary_data
drop column roll;

ALTER TABLE salary_data
 ADD CONSTRAINT PK_id PRIMARY KEY(ID);
 
-- Drop and recreate emp_data with matching names
DROP TABLE IF EXISTS emp_data;

CREATE TABLE emp_data (
  emp_name VARCHAR(34) PRIMARY KEY
);

INSERT INTO emp_data (emp_name)
VALUES ('vinit'), ('shubham'), ('utkarsha'), ('arjun');

DROP TABLE IF EXISTS com_data;

CREATE TABLE com_data (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  roll VARCHAR(255) NOT NULL,
  salary INT,
  CONSTRAINT fk_name FOREIGN KEY (name) REFERENCES emp_data(emp_name)
);

INSERT INTO com_data (id, name, roll, salary)
VALUES 
  (1, 'vinit', 'DA', 100000),
  (2, 'shubham', 'DA', 120000),
  (3, 'utkarsha', 'DA', 5000),
  (4, 'arjun', 'DA', 5000);
  



