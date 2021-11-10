-- 28. 查询所有学生的课程及分数情况（存在学生没成绩，没选课的情况）

SELECT  Student.SId
       ,SC.CId
       ,SC.score
FROM Student
LEFT JOIN SC
ON Student.SId=SC.SId;