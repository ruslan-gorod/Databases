--a. Find user by name (exact match)
SELECT * FROM students WHERE name = 'Student20';

SELECT * FROM students WHERE name LIKE '%2%';

--b. Find user by surname (partial match)
SELECT * FROM students WHERE surname LIKE '%22222%';

--c. Find user by phone number (partial match)
SELECT * FROM students WHERE phone_number LIKE '%333333%';

--d. Find user with marks by user surname (partial match)
SELECT s."name", e.mark FROM students s
JOIN exam_results e ON s.student_id = e.student_id
WHERE s.student_id > 10000 AND s.student_id < 10005;

SELECT s."name", e.mark FROM students s
JOIN exam_results e ON s.student_id = e.student_id
WHERE s.surname LIKE '%2%';