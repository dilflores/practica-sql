--1
SELECT 
    LOCATION_ID,
    STREET_ADDRESS,
    CITY,
    STATE_PROVINCE,
    COUNTRY_NAME AS COUNTRY
FROM 
    LOCATIONS 
NATURAL JOIN 
    COUNTRIES;

--2
SELECT 
    E.LAST_NAME,
    E.DEPARTMENT_ID,
    D.DEPARTMENT_NAME
FROM 
    EMPLOYEES E
INNER JOIN 
    DEPARTMENTS D
ON 
    E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--3
SELECT 
    E.LAST_NAME,
    E.JOB_ID AS JOB,
    E.DEPARTMENT_ID,
    D.DEPARTMENT_NAME
FROM 
    EMPLOYEES E
INNER JOIN 
    DEPARTMENTS D
ON 
    E.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN 
    LOCATIONS L
ON 
    D.LOCATION_ID = L.LOCATION_ID
WHERE 
    L.CITY = 'Toronto';

--4
SELECT 
    E.LAST_NAME AS EMPLOYEE,
    E.EMPLOYEE_ID AS EMP#,
    M.LAST_NAME AS MANAGER,
    M.EMPLOYEE_ID AS MGR#
FROM 
    EMPLOYEES E
LEFT JOIN 
    EMPLOYEES M
ON 
    E.MANAGER_ID = M.EMPLOYEE_ID;

--5
SELECT 
    E.LAST_NAME AS EMPLOYEE,
    E.EMPLOYEE_ID AS EMP#,
    M.LAST_NAME AS MANAGER,
    M.EMPLOYEE_ID AS MGR#
FROM 
    EMPLOYEES E
LEFT JOIN 
    EMPLOYEES M
ON 
    E.MANAGER_ID = M.EMPLOYEE_ID
ORDER BY 
    E.EMPLOYEE_ID;

--6
SELECT 
    E1.LAST_NAME AS EMPLOYEE,
    E1.DEPARTMENT_ID AS DEPT_NO,
    E2.LAST_NAME AS COLLEAGUE
FROM 
    EMPLOYEES E1
INNER JOIN 
    EMPLOYEES E2
ON 
    E1.DEPARTMENT_ID = E2.DEPARTMENT_ID
WHERE 
    E1.EMPLOYEE_ID != E2.EMPLOYEE_ID;

--7
DESC job_grades;

SELECT e.last_name, e.job_id, e.department_id, d.department_name,
    e.salary, j.grade
FROM employees e 
    JOIN departments d ON e.department_id = d.department_id
    JOIN job_grades j ON (e.salary BETWEEN j.lowest_sal AND j.highest_sal);

--8
SELECT last_name, count(*) 
FROM employees 
GROUP BY last_name ORDER BY 2, 1;
SELECT * FROM employees WHERE last_name = 'Davies';

SELECT e.last_name "Employee", e.hire_date
FROM employees e INNER JOIN employees d ON d.last_name = 'Davies'
WHERE d.hire_date < e.hire_date
ORDER BY 2;

SELECT count(*) FROM employees WHERE hire_date > '29-01-2005';

--9
SELECT w.last_name "Employee", w.hire_date "Employee_hire_date", 
    m.last_name "Manager", m.hire_date "Manager_hire_date"
FROM employees w JOIN employees m ON w.manager_id = m.employee_id
WHERE w.hire_date < m.hire_date
ORDER BY 3, 2;