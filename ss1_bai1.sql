create database if not exists student_manergerment;
use student_manergerment;
create table student(
id int,
fullName varchar(50),
age int,
contry varchar(50)
);
create table class(
id int,
`name` varchar(50)
);
create table teacher(
id int,
`name` varchar(50),
age int,
country varchar(50)
);