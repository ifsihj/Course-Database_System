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

--限制返回表的行数
SELECT studentno,sname, birthdate, phone
FROM student
ORDER BY entrance DESC
LIMIT 5;

SELECT studentno,sname, birthdate, phone
FROM student
ORDER BY entrance DESC
LIMIT 3,2; --从第4行开始，返回2行数据

SELECT COUNT(studentno) as '18级学生人数'
FROM student
WHERE SUBSTRING(studentno,1,2)='18';

SELECT COUNT(*)
FROM student;

SHOW TABLES;

DESC score;

INSERT INTO score VALUES
('18122221324','c05103',85,88),
('18122221324','c05109',78,80),
('18122221324','c05127',90,92),
('18125111109','c06108',82,84),
('18125111109','c06127',76,75),
('18125121107','c05103',89,90),
('18125121107','c05109',92,94),
('18135222201','c05127',85,87),
('18135222201','c05138',88,90),
('18137221508','c06108',80,82),
('19111133071','c05103',95,96),
('19111133071','c05138',90,92),
('18125111109','c05103',92,90),
('18125111109','c05127',75,78),
('18125121107','c05138',88,87),
('18135222201','c06108',90,91),
('18137221508','c06127',70,72),
('19111133071','c05109',95,97);



SELECT studentno 学号, SUM(final) 总分, avg(final) 平均分
FROM score
GROUP BY studentno
HAVING SUM(final) > 270
ORDER BY studentno;

SELECT MAX(final) 最高分, MIN(final) 最低分,
MAX(final) - MIN(final) as 分差
FROM score
WHERE courseno='c05103';

--WITH ROLLUP
SELECT courseno 课程号, AVG(final) 平均分
FROM score
GROUP BY courseno WITH ROLLUP; --多出一行，显示所有课程的平均分

SELECT courseno 课程号, AVG(final) 平均分
FROM score
GROUP BY courseno;



