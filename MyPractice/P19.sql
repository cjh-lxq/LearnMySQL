-- 19. 查询每门课程被选修的学生数
SELECT  CId
       ,COUNT(score) AS StudentCount
FROM SC
GROUP BY  CId
ORDER BY CId asc;