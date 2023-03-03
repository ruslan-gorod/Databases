CREATE OR REPLACE FUNCTION get_avg_mark(student_id INTEGER)
RETURNS NUMERIC AS $avg_func$
#variable_conflict use_column
BEGIN
  RETURN (
    SELECT AVG(mark)
    FROM exam_results
    WHERE student_id = $1
  );
END;
$avg_func$ LANGUAGE plpgsql;

SELECT get_avg_mark(1);

DROP FUNCTION IF EXISTS get_avg_mark(INTEGER);
