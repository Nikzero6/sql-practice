SELECT 
    sname, email
FROM
    STUDENT
WHERE
    clg_id = (SELECT 
            college_id
        FROM
            COLLEGE
        WHERE
            cname = 'DTU');