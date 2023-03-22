--Select all primary skills that contain more than one word (please note that both ‘-‘ and ‘ ’ could be used as a separator) – 0.2 points.

SELECT primary_skill FROM student
WHERE primary_skill LIKE '%-%' OR primary_skill LIKE '% %';


SELECT DISTINCT primary_skill FROM student

UPDATE student
SET primary_skill = 
    CASE 
        WHEN id % 3 = 0 THEN 'Physical Education'
        WHEN id % 5 = 0 THEN 'Non-project'
        ELSE primary_skill
    END;
