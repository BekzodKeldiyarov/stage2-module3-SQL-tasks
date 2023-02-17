select max(birthday) as birthday from student;
select min(payment_date) as payment_date from payment;
select avg(mark) as average_math from mark inner join subject on mark.subject_id = subject.id where subject.name='Math';
select min(amount) as minimum_weekly from payment inner join paymenttype on payment.type_id=paymenttype.id where paymenttype.name='WEEKLY';