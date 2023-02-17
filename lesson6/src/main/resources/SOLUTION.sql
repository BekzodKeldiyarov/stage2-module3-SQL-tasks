select * from payment inner join paymenttype on payment.type_id = paymenttype.id
where name='MONTHLY';

select * from mark inner join subject on mark.subject_id = subject.id
where subject.name='Art';

select * from (student inner join payment on student.id=payment.student_id
    inner join paymenttype on payment.type_id=paymenttype.id)
where paymenttype.name='WEEKLY';

select * from student inner join mark on student.id=mark.student_id
                      inner join subject on mark.subject_id=subject.id
where subject.name='Math';