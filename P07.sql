/* 7. 查询没有学全所有课程的同学的信息 */

-- 这样可以设置mysql变量
set @classNumber=(select count(1) FROM Course)+1-1;

SELECT@classNumber;
SELECT Student.SId,Student.Sname,Student.Ssex,Student.Sage
FROM Student
JOIN(
    SELECT SId,COUNT(CId) as classCount
    FROM SC
    GROUP BY SId
) SC2
ON Student.SId=SC2.SId
WHERE SC2.classCount<@classNumber;

