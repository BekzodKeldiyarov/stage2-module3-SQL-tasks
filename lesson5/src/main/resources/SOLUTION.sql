select * from payment where amount >= 500;

select * from student where DATE_ADD(NOW(), INTERVAL -20 YEAR) >= birthday;

select * from student where DATE_ADD(NOW(), INTERVAL -20 YEAR) <= birthday and groupnumber = 10;

select * from student where name like '%Mike%' or groupnumber in (4, 5, 6);

select * from payment where DATE_ADD(NOW(), INTERVAL -8 MONTH) <= DATE_FORMAT(payment_date, '%Y-%m-%d');

select * from student where name like 'A%';

select * from student where ((name like 'Roxi%' and groupnumber = 4) or (name like 'Tallie%' and groupnumber = 9));