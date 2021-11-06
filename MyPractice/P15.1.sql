-- 15.1 按各科成绩进行排序，并显示排名， Score 重复时合并名次
SELECT  SId
       ,CId
       ,score
       ,dense_rank() over (partition by CId ORDER BY score desc) AS ranking
FROM SC
ORDER BY CId ASC, score DESC ;