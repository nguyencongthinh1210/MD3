use quanglysinhvien;
select * from `subject` where Credit= ( select max(Credit) from `subject`);
select s.* from `subject` s
join mark m on s.SubId = m.SubId
where Mark = (select max(Mark) from mark);
SELECT s.*, c.ClassName, AVG(Mark) as 'điểm trung bình'
FROM student s
JOIN `class`c on s.ClassId = c.ClassID
JOIN mark m on s.StudentId = m.StudentId
GROUP BY s.StudentId
ORDER BY AVG(Mark) DESC;