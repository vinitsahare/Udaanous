create database udaanous;

use udaanous;

select * from student_information;

select student_id,first_name,last_name,age from student_information;

select distinct student_id ,first_name,last_name,age from student_information;

select student_id as id  from student_information as id;

select s1.student_id, s2.age, s3.department from student_information as s1 , 
student_information as s2, student_information as s3;

select * from student_information where age = 18;

select * from student_information where age < 24;

select * from student_information where age > 18;

select t1.`Course ID`, t2.`Enrollment ID`,t3.Last_Name from courses_data as t1 ,enrollments_data as t2,
student_information as t3;

select courses_data.`Course Name`, courses_data.`Course ID`,enrollments_data.Semester,enrollments_data.`Student ID` from courses_data 
inner join enrollments_data 
on courses_data.`Course ID`=enrollments_data.`Course ID`;