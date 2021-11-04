-- 1.1 查询同时存在" 01 "课程和" 02 "课程的情
SELECT Student.SId,Student.Sname
FROM Student
JOIN (
	SELECT t1.SId,t1.CId,t1.score
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
	ON t1.SId=t2.SId
) as classRes
ON Student.SId=classRes.SId

