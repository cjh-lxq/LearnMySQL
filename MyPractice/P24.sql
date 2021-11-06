-- 24. 查询 1990 年出生的学生名单
SELECT  *
FROM Student
WHERE Student.Sage<'1991-01-01'
AND Student.Sage>='1990-01-01';