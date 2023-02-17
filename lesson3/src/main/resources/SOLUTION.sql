alter table STUDENT
    modify column birthday date not null;


alter table MARK
    modify column mark int,
    modify column student_id bigint not null,
    modify column subject_id bigint not null,
    add constraint CH_MARK
    check ( mark >= 1 and mark <= 10 );

alter table SUBJECT
    add constraint CH_GRADE check ( grade >= 1 and grade <= 5 );

alter table PAYMENTTYPE
    modify column name varchar(255) unique;

alter table PAYMENT
    modify column type_id bigint not null,
    modify column amount decimal not null,
    modify column payment_date datetime not null;