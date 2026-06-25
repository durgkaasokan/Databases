
# Relational Database Design & SQL Query Portfolio

## 📌 Project Overview
This repository contains the full implementation of a relational database system designed and executed for a database management systems assignment. The project demonstrates the full lifecycle of database engineering: from conceptualizing business rules and structural layout to schema normalization, data population, and complex data retrieval via advanced SQL programming.

The goal of this project was to design an optimal relational schema that eliminates structural data redundancies while maximizing query execution efficiency for business intelligence reporting.

---

## 🛠️ Tech Stack & Tools
* **Database Management System:** MySQL / PostgreSQL / Oracle SQL / SQL Server *(Keep only the one you used)*
* **Database Client:** MySQL Workbench / DBeaver / pgAdmin / DataGrip *(Keep only the one you used)*
* **Language/Standard:** SQL (DDL, DML, DQL)

---

## 📐 Database Architecture & Modeling

### 1. Entity Relationship Diagram (ERD)

The database structure is built around core operational entities designed to simulate a real-world enterprise environment.

Key architectural implementations include:

* **Primary Keys (PK):** Enforced across every table to guarantee entity uniqueness.
* **Referential Integrity (FK):** Strict foreign key assignments configured with `ON DELETE RESTRICT` or `ON DELETE CASCADE` rules to prevent data orphaning.
* **Domain Integrity:** Enforced via `NOT NULL`, `UNIQUE`, and `CHECK` constraints (e.g., preventing negative prices, ensuring email address formats).

### 2. Normalization Strategy

To ensure maximum storage efficiency and eliminate data anomalies (Insertion, Update, and Deletion), the database was systematically normalized up to the **Third Normal Form (3NF)**:

* **First Normal Form (1NF):** Removed multi-valued or repeating attributes, ensuring all table cells contain atomic values.
* **Second Normal Form (2NF):** Eliminated partial dependencies; all non-key attributes are fully functionally dependent on the entire composite primary key.
* **Third Normal Form (3NF):** Eliminated transitive dependencies; ensuring non-prime attributes depend *only* on the primary key, and nothing else.

---

## 🚀 Setup & Execution Guide

Follow these steps to deploy and query the database locally:

### Prerequisites

Make sure you have your specific SQL environment running (e.g., MySQL Server, PostgreSQL) and a compatible database administrator tool.

### Steps to Run

1. **Clone this repository:**
```bash
git clone [https://github.com/durgkaasokan/Databases.git](https://github.com/durgkaasokan/Databases.git)
cd Databases

```


2. **Build the Database Structure:**
Open your SQL client, connect to your environment, and execute the queries inside `scripts/01_table_creation.sql` to generate the database schema and its relations.
3. **Seed the Tables:**
Execute `scripts/02_mock_data.sql` to populate the generated tables with realistic transactional mock rows.
4. **Run Analytical Reports:**
Run the scripts inside `scripts/03_complex_queries.sql` to evaluate data retrieval performance.

---

## 📊 SQL Script Mastery Highlights

The query execution file (`03_complex_queries.sql`) highlights advanced database manipulation techniques used to answer assignment-specific problem statements, including:

* **Advanced Multi-Table Joins:** Utilizing `INNER JOIN`, `LEFT OUTER JOIN`, and self-joins to connect data spanning across multiple relational dependencies.
* **Data Aggregation:** Gathering business metrics through functions like `COUNT()`, `SUM()`, `AVG()`, alongside `GROUP BY` and conditional data filtering with `HAVING`.
* **Subqueries & Substructures:** Leveraging nested subqueries, correlated queries, and **Common Table Expressions (CTEs)** to create highly readable, modular logic blocks.
* **Window Functions:** Processing comparative row data utilizing features like `ROW_NUMBER()`, `RANK()`, and `PARTITION BY` clauses.

---

## 💡 Key Business Questions Answered

The analytical script generates real-time reports addressing critical operations, such as:

1. **Performance Evaluation:** Tracking top-performing entities (e.g., highest revenue items, top salespeople, or most active users) over time.
2. **Inventory/Activity Alerts:** Pinpointing low-stock items or unassigned accounts using conditional joins.
3. **Trend Tracking:** Using date parsing functions to track month-over-month shifts in transactions.

```

```
