/* 5. 查询「李」姓老师的数量 */
SELECT count(TId) as 李老师数量
FROM Teacher
WHERE Tname LIKE '%数学%'
GROUP BY Tname