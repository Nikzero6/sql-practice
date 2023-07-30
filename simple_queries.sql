SELECT * FROM COLLEGE;

SELECT * FROM STUDENT;

SELECT * FROM PROGRESS_REPORT;

UPDATE STUDENT 
SET 
    email = 'nikhil@gmail.com'
WHERE
    student_id = 1;

DELETE FROM STUDENT 
WHERE
    student_id = 2;
