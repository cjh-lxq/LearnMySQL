-- 27. 查询课程名称为「数学」，且分数低于 60 的学生姓名和分数 select
SELECT Student.SId, Student.Sname, SC2.score
FROM Student
JOIN
(
	SELECT  SC.SId
	       ,SC.score
	FROM SC
	JOIN
	(
		SELECT  CId
		FROM Course
		WHERE Cname="数学" 
	) Course2
	ON Course2.CId=SC.CId
	WHERE SC.score<60 
) SC2
ON SC2.SId=Student.SId;