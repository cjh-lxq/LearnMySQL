-- 18. 查询各科成绩前三名的记录
SELECT  CId
       ,SId
       ,ScoreRank
       ,score
FROM
(
	SELECT  CId
	       ,SId
	       ,score
	       ,dense_rank() over (partition by CId ORDER BY score DESC) AS ScoreRank
	FROM SC
) SC2
WHERE ScoreRank<=3
ORDER BY CId asc, ScoreRank asc, SId ASC ;