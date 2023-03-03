CREATE OR REPLACE FUNCTION get_avg_mark_for_subject(subject_name VARCHAR)
RETURNS NUMERIC AS $$
BEGIN
  RETURN (
    SELECT AVG(mark)
    FROM exam_results er
    JOIN subjects s ON er.subject_id = s.subject_id
    WHERE s.subject_name = $1
  );
END;
$$ LANGUAGE plpgsql;

SELECT get_avg_mark_for_subject('Subject93');

DROP FUNCTION IF EXISTS get_avg_mark_for_subject(VARCHAR);

SELECT subject_name FROM subjects;