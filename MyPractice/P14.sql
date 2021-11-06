-- 14. 查询各科成绩最高分、最低分和平均分：
-- 以如下形式显示：课程 ID，课程 name，最高分，最低分，平均分，及格率，中等率，优良率，优秀率
-- 及格为>=60，中等为：70-80，优良为：80-90，优秀为：>=90
-- 要求输出课程号和选修人数，查询结果按人数降序排列，若人数相同，按课程号升序排列


SELECT 
CId,
Cname,
MAX(score) as MaxScore,
MIN(score) as MinSCore,
avg(score) as AvgScore,
AVG(IF(score>=60,1,0)) as passingRate,
AVG(if(score>=60 and score<70,1,0)) as level0Rate,
AVG(if(score>=70 and score<80,1,0)) as level1Rate,
AVG(if(score>=80 and score<90,1,0)) as level2Rate,
AVG(if(score>=90,1,0)) as level3Rate,
COUNT(score) as StudentCount
FROM(
    SELECT SC.CId,SC.score,Course.Cname
    FROM SC
    JOIN Course
    ON Course.CId=SC.CId
) as SCRes
GROUP BY CId,Cname
ORDER BY StudentCount desc,CId ASC
;

-- 下方草稿纸
SELECT CId,AVG(IF(score>=60,1,0))
FROM SC
GROUP BY CId
;