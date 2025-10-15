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

--插入数据
--INSERT在主键冲突时默认报错
INSERT INTO student VALUES
('18122221324','何白露',
 '女','2000/12/4','879','13178978999','heyy@sina.com'),
 ('18125111109','敬横江',
 '男','2000/3/1','789',' 15678945623','jing@sina.com'),
 ('18125121107','梁一苇',
 '女','1999/9/3','777',' 13145678921','bing@126.com'),
 ('18135222201','凌浩风',
 '女','2001/10/6','867','15978945645','tang@163.com'),
 ('18137221508','赵临江',
 '男','2000/2/13','789','12367823453','ping@163.com'),
 ('19111133071','崔依歌',
 '女','2001/6/6','787',' 15556845645','cui@126.com');

--REPLACE在主键冲突时删除旧记录，插入新记录
REPLACE INTO course VALUES
 ('c05103','电子技术','必修','64','16','2'),
 ('c05109','C语言','必修','48','16','2'),
 ('c05127','数据结构','必修','64','16','2'),
 ('c05138','软件工程','选修','48','8','5'),
 ('c06108','机械制图','必修','60','8','2'),
 ('c06127','机械设计','必修','64','8','3'),
 ('c06172','铸造工艺','选修','42', '16','6'),
 ('c08171','会计软件','选修','32','8','8');




