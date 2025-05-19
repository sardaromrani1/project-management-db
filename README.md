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
