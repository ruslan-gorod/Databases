-- Select students who passed at least two exams for the same subject.

SELECT s.id, s.name, s.surname, er.subject_id, sub.name
FROM student s
	JOIN exam_result er ON s.id = er.student_id 
	JOIN subject sub ON er.subject_id = sub.id
WHERE er.mark >= 7
GROUP BY s.id, s.name, s.surname, er.subject_id, sub.name
HAVING COUNT(*) >= 2
ORDER BY er.subject_id;
