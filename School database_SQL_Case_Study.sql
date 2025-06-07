
-- Case Study: School Management Database (Beginner Level)

-- 1. Retrieve all student names and their ages.
SELECT FIRST_NAME, LAST_NAME, AGE FROM STUDENTS;

-- 2. Count how many male and female students are in the database.
SELECT GENDER, COUNT(*) AS COUNT FROM STUDENTS GROUP BY GENDER;

-- 3. List all distinct subjects available in the school.
SELECT DISTINCT SUBJECT_NAME FROM SUBJECTS;

-- 4. Show full names of all staff members who are teachers.
SELECT FIRST_NAME, LAST_NAME FROM STAFF WHERE STAFF_TYPE = 'Teacher';

-- 5. Count the number of students in each class.
SELECT CLASS_ID, COUNT(STUDENT_ID) AS STUDENT_COUNT 
FROM STUDENT_CLASSES 
GROUP BY CLASS_ID;

-- 6. Find the average salary of staff.
SELECT AVG(SALARY) AS AVG_SALARY FROM STAFF_SALARY;

-- 7. List the names of students who are enrolled in more than one class.
SELECT STUDENT_ID, COUNT(CLASS_ID) AS CLASS_COUNT
FROM STUDENT_CLASSES
GROUP BY STUDENT_ID
HAVING COUNT(CLASS_ID) > 1;

-- 8. Retrieve all staff who are older than 40.
SELECT FIRST_NAME, LAST_NAME, AGE FROM STAFF WHERE AGE > 40;

-- 9. Find the number of classes each teacher is handling.
SELECT TEACHER_ID, COUNT(*) AS CLASS_COUNT 
FROM CLASSES 
GROUP BY TEACHER_ID;

-- 10. Get the names of students along with their assigned class IDs.
SELECT S.FIRST_NAME, S.LAST_NAME, SC.CLASS_ID
FROM STUDENTS S
JOIN STUDENT_CLASSES SC ON S.ID = SC.STUDENT_ID;


-- Medium-Level SQL Questions for School Management Database

-- 11. List the students along with the number of classes they are enrolled in.
SELECT S.ID, S.FIRST_NAME, S.LAST_NAME, COUNT(SC.CLASS_ID) AS CLASS_COUNT
FROM STUDENTS S
JOIN STUDENT_CLASSES SC ON S.ID = SC.STUDENT_ID
GROUP BY S.ID, S.FIRST_NAME, S.LAST_NAME;

-- 12. Show the average age of students by gender.
SELECT GENDER, AVG(AGE) AS AVG_AGE
FROM STUDENTS
GROUP BY GENDER;

-- 13. Retrieve the total number of staff in each school.
SELECT SCHOOL_ID, COUNT(STAFF_ID) AS STAFF_COUNT
FROM STAFF
GROUP BY SCHOOL_ID;

-- 14. List teachers and the subjects they teach.
SELECT ST.FIRST_NAME, ST.LAST_NAME, SUB.SUBJECT_NAME
FROM CLASSES C
JOIN STAFF ST ON C.TEACHER_ID = ST.STAFF_ID
JOIN SUBJECTS SUB ON C.SUBJECT_ID = SUB.SUBJECT_ID;

-- 15. Find cities with more than 5 schools.
SELECT A.CITY, COUNT(S.SCHOOL_ID) AS SCHOOL_COUNT
FROM SCHOOL S
JOIN ADDRESS A ON S.ADDRESS_ID = A.ADDRESS_ID
GROUP BY A.CITY
HAVING COUNT(S.SCHOOL_ID) > 5;

-- 16. Get all students who do not have a parent listed.
SELECT S.ID, S.FIRST_NAME, S.LAST_NAME
FROM STUDENTS S
LEFT JOIN STUDENT_PARENT SP ON S.ID = SP.STUDENT_ID
WHERE SP.PARENT_ID IS NULL;

-- 17. Find the highest paid staff member.
SELECT ST.FIRST_NAME, ST.LAST_NAME, SS.SALARY
FROM STAFF ST
JOIN STAFF_SALARY SS ON ST.STAFF_ID = SS.STAFF_ID
ORDER BY SS.SALARY DESC
LIMIT 1;

-- 18. List students and the subjects they are learning.
SELECT ST.FIRST_NAME, ST.LAST_NAME, SUB.SUBJECT_NAME
FROM STUDENTS ST
JOIN STUDENT_CLASSES SC ON ST.ID = SC.STUDENT_ID
JOIN CLASSES C ON SC.CLASS_ID = C.CLASS_ID
JOIN SUBJECTS SUB ON C.SUBJECT_ID = SUB.SUBJECT_ID;

-- 19. Count how many classes each subject is taught in.
SELECT SUBJECT_ID, COUNT(CLASS_ID) AS CLASS_COUNT
FROM CLASSES
GROUP BY SUBJECT_ID;

-- 20. Show the staff who have not been assigned to any class.
SELECT S.STAFF_ID, S.FIRST_NAME, S.LAST_NAME
FROM STAFF S
LEFT JOIN CLASSES C ON S.STAFF_ID = C.TEACHER_ID
WHERE C.CLASS_ID IS NULL;
