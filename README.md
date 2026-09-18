# Library Management SQL

A SQL project for analyzing and managing data from a library management system using PostgreSQL.

## 📌 Project Overview

This project uses a library management dataset to practice SQL queries for managing books, members, employees, branches, and book borrowing transactions.

The project covers basic to intermediate SQL operations, including:

* `SELECT`
* `INSERT`
* `UPDATE`
* `DELETE`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `JOIN`
* Aggregate functions such as `COUNT()` and `SUM()`
* `CREATE TABLE AS (CTAS)`
* Date filtering using `CURRENT_DATE` and `INTERVAL`

## 📂 Dataset

The dataset contains several tables representing a library management system:

* **books** — information about books, including ISBN, title, category, rental price, author, publisher, and availability status.
* **members** — library member information and registration dates.
* **employees** — employee/staff information.
* **branch** — library branch information and branch managers.
* **issued_status** — records of book borrowing transactions.

## 🔎 SQL Tasks

The project includes queries for:

1. Creating a new book record.
2. Updating an existing member's address.
3. Deleting a borrowing transaction.
4. Retrieving books issued by a specific employee.
5. Finding members who have issued more than one book.
6. Creating a summary table containing the number of times each book has been issued.
7. Retrieving books from a specific category.
8. Calculating total rental income by book category.
9. Finding members who registered within the last 30 days.
10. Retrieving employees together with their branch and branch manager information.

## 🛠️ Tools

* PostgreSQL
* SQL
* DBeaver
* GitHub

## 📁 Project Structure

```text
library-management-sql/
│
├── dataset/
│   └── library management dataset
│
├── sql/
│   └── library_management.sql
│
└── README.md
```

## 🎯 Learning Objectives

This project was created to strengthen practical SQL skills through a realistic relational database scenario.

The main focus is on querying multiple related tables, manipulating records, performing aggregations, and creating summary tables from transactional data.

## 👤 Author

**Haliah**
Statistics Student | Aspiring Data Analyst

