SELECT 
    S.sname, S.contact_no, S.email, C.cname
FROM
    STUDENT AS S
        INNER JOIN
    COLLEGE AS C ON S.clg_id = C.college_id;

SELECT 
    S.sname, S.contact_no, S.email, C.cname
FROM
    STUDENT AS S
        LEFT JOIN
    COLLEGE AS C ON S.clg_id = C.college_id;

SELECT 
    S.sname, S.contact_no, S.email, C.cname
FROM
    STUDENT AS S
        RIGHT JOIN
    COLLEGE AS C ON S.clg_id = C.college_id;
    
SELECT 
    S.sname, S.contact_no, S.email, C.cname
FROM
    STUDENT AS S
        JOIN
    COLLEGE AS C ON S.clg_id = C.college_id;
    
(SELECT 
    S.sname, S.contact_no, S.email, C.cname
FROM
    STUDENT AS S
        LEFT JOIN
    COLLEGE AS C ON S.clg_id = C.college_id) UNION (SELECT 
    S.sname, S.contact_no, S.email, C.cname
FROM
    STUDENT AS S
        RIGHT JOIN
    COLLEGE AS C ON S.clg_id = C.college_id);
    