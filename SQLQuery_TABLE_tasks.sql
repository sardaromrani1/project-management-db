-- A single set of tasks, resources, and task_assignments tables yhat seamlessly integrates task management,cost
-- management, and resource management.

-- Consolidated Database Schema

-- Table: tasks
CREATE TABLE tasks(
	task_id INT PRIMARY KEY IDENTITY(1, 1),
	task_name VARCHAR(255) NOT NULL,
	description TEXT,
	start_date DATE,
	end_date DATE,
	duration INT,
	status VARCHAR(50) DEFAULT 'Not Started',
	priority VARCHAR(20) DEFAULT 'Medium',

	-- Cost Management fields
	estimated_cost DECIMAL(10, 2) DEFAULT 0.00,		-- Estimated material and other direct task costs
	actual_cost DECIMAL(10, 2) DEFAULT 0.00,		-- Actual material and other direct task costs

	-- WBS Hierarchy field
	parent_task_id INT NULL,
	FOREIGN KEY(parent_task_id) REFERENCES tasks(task_id)

);