SELECT COUNT(marks) FROM PROGRESS_REPORT;

SELECT AVG(marks) FROM PROGRESS_REPORT;

SELECT MAX(marks) FROM PROGRESS_REPORT;

SELECT MIN(marks) FROM PROGRESS_REPORT;

SELECT SUM(marks) FROM PROGRESS_REPORT;

SELECT VARIANCE(marks) FROM PROGRESS_REPORT;

SELECT sname, SUBSTR(sname, 1, 4) FROM STUDENT;

SELECT sname, LOWER(sname) FROM STUDENT;

SELECT sname, UPPER(sname) FROM STUDENT;

SELECT sname, LENGTH(sname) FROM STUDENT;

SELECT sysdate();