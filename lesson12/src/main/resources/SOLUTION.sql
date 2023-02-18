delete s from student s inner join mark m on s.id = m.student_id inner join subject s2 on m.subject_id = s2.id where s2.grade>=4;
delete s from student s inner join mark m on s.id = m.student_id where m.mark<4;
delete from paymenttype where name='DAILY';
delete from mark where mark<7;