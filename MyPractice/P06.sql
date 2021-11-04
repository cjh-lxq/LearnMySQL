/* 6. 查询学过「张三」老师授课的同学的信息 */

-- 查询上化学课的学生信息
SELECT Student.SId,Student.Sname,Student.Ssex,Student.Sage
FROM Student
JOIN(
    -- 3.查询哪些学生ID上过化学课
    SELECT SId
    FROM SC
    JOIN(
        -- 2.查询化学老师教的课
        SELECT CId 
        FROM Course
        JOIN(
            -- 1.查询化学老师的ID
            SELECT TId
            FROM Teacher
            WHERE Tname='化学老师'
        ) Teacher2
        ON Teacher2.TId=Course.TId
    ) Course2
    ON SC.CId=Course2.CId
) SC2
ON SC2.SId=Student.SId

