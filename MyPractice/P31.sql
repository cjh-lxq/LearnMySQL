-- 31. 查询课程编号为 01 且课程成绩在 80 分以上的学生的学号和姓名
SELECT  Student.Sname
       ,Student.SId
       ,SC.score
FROM Student
JOIN SC
ON Student.SId=SC.SId
WHERE SC.score>80
AND SC.CID='02';