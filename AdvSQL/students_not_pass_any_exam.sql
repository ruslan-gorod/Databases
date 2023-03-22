-- Select students who does not pass any exam using each the following operator:
-- Outer join
EXPLAIN SELECT s.id, s.name, s.surname, s.primary_skill, s.updated_datetime
--SELECT s.id, s.name, s.surname, s.primary_skill, s.updated_datetime
FROM student s
LEFT OUTER JOIN exam_result er ON s.id = er.student_id AND er.mark >= 7
WHERE er.id IS NULL
ORDER BY s.updated_datetime;


-- Subquery with ‘not in’ clause
EXPLAIN SELECT id, name, surname, updated_datetime
--SELECT id, name, surname, updated_datetime
FROM student
WHERE id NOT IN (SELECT student_id FROM exam_result WHERE mark >= 7)
ORDER BY updated_datetime;

-- Subquery with ‘any ‘ clause Check which approach is faster for 1000, 10K, 100K exams and 10, 1K, 100K students
EXPLAIN SELECT id, name, surname, updated_datetime
--SELECT id, name, surname, updated_datetime
FROM student
WHERE id NOT IN (
    SELECT DISTINCT student_id
    FROM exam_result
    WHERE mark >= 7
      AND student_id = ANY (
          SELECT id FROM student
      )
)
ORDER BY updated_datetime;


