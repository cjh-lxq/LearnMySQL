-- 45. 查询下月过生日的学生

SELECT  *
FROM Student
WHERE DATE_FORMAT(DATE_SUB(Sage, INTERVAL 1 MONTH), "%m")=DATE_FORMAT(NOW(), "%m") ; 
-- 草稿
SELECT
Sage,
DATE_SUB(Sage,INTERVAL 1 MONTH),
DATE_FORMAT(DATE_SUB(Sage,INTERVAL 1 MONTH),"%m")
FROM Student;