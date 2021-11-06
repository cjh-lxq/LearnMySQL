-- 26. 查询平均成绩大于等于 85 的所有学生的学号、姓名和平均成绩
SELECT  Student.Sname
       ,Student.SId
       ,SC2.ScoreAvg
FROM
(
	SELECT  SId
	       ,AVG(score) AS ScoreAvg
	FROM SC
	GROUP BY  SId
) SC2
JOIN Student
ON SC2.SID=Student.SId
WHERE SC2.ScoreAvg>=85; 