-- 13. 按平均成绩从高到低显示所有学生的所有课程的成绩以及平均成绩

SELECT SC.SId,SC.score,AvgSC.scoreAvg
FROM(
    SELECT SId,AVG(score) as scoreAvg
    FROM SC
    GROUP BY SId
) AvgSC
JOIN SC
ON SC.SId=AvgSC.SId
-- 先根据平均分降序，平均分一样的根据分数来降序
ORDER BY  AvgSC.scoreAvg DESC,SC.score DESC
;