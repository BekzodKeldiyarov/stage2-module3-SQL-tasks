select *
from payment
         inner join paymenttype p on payment.type_id = p.id
where p.name = 'MONTHLY';

select *
from mark
         inner join subject s on mark.subject_id = s.id
where s.name = 'Art';

select distinct(s.id), s.name, s.birthday, s.groupnumber
from student s
         inner join payment p on s.id = p.student_id
         inner join paymenttype p2 on p.type_id = p2.id
where p2.name = 'WEEKLY'
order by s.id;


select *
from student
         inner join mark m on student.id = m.student_id
         inner join subject s on m.subject_id = s.id
where s.name = 'Math';
