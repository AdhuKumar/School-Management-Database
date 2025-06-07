# School-Management-Database

## 📚 Database Tables
Key tables used for this case study:

- **STUDENTS** (`ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `AGE`, `DOB`)
- **STAFF** (`STAFF_ID`, `FIRST_NAME`, `LAST_NAME`, `AGE`, `GENDER`, `SCHOOL_ID`)
- **SUBJECTS** (`SUBJECT_ID`, `SUBJECT_NAME`)
- **CLASSES** (`CLASS_ID`, `CLASS_NAME`, `SUBJECT_ID`, `TEACHER_ID`)
- **STUDENT_CLASSES** (`STUDENT_ID`, `CLASS_ID`)
- **SCHOOL** (`SCHOOL_ID`, `SCHOOL_NAME`, `EDUCATION_BOARD`)
- **STAFF_SALARY** (`STAFF_ID`, `SALARY`, `CURRENCY`)
- **ADDRESS** (`ADDRESS_ID`, `CITY`, `STATE`, `COUNTRY`)

---

# 🎓 School SQL Case Study

This repository contains a SQL case study based on a School Management System. It includes a series of beginner and medium-level SQL queries based on a predefined database schema.

## 📁 Files
- `School_SQL_Case_Study.sql`: Contains 20 SQL queries to practice data retrieval and analysis.

## 📌 Topics Covered
- Basic SQL Queries (`SELECT`, `WHERE`, `GROUP BY`, `JOIN`, `ORDER BY`, `LIMIT`)
- Aggregations and Conditions
- Subqueries and Null checks

## 🧠 Question Levels
- ✅ Easy: Questions 1–10
- 🚀 Medium: Questions 11–20

## 🧠 SQL Queries Covered

### 1. Retrieve all student names and their ages.
```sql
SELECT FIRST_NAME, LAST_NAME, AGE FROM STUDENTS;
````

### 2. Count how many male and female students are in the database.

```sql
SELECT GENDER, COUNT(*) AS COUNT FROM STUDENTS GROUP BY GENDER;
```

### 3. List all distinct subjects available in the school.

```sql
SELECT DISTINCT SUBJECT_NAME FROM SUBJECTS;
```

### 4. Show full names of all staff members who are teachers.

```sql
SELECT FIRST_NAME, LAST_NAME FROM STAFF WHERE STAFF_TYPE = 'Teacher';
```

### 5. Count the number of students in each class.

```sql
SELECT CLASS_ID, COUNT(STUDENT_ID) AS STUDENT_COUNT 
FROM STUDENT_CLASSES 
GROUP BY CLASS_ID;
```

### 6. Find the average salary of staff.

```sql
SELECT AVG(SALARY) AS AVG_SALARY FROM STAFF_SALARY;
```

### 7. List the names of students who are enrolled in more than one class.

```sql
SELECT STUDENT_ID, COUNT(CLASS_ID) AS CLASS_COUNT
FROM STUDENT_CLASSES
GROUP BY STUDENT_ID
HAVING COUNT(CLASS_ID) > 1;
```

### 8. Retrieve all staff who are older than 40.

```sql
SELECT FIRST_NAME, LAST_NAME, AGE FROM STAFF WHERE AGE > 40;
```

### 9. Find the number of classes each teacher is handling.

```sql
SELECT TEACHER_ID, COUNT(*) AS CLASS_COUNT 
FROM CLASSES 
GROUP BY TEACHER_ID;
```

### 10. Get the names of students along with their assigned class IDs.

```sql
SELECT S.FIRST_NAME, S.LAST_NAME, SC.CLASS_ID
FROM STUDENTS S
JOIN STUDENT_CLASSES SC ON S.ID = SC.STUDENT_ID;
```

---

## 📌 Notes

* Designed for PostgreSQL (compatible with pgAdmin 4).
* Focused on simple data extraction, grouping, and joins.
* Ideal for SQL beginners and data analyst practice.

---

Happy Learning! 🚀


