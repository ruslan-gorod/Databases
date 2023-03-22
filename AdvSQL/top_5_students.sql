-- Select top 5 students who passed their last exam better than average students.

SELECT s.name, s.surname, er.mark as last_exam_mark
FROM student s
  JOIN exam_result er ON s.id = er.student_id
WHERE s.updated_datetime = 
	(SELECT MAX(updated_datetime) FROM student WHERE er.student_id = s.id)
  	AND er.mark > (SELECT AVG(mark) FROM exam_result)
ORDER BY er.mark DESC
LIMIT 5;
