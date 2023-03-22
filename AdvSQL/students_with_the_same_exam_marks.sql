-- Select number of students with the same exam marks for each subject. – 0.2 points.

SELECT s.name, er.mark, COUNT(*) as num_students
FROM exam_result er
JOIN subject s ON er.subject_id = s.id
GROUP BY s.name, er.mark
ORDER BY s.name, er.mark;

