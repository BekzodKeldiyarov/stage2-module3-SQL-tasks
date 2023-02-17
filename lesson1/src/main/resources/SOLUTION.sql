CREATE TABLE STUDENT
(
    id       bigint primary key,
    `name`   VARCHAR(255),
    birthday date,
    `group`  int
);

create table SUBJECT
(
    id          bigint primary key,
    `name`      varchar(255),
    description varchar(255),
    grade       int
);

create table PAYMENTTYPE
(
    id   bigint primary key,
    name varchar(255)
);

create table PAYMENT
(
    id           bigint primary key,
    type_id      bigint,
    amount       decimal,
    student_id   bigint,
    payment_date datetime,
    foreign key (student_id) references STUDENT (id),
    foreign key (type_id) references PAYMENTTYPE (id)
);

create table MARK
(
    id         bigint primary key,
    student_id bigint,
    subject_id bigint,
    mark       int,
    foreign key (student_id) references STUDENT (id),
    foreign key (subject_id) references SUBJECT (id)
);