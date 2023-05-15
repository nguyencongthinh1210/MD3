USE QuanLySinhVien;
select * from student where StudentName like 'h%';
select * from class where StartDate like '%12%';
select * from `subject` where Credit <=5 and Credit>=3;
update student
set ClassId= 2
where StudentName= 'Hung';
select StudentName,SubName,Mark from student,`subject`,mark
order by Mark DESC, StudentName asc;