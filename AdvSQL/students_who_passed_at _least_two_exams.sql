-- Select students who passed at least two exams for different subject.

SELECT s.id, s.name, s.surname
FROM student s
WHERE 
    (
        SELECT COUNT(DISTINCT er.subject_id)
        FROM exam_result er
        WHERE er.student_id = s.id AND er.mark >= 7
    ) >= 2;
