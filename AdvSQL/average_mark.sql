-- Select all students whose average mark is bigger than overall average mark. 

SELECT s.name, s.surname, ROUND(AVG(er.mark)::numeric, 3) as average_mark
FROM student s
  JOIN exam_result er ON s.id = er.student_id
GROUP BY s.id
HAVING AVG(er.mark) > (SELECT AVG(mark) FROM exam_result)
ORDER BY average_mark DESC;
