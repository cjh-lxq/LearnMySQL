-- 12. 检索" 01 "课程分数小于 60，按分数降序排列的学生信息

SELECT Student.SId,Student.Sname,Student.Ssex,Student.Sage,failStudent.score
FROM Student
JOIN(
    SELECT SId,score
    FROM SC
    WHERE score<60 and CId='01'
) failStudent
ON failStudent.SId=Student.SId
ORDER BY failStudent.score DESC
;