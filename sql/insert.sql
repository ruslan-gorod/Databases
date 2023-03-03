INSERT INTO STUDENTS (NAME, SURNAME, DATE_OF_BIRTH, PHONE_NUMBER, PRIMARY_SKILL) VALUES 
('alice', 'smith', '2000-01-01', '123456789', 'mathematics'),
('bob', 'johnson', '2000-02-02', '987654321', 'physics'),
('charlie', 'brown', '2000-03-03', '555555555', 'chemistry');

INSERT INTO SUBJECTS (SUBJECT_NAME, TUTOR) VALUES 
('mathematics', 'Petrov'),
('physics', 'Smith'),
('chemistry', 'Benton');

INSERT INTO EXAM_RESULTS (STUDENT_ID, SUBJECT_ID, MARK) VALUES 
(1, 1, 90),
(1, 2, 85),
(2, 2, 95),
(3, 3, 80);