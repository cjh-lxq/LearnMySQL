/* 8. 查询至少有一门课与学号为" 01 "的同学所学 部分 相同的同学的信息 */

SELECT Student.SId,Student.Sname,Student.Ssex,Student.Sage
FROM Student
JOIN(
    -- 2.查询与0001同学学习课程 部分 相同的学生ID
    SELECT distinct SId
    FROM SC
    JOIN(
        -- 1.查询0001同学学习的课程ID
        SELECT CId
        FROM SC
        WHERE SId='0001'
    ) S01Class
    ON S01Class.CId=SC.CId
) SC2
ON SC2.SId=Student.SId
WHERE Student.SId!='0001'
