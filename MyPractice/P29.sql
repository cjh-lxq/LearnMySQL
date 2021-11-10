-- 29. 查询任何一门课程成绩在 70 分以上的姓名、课程名称和分数
SELECT  Student.Sname
       ,Course.Cname
       ,SC.score
FROM SC, Course, Student
WHERE SC.score>70
AND Course.CId=SC.CId
AND Student.SId=SC.SId;

SELECT  Student.Sname
       ,Course.Cname
       ,SC.score
FROM SC
JOIN Course
ON Course.CId=SC.CId
JOIN Student
ON SC.SId=Student.SId
WHERE SC.score>70; 