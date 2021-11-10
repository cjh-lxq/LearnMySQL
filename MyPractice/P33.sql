-- 33. 成绩不重复，查询选修「张三」老师所授课程的学生中，成绩最高的学生信息及其成绩
SELECT  *
FROM
(
	SELECT  Course.CId
	       ,Student.Sname
	       ,SC.SId
	       ,SC.score
	       ,rank() over (partition by CId ORDER BY SC.score DESC) AS scoreRank
	FROM Course
	JOIN Teacher
	ON Teacher.TId=Course.TId
	JOIN SC
	ON SC.CId=Course.CId
	JOIN Student
	ON Student.SId=SC.SId
	WHERE Teacher.Tname='语文老师' 
) res
WHERE scoreRank=1 ; 