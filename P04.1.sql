/* 4.1 查有成绩的学生信息 */
SELECT SId,Sname
FROM(
    select Student.SId,Student.Sname,SC.score
    FROM Student
    JOIN SC
    ON Student.SId=SC.SId
) res
GROUP BY SId,Sname