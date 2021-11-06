-- 15. 按各科成绩进行排序，并显示排名， Score 重复时保留名次空缺
SELECT 
SId,
CId,
score,
rank() over (partition by CId ORDER BY score desc) as ranking
FROM SC
ORDER BY CId ASC,score DESC
;

-- 下方草稿纸
select *,
   rank() over (partition by CId
                 order by score desc) as ranking
from SC;


SELECT*,
rank() over ( PARTITION BY CId ORDER BY score DESC)  AS ranking  
FROM SC; 
-- rank函数：这个例子中是5位，5位，5位，8位，也就是如果有并列名次的行，会占用下一名次的位置。比如正常排名是1，2，3，4，但是现在前3名是并列的名次，结果是：1，1，1，4。
-- dense_rank函数：这个例子中是5位，5位，5位，6位，也就是如果有并列名次的行，不占用下一名次的位置。比如正常排名是1，2，3，4，但是现在前3名是并列的名次，结果是：1，1，1，2。
-- row_number函数：这个例子中是5位，6位，7位，8位，也就是不考虑并列名次的情况。比如前3名是并列的名次，排名是正常的1，2，3，4。