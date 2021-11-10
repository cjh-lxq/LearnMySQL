-- 44. 查询本月过生日的学生
SELECT  *
FROM Student
WHERE DATE_FORMAT(Sage, "%m")=DATE_FORMAT(NOW(), "%m") ;
