-- run this query to create tables --
-- Drop tables if they exist (to reset database during testing)
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS performance_reviews;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Departments Table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

-- Employees Table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT REFERENCES departments(department_id),
    hire_date DATE NOT NULL,
    salary NUMERIC(10, 2) NOT NULL
);

-- Performance Reviews Table
CREATE TABLE performance_reviews (
    review_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    review_year INT NOT NULL,
    score NUMERIC(3, 2) CHECK (score >= 1.00 AND score <= 5.00)
);

-- Salaries Table (Optional: for tracking salary history over time)
CREATE TABLE salaries (
    salary_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    salary_date DATE NOT NULL,
    salary_amount NUMERIC(10, 2) NOT NULL
);
