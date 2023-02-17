
insert into STUDENT(name)
values ('John');
insert into STUDENT(name)
values ('Chris');
insert into STUDENT(name)
values ('Carl');
insert into STUDENT(name)
values ('Oliver');
insert into STUDENT(name)
values ('James');
insert into STUDENT(name)
values ('Lucas');
insert into STUDENT(name)
values ('Henry');
insert into STUDENT(name)
values ('Jacob');
insert into STUDENT(name)
values ('Logan');
insert into STUDENT(name)
values ('Mike');
insert into STUDENT(name)
values ('Jessey');
insert into STUDENT(name)
values ('Pinkman');
insert into STUDENT(name)
values ('Floyd');


insert into SUBJECT(name, grade)
values ('Art', 1);
insert into SUBJECT(name, grade)
values ('Music', 1);
insert into SUBJECT(name, grade)
values ('Geography', 2);
insert into SUBJECT(name, grade)
values ('History', 2);
insert into SUBJECT(name, grade)
values ('PE', 3);
insert into SUBJECT(name, grade)
values ('Math', 3);
insert into SUBJECT(name, grade)
values ('Science', 4);
insert into SUBJECT(name, grade)
values ('IT', 4);
insert into SUBJECT(name, grade)
values ('AI', 5);
insert into SUBJECT(name, grade)
values ('BDA', 5);

insert into PAYMENTTYPE(name)
values ('DAILY');
insert into PAYMENTTYPE(name)
values ('WEEKLY');
insert into PAYMENTTYPE(name)
values ('MONTHLY');

insert into PAYMENT(type_id, student_id)
values ((select id from PAYMENTTYPE where name = 'Weekly'),
        (select id from STUDENT where name = 'John'));
insert into PAYMENT(type_id, student_id)
values ((select id from PAYMENTTYPE where name = 'Monthly'),
        (select id from STUDENT where name = 'Oliver'));
insert into PAYMENT(type_id, student_id)
values ((select id from PAYMENTTYPE where name = 'Weekly'),
        (select id from STUDENT where name = 'Henry'));
insert into PAYMENT(type_id, student_id)
values ((select id from PAYMENTTYPE where name = 'Daily'),
        (select id from STUDENT where name = 'James'));


insert into MARK(student_id, subject_id, mark)
values ((select id from STUDENT where name = 'Chris'),
        (select id from SUBJECT where name = 'Art'),
        8);
insert into MARK(student_id, subject_id, mark)
values ((select id from STUDENT where name = 'Oliver'),
        (select id from SUBJECT where name = 'History'),
        5);
insert into MARK(student_id, subject_id, mark)
values ((select id from STUDENT where name = 'James'),
        (select id from SUBJECT where name = 'Geography'),
        9);
insert into MARK(student_id, subject_id, mark)
values ((select id from STUDENT where name = 'Jacob'),
        (select id from SUBJECT where name = 'Math'),
        4);
insert into MARK(student_id, subject_id, mark)
values ((select id from STUDENT where name = 'Logan'),
        (select id from SUBJECT where name = 'PE'),
        9);
v