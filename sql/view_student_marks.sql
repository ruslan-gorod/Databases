CREATE VIEW student_marks AS
SELECT s.name, s.surname, sub.subject_name, er.mark
FROM students s
JOIN exam_results er ON s.student_id = er.student_id
JOIN subjects sub ON er.subject_id = sub.subject_id;

SELECT * FROM student_marks;

CREATE MATERIALIZED VIEW student_marks_mv AS
SELECT s.name, s.surname, sub.subject_name, er.mark
FROM students s
JOIN exam_results er ON s.student_id = er.student_id
JOIN subjects sub ON er.subject_id = sub.subject_id;

REFRESH MATERIALIZED VIEW student_marks_mv;

SELECT * FROM student_marks_mv;