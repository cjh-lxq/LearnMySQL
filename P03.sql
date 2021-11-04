/* 3. 查询在 SC 表存在成绩的学生信息 */
SELECT Student.SId,Student.Sname,Student.Ssex,Student.Sage
FROM Student
JOIN(
    SELECT distinct(SId)
    FROM SC
) A
ON Student.SId=A.SId