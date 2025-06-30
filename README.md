# Employee HR Analytics

A SQL project simulating an HR database for analyzing employee performance, department growth, and salary trends. Built to demonstrate relational schema design, data modeling, and query-based business analysis using standard SQL.

---

## 📌 Project Overview

This project models a simplified human resources system, including employees, departments, performance reviews, and salary history. It includes realistic sample data and SQL queries that answer common business questions like:

- What’s the average salary per department?
- Who are the top performers?
- Which departments are growing or underperforming?
- How has salary changed year-over-year?

---

## 🧱 Schema

- **departments** — Reference list of departments  
- **employees** — Employee info (name, hire date, salary, department)  
- **performance_reviews** — Yearly review scores (1.0 to 5.0)  
- **salaries** — Salary history records per employee (optional)

You can view the schema in [`schema.sql`](./schema.sql).

---

## 📂 File Structure

| File               | Description                                |
|--------------------|--------------------------------------------|
| `schema.sql`       | DDL for creating tables                    |
| `insert_data.sql`  | Sample records for departments, employees, reviews |
| `queries.sql`      | 10 business-style queries                  |
| `.gitignore`       | Cleans the repo (ignores temp/system files)|
| `LICENSE`          | MIT license                                |

---

## 🧪 Sample Queries Included

- Average salary by department
- Top performers across years
- Employees hired in the last 12 months
- Review count per employee
- Departments with highest average scores
- Salary change over time
- Employees with no performance reviews

See all in [`queries.sql`](./queries.sql).

---

## 🚀 How to Use

1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/employee-hr-analytics.git
   cd employee-hr-analytics
