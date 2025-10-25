USE mysql2025;

--内连接
SELECT student.studentno, sname, final
FROM student INNER JOIN score
ON student.studentno = score.studentno
WHERE score.courseno = 'C05138';

SELECT *
FROM student INNER JOIN score
ON student.studentno = score.studentno;

DESCRIBE score;

INSERT INTO score(studentno, courseno, daily, final)
VALUES('19135222201', 'c05138', 85, 90);

--外连接
--左外连接会保留左表的所有记录
SELECT student.studentno, sname, final
FROM student LEFT JOIN score
ON student.studentno = score.studentno;

--右外连接会保留右表的所有记录
SELECT student.studentno, sname, final
FROM student RIGHT JOIN score
ON student.studentno = score.studentno;

--交叉连接
--返回两个表的笛卡尔积，实际上用不到
SELECT student.studentno, sname, final
FROM student CROSS JOIN score
ON student.studentno = score.studentno;


--合并
SELECT studentno, sname, phone 
FROM student
WHERE phone LIKE '%131%'
UNION
SELECT studentno, sname, phone
FROM student
WHERE phone LIKE '%135%'

--子查询

