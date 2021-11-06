-- 17. 统计各科成绩各分数段人数：课程编号，课程名称，[100-85]，[85-70]，[70-60]，[60-0] 及所占百分比
SELECT  CId
       ,COUNT(score)                        AS StudentCount
       ,SUM(if(score>=85,1,0))              AS score_85_100_StudentCount
       ,SUM(if(score>=70 AND score<85,1,0)) AS score_70_85_StudentCount
       ,SUM(if(score>=60 AND score<70,1,0)) AS score_60_70_StudentCount
       ,SUM(if(score<60,1,0))               AS score_0_60_StudentCount
       ,AVG(if(score>=85,1,0))              AS score_85_100_StudentRate
       ,AVG(if(score>=70 AND score<85,1,0)) AS score_70_85_StudentRate
       ,AVG(if(score>=60 AND score<70,1,0)) AS score_60_70_StudentRate
       ,AVG(if(score<60,1,0))               AS score_0_60_StudentRate
FROM SC
GROUP BY  CId
ORDER BY CId ;