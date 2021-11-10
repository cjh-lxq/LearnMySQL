-- 42. 查询本周过生日的学生
-- 思路:
-- 1.先查学生过了多少个自然年 year(curdate()) - year(Sage)
-- 2.再算今年的生日是几号 DATE_ADD(Sage, INTERVAL year(curdate()) - year(Sage) year)
-- 3.再算今年生日在今年的第几个星期，注意以周一为一周的开始，默认是周日 YEARWEEK(DATE_ADD(Sage, INTERVAL year(curdate()) - year(Sage) year), 1)
-- 4.算哪些人生日在今年的第几个星期是否等于今天在今年的第几个星期 YEARWEEK(DATE_ADD(Sage, INTERVAL year(curdate()) - year(Sage) year), 1)=YEARWEEK(NOW(), 1)
SELECT  *
FROM Student
WHERE YEARWEEK( DATE_ADD( Sage, INTERVAL year( curdate()) - year(Sage) year ), 1 )=YEARWEEK( NOW(), 1 ) ;


-- 错误答案，下面找的是出生当年第n周出生的学生在今年第n周过生日的，不是本周过生日的
SELECT  *
FROM Student
WHERE SubString(YEARWEEK(Sage), 5, 2)=SubString(YEARWEEK(NOW()), 5, 2) ;







-- 以下草稿

SET @nowYear=(
SELECT  concat(YEAR(NOW()),'-01-01'));

SELECT  @nowYear;

SELECT  concat(YEAR(NOW()),'-01-01');

SELECT  TIMESTAMPDIFF(DAY,Sage,NOW()) AS age2
       ,TIMESTAMPDIFF(DAY,Sage,@nowYear)
       ,DATE_ADD(Sage,INTERVAL TIMESTAMPDIFF(DAY,Sage,@nowYear) DAY)
FROM Student ;

SELECT  SId
       ,NOW()
       ,Sage
       ,TIMESTAMPDIFF(YEAR,Sage,NOW()) AS age
       ,TIMESTAMPDIFF(DAY,Sage,NOW())  AS age2
FROM Student;

SELECT  DATEDIFF(CURDATE(),ADDDATE(Sage,INTERVAL year(curdate()) - year(Sage) year)) diff
       ,ADDDATE(Sage,INTERVAL year(curdate()) - year(Sage) year)
       ,Sage
FROM Student;