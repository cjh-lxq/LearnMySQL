
-- 查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩

set @failClassNumber=2;
SELECT Student.SId,Student.Sname,failStudentAvgSC.scoreAvg
FROM Student
JOIN(
    -- 3.算这些同学的平均分
    SELECT SC.SId,AVG(score) as scoreAvg
    FROM(
        -- 2.筛选出不及格科目大于2等于2科的
        SELECT SId,failStudent.failCount
        FROM(
            -- 1.统计每个人不及格的科目数
            SELECT SId,count(score) as failCount
            FROM SC
            WHERE SC.score<60
            GROUP BY SId
        ) failStudent
        WHERE failStudent.failCount>=@failClassNumber
    ) failStudentSC
    JOIN SC
    ON SC.SId=failStudentSC.SId
    GROUP BY SC.SId
) failStudentAvgSC
ON Student.SId=failStudentAvgSC.SId

;