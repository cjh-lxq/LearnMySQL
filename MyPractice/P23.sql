-- 23. 查询同名同性学生名单，并统计同名人数
-- 此题需使用原始数据集
SELECT  *
FROM
(
	SELECT  Sname
	       ,group_concat(SId ORDER BY SId Separator ',') AS SameNameSids
	       ,COUNT(Sname)                                 AS SameNameCount
	FROM Student
	GROUP BY  Sname
) S1
WHERE SameNameCount>1;