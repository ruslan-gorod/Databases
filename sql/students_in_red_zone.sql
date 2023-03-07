CREATE OR REPLACE FUNCTION get_students_in_red_zone()
RETURNS TABLE (student_name TEXT, student_surname TEXT) AS $$
BEGIN
  RETURN QUERY (
    SELECT s.name, s.surname
    FROM students s
    JOIN exam_results er ON s.student_id = er.student_id
    WHERE er.mark <= 3
    GROUP BY s.student_id, er.mark
    HAVING COUNT(*) >= 2
-- 	  HAVING COUNT(CASE WHEN er.mark <= 3 THEN 1 END) >= 2
  );
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_students_in_red_zone();

DROP FUNCTION IF EXISTS get_students_in_red_zone();