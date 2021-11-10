-- 43. 查询下周过生日的学生

SELECT  *
FROM Student
WHERE YEARWEEK(DATE_ADD(DATE_SUB(Sage, INTERVAL 1 WEEK), INTERVAL year(NOW())-year(Sage) year), 1)=YEARWEEK(NOW(), 1); 

-- 草稿

SELECT 
Sage,
year(NOW())-year(Sage),  -- 出生经过的自然年
DATE_SUB(Sage,INTERVAL 1 WEEK), -- 生日向前推一个星期
DATE_ADD(DATE_SUB(Sage,INTERVAL 1 WEEK),INTERVAL year(NOW())-year(Sage) year), --生日向前退一个星期再加上经过的自然年
YEARWEEK(DATE_ADD(DATE_SUB(Sage,INTERVAL 1 WEEK),INTERVAL year(NOW())-year(Sage) year),1) -- 生日向前退一个星期再加上经过的自然年后是第几个星期过生日=下周过生日
FROM Student;

