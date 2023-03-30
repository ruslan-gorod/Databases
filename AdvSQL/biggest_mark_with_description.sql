-- Select biggest mark for each student and add text description for the mark (use COALESCE and WHEN operators)

SELECT s.name,
  COALESCE(s.surname, 'NoSurname') as surname,
    CASE
      WHEN MAX(er.mark) >= 9 THEN 'EXCELLENT'
      WHEN MAX(er.mark) >= 7 THEN 'GOOD'
      WHEN MAX(er.mark) >= 4 THEN 'AVERAGE'
      WHEN MAX(er.mark) >= 1 THEN 'BAD'
      ELSE 'not passed'
	END as biggest_mark_description
FROM student s
  LEFT JOIN exam_result er ON s.id = er.student_id
GROUP BY s.id;
