--1.1
SELECT last_name, job_id, salary AS Sal
FROM employees;
/
--1.2
SELECT *
FROM job_grades;

--1.3: 
-- faltan comas, la palabra 'sal' deberia ser 'salary', el simbolo 'x' deberia ser '*' y falta poner 'as' antes de ANUAL SALARY que deberia ser con '' o 
--con una barra baja entre medias
/
-- 1.4
DESCRIBE departments;
SELECT DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID 
FROM DEPARTMENTS;
/
--1.5
    --a
    DESCRIBE employees;
    --b
    SELECT EMPLOYEE_ID, LAST_NAME, JOB_ID, HIRE_DATE as STARTDATE
    FROM EMPLOYEES;
--1-6
SELECT JOB_ID FROM EMPLOYEES;
--1.7
 SELECT EMPLOYEE_ID AS "Emp #", LAST_NAME AS Employee, JOB_ID AS Job, HIRE_DATE
FROM EMPLOYEES;
--1.8
SELECT LAST_NAME || ', '  || JOB_ID AS "Employee and title"
FROM EMPLOYEES;
--1.9
SELECT EMPLOYEE_ID || ',' || FIRST_NAME || ',' || LAST_NAME  || ',' || PHONE_NUMBER  || ',' || JOB_ID  || ',' || SALARY  || ',' || COMMISSION_PCT 
FROM EMPLOYEES;




