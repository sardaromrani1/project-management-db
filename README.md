# Project Management Database: Core Schema & Queries

https://img.shields.io/badge/License-MIT-yellow.svg
https://opensource.org/licences/MIT
https://img.shields.io/github/stars/sardaromrani1/project-management-db
https://github.com/sardaromrani1/project-management-db/stargazers

# Project Overview
This repository provides a foundational SQL database schema and accompanying queries for managing tasks, resources, and
assignments in a project-oriented environment. The schema is designed for clarity and ease of implementation, providing 
a basic yet functional structure suitable for learning, prototyping, or integration into larger systems. Focus is placed
on the essential elements of task management.

# Core Components
* tasks table: Stores details about individual tasks, including status, priority, and deadlines.
* resources table: Stores information about available resources, such as personnel or equipment.
* task_assignments table: Links tasks to resources, defining responsibility and resource allocation.
* queries.sql: Contains example SQL queries demonstrating how to retrieve and manipulate data within the database.

# Key Features & Design Principles
* Simplified Schema: Prioritizes the core relationships between tasks, resources, and assignments, avoiding unnecessary
* complexity.
* SQL-Based: Utilizes standard SQL for broad compatibility across different database systems (MySQL, PostgreSQL, SQLite,
  etc.).
* Practical Queries: Includes essential queries for retrieving task information, resource assignments, and managing task
  status.
* Foundation for Extension: Designed to be easily expanded upon with additional tables, columns, or features as needed.

# Database Schema Definition
tasks table
| description | TEXT | Detailed explanation of the task's purpose and requirements |    |
| due_date | DATE | The date when the task should be completed. |    |
| status | VARCHAR{50) | Current state of the task (e.g., "To Do", "In Progress", "Completed"). |DEFAULT 'To Do'  |
| PRIORITY |VARCHAR(50)| Priority level of the task (e.g., "High", "Medium", "Low"). | DEFAULT 'Medium'  |

resources table

task_assignments table

# SQL Files & Usage
* schema.sql: Creates the core tables (tasks, resources, task_assignments) with appropriate data types, constraints,
  and relationships.
* queries.sql: Contains example SQL queries demonstrating data retrieval and manipulation. Common use cases include:
  - Listing all tasks assigned to a specific resource.
  - Finding tasks due within a specific data range.
  - Identifying high-priority tasks that are currently "In Progress."
  - Calculating the total estimated effort for a given task.

# Getting Started
1. Clone the Repository:
''' bash
git clone https://github.com/sardaromrani1/project-management-db '''

2. Create a Database:
   Use your preferred database management system to create a new database (e.g., project_management_db).

3. Execute the Schema:
   Run the schema.sql file to create the tables. For example, using SQLite:
   bash
     sqlite3 project_management_db.db < schema.sql

4. (Optional) Explore the Queries:
   Examine the queries.sql file for example queries. You can execute these queries directly against your database to
   retrieve and analyze task management data.

# Contribution Guidelines
Contributions are welcome! Feel free to submit pull requests to:
* Add new example queries to queries.sql.
* Enhance the schema with new tables or columns.
* Improve the documentation.

# License
This project is licensed under the MIT License.
