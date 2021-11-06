/* 9. 查询和" 01 "号的同学学习的课程 完全相同的其他同学的信息 */
SELECT  Student.SId
       ,Student.Sname
       ,Student.Ssex
       ,Student.Sage
FROM Student
JOIN
(
	-- 3.查找与0001同学选课完全相同的学生ID
	SELECT  SId
	FROM
	(
		-- 1.拼接所有学生的课程ID
		SELECT  SId
		       ,group_concat(CId ORDER BY CId Separator ';') AS classGroup
		FROM SC
		GROUP BY  SId
	) allClass
	JOIN
	(
		-- 2.拼接0001同学的课程ID
		SELECT  group_concat(CId ORDER BY CId Separator ';') AS classGroup
		FROM SC
		WHERE SC.SId='0001'
		GROUP BY  SId
	) S01Class
	ON allClass.classGroup=S01Class.classGroup
	WHERE SId!='0001' 
) resId
ON resId.SId=Student.SId ;