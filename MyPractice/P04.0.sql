/* 4. 查询所有同学的学生编号、学生姓名、选课总数、所有课程的总成绩(没成绩的显示为 null ) */
SELECT SId,Sname,COUNT(score) as classCount,SUM(score) as scoreSum,AVG(score) as scoreAvg
FROM(
    select Student.SId,Student.Sname,SC.score
    FROM Student
    JOIN SC
    ON Student.SId=SC.SId
) res
GROUP BY SId,Sname