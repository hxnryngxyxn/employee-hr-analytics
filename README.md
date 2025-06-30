# Employee HR Analytics

A sample SQL project that simulates an HR database and demonstrates core SQL skills including table design, data modeling, and query-based analytics.

---

## 📌 Project Overview

This project models a simplified HR system with employee data, departments, performance reviews, and salary history. It includes sample SQL scripts to create tables, insert data, and run analytical queries to extract meaningful business insights.

---

## 🧱 Schema Overview

- **employees**: Stores employee info, including department and salary
- **departments**: Reference table for department names
- **performance_reviews**: Contains annual performance scores for each employee
- **salaries**: (Optional) Tracks historical salary records for trend analysis


---

## 🗃️ Files Included

- `schema.sql` – DDL script to create all tables
- `insert_data.sql` – Sample INSERT statements to populate the database
- `queries.sql` – Example queries to analyze data
- `.gitignore` – To keep repo clean
- `LICENSE` – MIT license for open-source use

---

## 🧪 Sample Queries

- Average salary by department
- Headcount trend by department
- Top performers by year
- Employees hired in the last 12 months
- Employees with declining performance
- Salary growth trends over time

---

## 🚀 How to Use

1. Open your SQL environment (PostgreSQL, MySQL, SQLite, etc.)
2. Run `schema.sql` to create tables
3. Run `insert_data.sql` to load sample data
4. Run queries from `queries.sql` or write your own

---

## 🧠 What I Learned

- Designed normalized relational schema from real-world business logic
- Practiced writing joins, aggregations, and conditional logic
- Explored SQL as a tool for business insights and decision support

---

## 🤝 License

This project is licensed under the [MIT License](./LICENSE).
