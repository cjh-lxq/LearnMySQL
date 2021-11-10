-- 32. 求每门课程的学生人数
SELECT  CId
       ,COUNT(score) AS StudentCount
FROM SC
GROUP BY  CId
ORDER BY CId;