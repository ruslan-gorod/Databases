INSERT INTO SUBJECT (NAME, TUTOR) VALUES
('Mathematics', 'John Smith'),
('Biology', 'Sarah Lee'),
('History', 'David Chen'),
('Chemistry', 'Emily Wong'),
('Physics', 'Michael Kim'),
('English', 'Jennifer Li'),
('Geography', 'Eric Liu'),
('Art', 'JAlice Zhu'),
('Music', 'Kevin Wu'),
('Physical Education', 'Rachel Wang');

SELECT * FROM SUBJECT;

INSERT INTO exam_result (student_id, subject_id, mark)
SELECT
    (random() * 999 + 1)::int,  -- generates a random student ID between 1 and 1000
    (random() * 9 + 1)::int,   -- generates a random subject ID between 1 and 10
    (random() * 9 + 1)::int   -- generates a random mark between 1 and 100
FROM generate_series(1, 10000);

SELECT * FROM exam_result WHERE student_id = 2 ORDER BY subject_id;
DELETE FROM exam_result;

INSERT INTO phone (id, student_id, number)
SELECT
	row_number() OVER (),
    (random() * 999 + 1)::int,        -- generates a random student ID between 1 and 1000
    concat('+1', trunc(random() * 1000000000)::text) -- generates a random 10-digit phone number with US country code
FROM generate_series(1, 1000);

SELECT * FROM phone;
DELETE FROM phone;
