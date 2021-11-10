-- 36. 查询每门功成绩最好的前两名
SELECT  *
FROM
(
	SELECT  SId
	       ,CId
	       ,score
	       ,rank() over (partition by CId ORDER BY score desc) AS ClassRank
	FROM SC
) SC2
WHERE ClassRank<=2 ;