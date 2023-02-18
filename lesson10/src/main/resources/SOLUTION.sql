select s.id, s.name, s.description, s.grade from mark m inner join subject s on m.subject_id = s.id group by m.subject_id having avg(m.mark) > (select avg(mark) from mark);
select s.id, s.name, s.groupnumber from student s inner join payment p on s.id = p.student_id group by s.id having sum(p.amount) < (select avg(amount) from payment);
