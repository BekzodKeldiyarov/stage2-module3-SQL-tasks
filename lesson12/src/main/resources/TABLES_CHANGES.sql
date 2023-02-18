alter table mark drop foreign key mark_ibfk_1;
alter table mark drop foreign key mark_ibfk_2;
alter table mark add foreign key (student_id) references student(id) on DELETE CASCADE;
alter table mark add foreign key (subject_id) references subject(id) on DELETE CASCADE;

alter table payment drop foreign key payment_ibfk_1;
alter table payment drop foreign key payment_ibfk_2;
alter table payment add foreign key (student_id) references student(id) on DELETE CASCADE;
alter table payment add foreign key (type_id) references paymenttype(id) on DELETE CASCADE;