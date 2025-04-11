use udaanous;

select * from salary_data;

CREATE TABLE Employiess_Data (
    Id INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Salary INT NOT NULL
);

INSERT INTO Employiess_Data (Id, Name, Department, Salary)
VALUES 
    (1, 'vinit', 'DA', 20000),
    (2, 'shubham', 'DA', 25000),
    (3, 'utkarsha', 'Frontend', 25000),
    (4, 'arjun', 'Backend', 40000);
    
create index floor_index
on salary_data (floor);

select * from salary_data
where floor = 2;

create unique index id_index
on salary_data(id);

ALTER TABLE salary_data
drop index floor_index;

alter table salary_data
drop index id_index;

SELECT name
 FROM salary_data
 WHERE Name IS NULL;

SELECT name
 FROM salary_data
 WHERE Name IS NOT NULL;
