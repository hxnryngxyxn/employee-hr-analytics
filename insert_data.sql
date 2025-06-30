-- run this query to load data --
-- Insert departments
INSERT INTO departments (department_name) VALUES
('Engineering'),
('Human Resources'),
('Sales'),
('Marketing'),
('Finance');

-- Insert employees
INSERT INTO employees (name, department_id, hire_date, salary) VALUES
('Alice Johnson', 1, '2021-06-15', 95000.00),
('Brian Lee', 2, '2022-01-10', 68000.00),
('Carmen Diaz', 3, '2020-03-20', 72000.00),
('David Chen', 1, '2019-11-03', 110000.00),
('Erika Patel', 4, '2023-02-14', 60000.00),
('Franklin Moore', 5, '2021-07-01', 80000.00),
('Georgia Smith', 3, '2022-10-22', 71000.00),
('Hassan Ali', 1, '2020-08-30', 97000.00),
('Isabel Ramirez', 4, '2023-06-05', 58000.00),
('Jack Nguyen', 2, '2018-05-18', 70000.00);

-- Insert performance reviews
INSERT INTO performance_reviews (employee_id, review_year, score) VALUES
(1, 2022, 4.6),
(1, 2023, 4.8),
(2, 2022, 4.0),
(2, 2023, 4.3),
(3, 2022, 3.5),
(3, 2023, 3.7),
(4, 2022, 4.9),
(5, 2023, 4.1),
(6, 2022, 4.0),
(7, 2023, 3.9),
(8, 2022, 4.4),
(9, 2023, 4.2),
(10, 2022, 3.6),
(10, 2023, 3.8);

-- Optional: Insert salary history (historical data for a few employees)
INSERT INTO salaries (employee_id, salary_date, salary_amount) VALUES
(1, '2022-01-01', 90000.00),
(1, '2023-01-01', 95000.00),
(2, '2022-01-01', 65000.00),
(2, '2023-01-01', 68000.00),
(4, '2021-01-01', 105000.00),
(4, '2023-01-01', 110000.00),
(6, '2022-01-01', 76000.00),
(6, '2023-01-01', 80000.00);
