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

## 🔗 Usage
You can run the queries using **PostgreSQL** in **pgAdmin 4** or any compatible SQL execution tool.

---

Happy Querying! 🎓
