-- 统计每门课程的学生选修人数（超过 5 人的课程才统计）。
SELECT  *
FROM
(
	SELECT  CId
	       ,COUNT(CId) AS StudentCount
	FROM SC
	GROUP BY  CId
) SC2
WHERE StudentCount>5; 