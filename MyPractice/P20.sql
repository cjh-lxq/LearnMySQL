-- 20. 查询出只选修两门课程的学生学号和姓名
SELECT  Student.SId
       ,Student.Sname
       ,SC2.SelectClassCount
FROM Student
JOIN
(
	SELECT  SId
	       ,COUNT(score) AS SelectClassCount
	FROM SC
	GROUP BY  SId
) SC2
ON SC2.SId=Student.SId
WHERE SelectClassCount=2;