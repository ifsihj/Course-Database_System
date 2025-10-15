USE mysql2025;

SELECT studentno, sname
FROM student;

SELECT sname, studentno, email
FROM student;

SELECT *
FROM student;

--字段运算
SELECT sname,entrance-20
FROM student;

--字段别名
SELECT sname NAME, birthdate BIRTH FROM student;

--去重
SELECT ALL type FROM course;
SELECT DISTINCT type FROM course;

DESCRIBE course;

--筛选
SELECT sname
FROM student
WHERE sex='男';

SELECT DISTINCT studentno
FROM score
WHERE final < 60;

SELECT sname, 2025-year(birthdate) age
FROM student    
WHERE 2025-year(birthdate) < 25;

SELECT sname, sex, 2025-year(birthdate) age
FROM student    
WHERE 2025-year(birthdate) BETWEEN 20 AND 25;

SELECT *
FROM student
WHERE studentno LIKE '191%'

SELECT sname
FROM student
WHERE sname LIKE '何%';

SELECT studentno 学号, sname 姓名, entrance 入学年份
FROM student
WHERE entrance > 850
ORDER BY entrance DESC;

