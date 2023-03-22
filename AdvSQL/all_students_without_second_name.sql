--Select all students who does not have second name (it is absent or consists from only one letter/letter with dot) – 0.2 points.

SELECT * FROM student 
WHERE surname IS NULL OR LENGTH(surname) = 1 OR surname LIKE '_.' 

UPDATE student
SET surname = 
    CASE 
        WHEN id % 3 = 0 THEN NULL
        WHEN id % 5 = 0 THEN 'A'
		WHEN id % 7 = 0 THEN 'B.'
        ELSE surname
    END;