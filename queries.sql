-- run this query to analyze insights --
-- 1. Average salary by department
SELECT 
    d.department_name,
    ROUND(AVG(e.salary), 2) AS average_salary
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
GROUP BY 
    d.department_name
ORDER BY 
    average_salary DESC;

-- 2. Top performers (score > 4.5) in any year
SELECT 
    e.name,
    pr.score,
    pr.review_year
FROM 
    performance_reviews pr
JOIN 
    employees e ON pr.employee_id = e.employee_id
WHERE 
    pr.score > 4.5
ORDER BY 
    pr.score DESC;

-- 3. Employees hired in the last 12 months
SELECT 
    name,
    hire_date
FROM 
    employees
WHERE 
    hire_date >= CURRENT_DATE - INTERVAL '12 months'
ORDER BY 
    hire_date DESC;

-- 4. Count of employees per department
SELECT 
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
GROUP BY 
    d.department_name
ORDER BY 
    employee_count DESC;

-- 5. Average performance score per employee
SELECT 
    e.name,
    ROUND(AVG(pr.score), 2) AS average_score
FROM 
    performance_reviews pr
JOIN 
    employees e ON pr.employee_id = e.employee_id
GROUP BY 
    e.name
ORDER BY 
    average_score DESC;

-- 6. Year-over-year salary comparison (from salary history)
SELECT 
    e.name,
    s1.salary_date AS previous_year,
    s1.salary_amount AS prev_salary,
    s2.salary_date AS current_year,
    s2.salary_amount AS curr_salary,
    ROUND(((s2.salary_amount - s1.salary_amount) / s1.salary_amount) * 100, 2) AS percent_change
FROM 
    salaries s1
JOIN 
    salaries s2 ON s1.employee_id = s2.employee_id 
               AND s1.salary_date = '2022-01-01' 
               AND s2.salary_date = '2023-01-01'
JOIN 
    employees e ON s1.employee_id = e.employee_id
ORDER BY 
    percent_change DESC;

-- 7. Employees with below-average performance in 2023
SELECT 
    e.name,
    pr.score
FROM 
    performance_reviews pr
JOIN 
    employees e ON pr.employee_id = e.employee_id
WHERE 
    pr.review_year = 2023
    AND pr.score < (
        SELECT 
            AVG(score)
        FROM 
            performance_reviews
        WHERE 
            review_year = 2023
    );

-- 8. Departments with highest average review scores
SELECT 
    d.department_name,
    ROUND(AVG(pr.score), 2) AS avg_score
FROM 
    performance_reviews pr
JOIN 
    employees e ON pr.employee_id = e.employee_id
JOIN 
    departments d ON e.department_id = d.department_id
GROUP BY 
    d.department_name
ORDER BY 
    avg_score DESC;

-- 9. List of employees and number of performance reviews
SELECT 
    e.name,
    COUNT(pr.review_id) AS review_count
FROM 
    employees e
LEFT JOIN 
    performance_reviews pr ON e.employee_id = pr.employee_id
GROUP BY 
    e.name
ORDER BY 
    review_count DESC;

-- 10. Find employees without any performance reviews
SELECT 
    e.name
FROM 
    employees e
LEFT JOIN 
    performance_reviews pr ON e.employee_id = pr.employee_id
WHERE 
    pr.review_id IS NULL;
