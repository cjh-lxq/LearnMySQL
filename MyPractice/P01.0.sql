-- 1. 查询" 01 "课程比" 02 "课程成绩高的学生的信息及课程分数
SELECT *
FROM Student
JOIN (
	SELECT t1.SId,t1.CId,t1.score as class01Score,t2.score as class02Score
	FROM (
		SELECT *
		FROM SC
		WHERE SC.CId='01'
	) as t1
	JOIN (
		SELECT *
		FROM SC
		WHERE SC.CId='02'
	) as t2
	ON t1.SId=t2.SId AND t1.score>t2.score
) as classRes
ON Student.SId=classRes.SId



