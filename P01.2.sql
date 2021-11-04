-- 1.2 查询存在" 01 "课程但可能不存在" 02 "课程的情况(不存在时显示为 null )

SELECT *
FROM (
	SELECT *
	FROM SC
	WHERE SC.CId='01'
) as t1
left JOIN (
	SELECT *
	FROM SC
	WHERE SC.CId='02'
) as t2
ON t1.SId=t2.SId
