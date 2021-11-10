-- 39. 查询选修了全部课程的学生信息

SET @allClassCount=(SELECT count(1) FROM Course);

SELECT @allClassCount;

SELECT  *
FROM
(
	SELECT  SId
	       ,COUNT(SId) AS ClassCount
	FROM SC
	GROUP BY  SId
) SC2
WHERE ClassCount=@allClassCount;