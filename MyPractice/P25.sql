-- 25. 查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
SELECT  CId
       ,ScoreAvg
FROM
(
	SELECT  CId
	       ,AVG(Score) AS ScoreAvg
	FROM SC
	GROUP BY  CId
) SC2
ORDER BY ScoreAvg DESC, CId ASC;