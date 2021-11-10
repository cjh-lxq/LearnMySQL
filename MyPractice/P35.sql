-- 35. 查询不同课程成绩相同的学生的学生编号、课程编号、学生成绩

SELECT  sc1.SId
       ,sc1.CId as class1
       ,sc2.CId as class2
       ,sc2.score
FROM SC AS sc1
INNER JOIN SC AS sc2
ON sc1.score=sc2.score 
AND sc1.SId=sc2.SId 
AND sc1.CId !=sc2.CId ;

SELECT  *
FROM SC AS t1
WHERE exists(
       SELECT  *
       FROM SC AS t2
       WHERE t1.SId=t2.SId
       AND t1.CId!=t2.CId
       AND t1.score =t2.score 
       );

-- EXISTS用于检查子查询是否至少会返回一行数据，该子查询实际上并不返回任何数据，而是返回值True或False
-- EXISTS 指定一个子查询，检测 行 的存在。

-- 语法： EXISTS subquery
-- 参数： subquery 是一个受限的 SELECT 语句 (不允许有 COMPUTE 子句和 INTO 关键字)。
-- 结果类型： Boolean 如果子查询包含行，则返回 TRUE ，否则返回 FLASE 。