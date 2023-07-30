CREATE VIEW student_college AS
    SELECT 
        student_id, sname, S.contact_no, email, college_id, cname
    FROM
        STUDENT AS S,
        COLLEGE AS C
    WHERE
        C.college_id = S.clg_id;
        
SELECT * FROM student_college;