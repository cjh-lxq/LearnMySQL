-- 16. 查询学生的总成绩，并进行排名，总分重复时保留名次空缺
SELECT  SId
       ,SumScore
       ,rank() over (ORDER BY SumScore desc) AS SumScoreRank
FROM
(
	SELECT  SId
	       ,SUM(score) AS SumScore
	FROM SC
	GROUP BY  SId
) SCSum
ORDER BY SumScore desc ;