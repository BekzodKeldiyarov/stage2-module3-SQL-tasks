
select * from mark where mark.mark>6 order by mark desc;

select * from payment where amount<300 order by amount asc;

select * from paymenttype order by name;

select * from student order by name desc;

select distinct student.id, name, birthday, groupnumber from student inner join payment on student.id = payment.student_id where payment.amount>1000 order by student.birthday asc;
