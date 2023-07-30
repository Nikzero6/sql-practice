CREATE TABLE COLLEGE (
    college_id INT NOT NULL,
    cname VARCHAR(15) NOT NULL,
    address VARCHAR(30) NOT NULL,
    contact_no INT NOT NULL,
    PRIMARY KEY (college_id)
);

CREATE TABLE DEPARTMENT (
    dept_id INT NOT NULL,
    dname VARCHAR(15) NOT NULL,
    hod VARCHAR(30) NOT NULL,
    location VARCHAR(30) NOT NULL,
    contact_no INT NOT NULL,
    c_id INT NOT NULL,
    PRIMARY KEY (dept_id),
    FOREIGN KEY (c_id)
        REFERENCES COLLEGE (college_id)
);

CREATE TABLE FACULTY (
    faculty_id INT NOT NULL,
    fname VARCHAR(15) NOT NULL,
    designation VARCHAR(30),
    qualification VARCHAR(30) NOT NULL,
    location VARCHAR(100) NOT NULL,
    contact_no INT NOT NULL,
    dept_no INT NOT NULL,
    PRIMARY KEY (faculty_id),
    FOREIGN KEY (dept_no)
        REFERENCES DEPARTMENT (dept_id)
);

CREATE TABLE COURSE (
    course_id INT NOT NULL,
    name VARCHAR(15) NOT NULL,
    year INT NOT NULL,
    fac_id INT NOT NULL,
    dept_id INT NOT NULL,
    PRIMARY KEY (course_id),
    FOREIGN KEY (fac_id)
        REFERENCES FACULTY (faculty_id),
    FOREIGN KEY (dept_id)
        REFERENCES DEPARTMENT (dept_id)
);

CREATE TABLE STUDENT (
    student_id INT NOT NULL,
    sname VARCHAR(30) NOT NULL,
    contact_no INT NOT NULL,
    address VARCHAR(100) NOT NULL,
    email VARCHAR(30),
    clg_id INT NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (clg_id)
        REFERENCES COLLEGE (college_id)
);

CREATE TABLE PROGRESS_REPORT (
    report_id INT NOT NULL,
    grade VARCHAR(5) NOT NULL,
    dept_rank INT NOT NULL,
    marks INT NOT NULL,
    rollno INT NOT NULL,
    PRIMARY KEY (report_id),
    FOREIGN KEY (rollno)
        REFERENCES STUDENT (student_id)
);

CREATE TABLE STUDIES (
    stu_id INT NOT NULL,
    course_id INT NOT NULL,
    credits INT NOT NULL,
    FOREIGN KEY (stu_id)
        REFERENCES STUDENT (student_id),
    FOREIGN KEY (course_id)
        REFERENCES COURSE (course_id)
);

