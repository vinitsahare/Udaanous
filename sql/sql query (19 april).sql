use udaanous;

select * from enrollments_data;
select * from student_information;
select * from courses_data;

select count(company),company
from sales_dataset
group by company
having count(*);
 
select c.*
from courses_data as c
WHERE EXISTS (SELECT `Course ID` FROM enrollments_data WHERE c.`Course ID` = enrollments_data.`Course ID` and credits = 5 );

SELECT Student_ID , First_Name  
FROM student_information as s
where age =  ANY (SELECT 5 FROM enrollments_data as e WHERE e.`Student ID` = s.Student_ID and grade = "A" );
 
 ------------------------------------------------------------------------------------------------------------------------
 
use udaanous;

CREATE TABLE student_info (
    StudentID INT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50)
);
 
-- Insert 10 values for each variable
INSERT INTO student_info (StudentID, FirstNames, LastNames) VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Bob', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'Michael', 'Davis'),
(6, 'Sarah', 'Wilson'),
(7, 'David', 'Lee'),
(8, 'Jessica', 'Taylor'),
(9, 'Chris', 'Evans'),
(10, 'Emma', 'Thompson');



-- Create the table
CREATE TABLE exam_info (
    StudentID INT PRIMARY KEY,
    Subjects VARCHAR(50),
    Scores integer
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info (StudentID, Subjects, Scores) VALUES
(1, 'Math',  80),
(2, 'English',  75),
(3, 'Science',  78),
(4, 'Math',  60),
(5, 'English', 86),
(6, 'Science', 90),
(7, 'Science', 75),
(8, 'English', 75),
(9, 'Math',  55),
(10, 'Math',  67);


SELECT s.*
FROM student_info as s
JOIN exam_info as e ON s.StudentID = e.StudentID
WHERE e.Scores > any ( select 3 from exam_info as e where s.StudentID = e.StudentID and scores > 75 );

