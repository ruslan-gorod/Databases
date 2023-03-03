CREATE TABLE exam_results_copy (
    exam_result_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    subject_id INTEGER NOT NULL,
    mark INTEGER NOT NULL
);

-- Insert 100,000 rows of data
INSERT INTO exam_results_copy (student_id, subject_id, mark)
SELECT (random()*3)+1, (random()*3)+1, (random()*100)+1
FROM generate_series(1, 100000);

EXPLAIN SELECT * FROM exam_results_copy WHERE student_id = 1;

