/* 10. 查询没学过"张三"老师讲授的任一门课程的学生姓名 */

SET @teacher1ClassId=(
SELECT  CId
FROM Course
JOIN
(
	SELECT  TId
	FROM Teacher
	WHERE Tname="物理老师" 
) TeacherRes
ON TeacherRes.TId=Course.TId );

SELECT  @teacher1ClassId;
-- 解法1
SELECT  Student.SId
       ,Student.Sname
       ,Student.Ssex
       ,Student.Sage
       ,SCRes.classConcat
FROM Student
JOIN
(
	SELECT  SId
	       ,group_concat(CId ORDER BY CId Separator ',') AS classConcat
	FROM SC
	GROUP BY  SId
) SCRes
ON Student.SId=SCRes.SId
WHERE SCRes.classConcat not LIKE concat('%', @teacher1ClassId, '%') ;
-- 解法2
SELECT  Student.SId
       ,Student.Sname
       ,Student.Ssex
       ,Student.Sage
       ,SCRes.classConcat
FROM Student
JOIN
(
	SELECT  SId
	       ,group_concat(CId ORDER BY CId Separator ',') AS classConcat
	FROM SC
	GROUP BY  SId
) SCRes
ON Student.SId=SCRes.SId
WHERE locate(@teacher1ClassId, SCRes.classConcat)=0 ;
-- 解法3
SELECT  Student.SId
       ,Student.Sname
       ,Student.Ssex
       ,Student.Sage
       ,SCRes.classConcat
FROM Student
JOIN
(
	SELECT  SId
	       ,group_concat(CId ORDER BY CId Separator ',') AS classConcat
	FROM SC
	GROUP BY  SId
) SCRes
ON Student.SId=SCRes.SId
WHERE not find_in_set(@teacher1ClassId, SCRes.classConcat) ;

SELECT  CONCAT('%',@teacher1ClassId,'%');

SELECT  concat('%',@teacher1ClassId,'%');