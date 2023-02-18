select * from payment where amount >= 500;
select * from student where DATEADD(YEAR, -20, CURRENT_DATE)>=birthday;
select * from student where DATEADD(YEAR, -20, CURRENT_DATE)<= birthday and groupnumber = 10;
select * from student where name like '%Mike%' or groupnumber in (4, 5, 6);
select * from payment where FORMATDATETIME(DATEADD(MONTH, -8, CURRENT_DATE), 'yyyy-mm-dd') <= FORMATDATETIME(payment_date, 'yyyy-mm-dd');
select * from student where name like 'A%';
select * from student where ((name like 'Roxi%' and groupnumber = 4) or (name like 'Tallie%' and groupnumber = 9));