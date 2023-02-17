
insert into STUDENT(name, birthday, groupnumber) values ('John', '1974-03-09', 1);
insert into STUDENT(name, birthday, groupnumber) values ('Chris', '1974-03-09', 1);
insert into STUDENT(name, birthday, groupnumber) values ('Carl', '1974-03-09', 1);
insert into STUDENT(name, birthday, groupnumber) values ('Oliver', '1974-03-09', 2);
insert into STUDENT(name, birthday, groupnumber) values ('James', '1974-03-09', 2);
insert into STUDENT(name, birthday, groupnumber) values ('Lucas', '1974-03-09', 2);
insert into STUDENT(name, birthday, groupnumber) values ('Henry', '1974-03-09', 2);
insert into STUDENT(name, birthday, groupnumber) values ('Jacob', '1974-03-09', 3);
insert into STUDENT(name, birthday, groupnumber) values ('Logan', '1974-03-09', 3);
insert into STUDENT(name, birthday, groupnumber) values ('Mike', '1974-03-09', 4);
insert into STUDENT(name, birthday, groupnumber) values ('Jessey', '1974-03-09', 4);
insert into STUDENT(name, birthday, groupnumber) values ('Pinkman', '1974-03-09', 5);
insert into STUDENT(name, birthday, groupnumber) values ('Floyd', '1974-03-09', 5);


insert into SUBJECT(name, grade) values ('Art', 1);
insert into SUBJECT(name, grade) values ('Music', 1);
insert into SUBJECT(name, grade) values ('Geography', 2);
insert into SUBJECT(name, grade) values ('History', 2);
insert into SUBJECT(name, grade) values ('PE', 3);
insert into SUBJECT(name, grade) values ('Math', 3);
insert into SUBJECT(name, grade) values ('Science', 4);
insert into SUBJECT(name, grade) values ('IT', 4);
insert into SUBJECT(name, grade) values ('AI', 5);
insert into SUBJECT(name, grade) values ('BDA', 5);

insert into PAYMENTTYPE(name, payment_date) values ('DAILY', '2020-07-02 17:45:36');
insert into PAYMENTTYPE(name, payment_date) values ('WEEKLY', '2020-07-02 17:45:36');
insert into PAYMENTTYPE(name, payment_date) values ('MONTHLY', '2020-07-02 17:45:36');

insert into PAYMENT(type_id, student_id, amount) values ((select id from PAYMENTTYPE where name = 'WEEKLY'), (select id from STUDENT where name = 'John'), 300);
insert into PAYMENT(type_id, student_id, amount) values ((select id from PAYMENTTYPE where name = 'MONTHLY'), (select id from STUDENT where name = 'Oliver'), 300);
insert into PAYMENT(type_id, student_id, amount) values ((select id from PAYMENTTYPE where name = 'WEEKLY'), (select id from STUDENT where name = 'Henry'), 300);
insert into PAYMENT(type_id, student_id, amount) values ((select id from PAYMENTTYPE where name = 'DAILY'), (select id from STUDENT where name = 'James'), 300);


insert into MARK(student_id, subject_id, mark) values ((select id from STUDENT where name = 'Chris'), (select id from SUBJECT where name = 'Art'), 8);
insert into MARK(student_id, subject_id, mark) values ((select id from STUDENT where name = 'Oliver'),(select id from SUBJECT where name = 'History'),5);
insert into MARK(student_id, subject_id, mark) values ((select id from STUDENT where name = 'James'), (select id from SUBJECT where name = 'Geography'), 9);
insert into MARK(student_id, subject_id, mark) values ((select id from STUDENT where name = 'Jacob'), (select id from SUBJECT where name = 'Math'), 4);
insert into MARK(student_id, subject_id, mark) values ((select id from STUDENT where name = 'Logan'), (select id from SUBJECT where name = 'PE'), 9);
