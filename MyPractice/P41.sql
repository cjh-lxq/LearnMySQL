-- 41. 按照出生日期来算，当前月日 < 出生年月的月日则，年龄减一
SELECT  SId
       ,TIMESTAMPDIFF(YEAR,Sage,NOW()) AS age
FROM Student;