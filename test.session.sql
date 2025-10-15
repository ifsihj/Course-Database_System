USE mysql2025;

--表的各种操作
SHOW TABLES;

CREATE TABLE sc(
    sc_no INT(6) not null auto_increment,
    studentno CHAR(11) not null,
    courseno CHAR(6) not null,
    teacherno CHAR(6) not null,
    sc_time timestamp not null default now(),
    primary key(sc_no)
);

DESCRIBE sc;

SHOW CREATE TABLE sc;

DESCRIBE student;

ALTER TABLE student ADD address VARCHAR(30) not null after email;

DESCRIBE student;

ALTER TABLE sc RENAME  to se_course;

SHOW TABLES;

DESCRIBE course;

ALTER TABLE course  MODIFY type enum('必修','选修') default '必修' ;

DESCRIBE course;

ALTER TABLE student DROP address;

DESCRIBE student;

CREATE TABLE example(
    today datetime,
    name char(20)
);

SHOW TABLES;

DROP TABLE example;

SHOW TABLES;

CREATE TEMPORARY TABLE tmp_emp1(
    name varchar(10) not null,
    value integer not null
);

--建立索引
CREATE UNIQUE INDEX stusno ON student(studentno ASC);

ALTER TABLE student RENAME INDEX stusno TO stusnono;

DROP INDEX stusnono ON student;

