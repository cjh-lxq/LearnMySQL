-- 40. 查询各学生的年龄，只按年份来算
SELECT  SId
       ,Year(NOW())-Year(Sage) AS fakeAge
FROM Student;
-- 以下草稿
SELECT  SId
       ,NOW()
       ,Sage
       ,TIMESTAMPDIFF(YEAR,Sage,NOW()) AS age
       ,TIMESTAMPDIFF(DAY,Sage,NOW())  AS age2
FROM Student;