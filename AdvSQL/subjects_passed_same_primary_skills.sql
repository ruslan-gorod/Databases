-- Select all subjects which exams passed only students with the same primary skills.

SELECT s.primary_skill, er.subject_id, s.name
FROM exam_result er
JOIN student s ON er.student_id = s.id
WHERE er.mark >= 7
GROUP BY s.primary_skill, er.subject_id, s.name
HAVING COUNT(DISTINCT s.primary_skill) = 1
ORDER BY s.name;
