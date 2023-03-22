-- Select all subjects which exams passed only students with the different primary skills. 
-- It means that all students passed the exam for the one subject must have different primary skill. 

SELECT er.subject_id
FROM exam_result er
JOIN student s ON er.student_id = s.id
WHERE er.mark >= 7
GROUP BY er.subject_id
HAVING COUNT(DISTINCT s.primary_skill) = COUNT(*);

-- help queries
UPDATE student
SET primary_skill = 
    CASE 
        WHEN id = 700 THEN 'Flexibility'
        ELSE primary_skill
    END;

SELECT * FROM exam_result 
WHERE student_id = 700 OR student_id = 700
ORDER BY subject_id;

UPDATE exam_result
SET subject_id = 11 WHERE id = 1418341;

SELECT * FROM student WHERE id = 500 OR id = 700;
SELECT * FROM SUBJECT
INSERT INTO SUBJECT (NAME, TUTOR) VALUES
('Germany', 'Eric Tou')

