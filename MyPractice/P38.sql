-- 38. 检索至少选修两门课程的学生学号

SELECT  *
FROM
(
	SELECT  SId
	       ,COUNT(SId) AS ClassCount
	FROM SC
	GROUP BY  SId
) SC2
WHERE ClassCount>=2;

