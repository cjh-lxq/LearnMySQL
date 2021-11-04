-- 2. 查询平均成绩大于等于 60 分的同学的学生编号和学生姓名和平均成绩
SELECT * 
FROM(
    SELECT SId,Sname,AVG(score) as scoreAvg
    FROM(
        select Student.SId,Student.Sname,SC.score
        FROM Student
        JOIN SC
        ON Student.SId=SC.SId
    ) res
    GROUP BY SId,Sname
) res
WHERE res.scoreAvg>=60;


