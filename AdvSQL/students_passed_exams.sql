-- Select number of students passed exams for each subject and order result by number of student descending. – 0.2 points.

SELECT s.name, COUNT(*) AS num_passed
FROM exam_result er RIGHT JOIN subject s ON er.subject_id = s.id
WHERE er.mark > 7
GROUP BY s.name
ORDER BY num_passed DESC;
