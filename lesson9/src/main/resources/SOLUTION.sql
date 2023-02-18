select student.id, student.name, student.birthday, student.groupnumber from student inner join mark on student.id = mark.student_id group by student_id having avg(mark) > 8;

select student.id, student.name from student inner join mark on student.id = mark.student_id group by student.id having min(mark) > 7;

select s.id, s.name from student s inner join payment p on s.id = p.student_id where payment_date like '2019-%' group by p.student_id having count(student_id) > 2;
