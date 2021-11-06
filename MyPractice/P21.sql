-- 21. 查询男生、女生人数
SELECT  Ssex
       ,COUNT(Ssex)
FROM Student
GROUP BY  Ssex;