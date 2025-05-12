-- Table: task_assignments

CREATE TABLE task_assignments(
	task_id INT NOT NULL,
	resource_id INT NOT NULL,
	assigned_hours DECIMAL(10, 2) DEFAULT 0.00,		-- Hours assigned to task by resource (for cost and resource mgmt)
	FOREIGN KEY (task_id) REFERENCES tasks(task_id),
	FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
	PRIMARY KEY(task_id, resource_id)		-- Composite key for efficiency and preventing duplicate assignments
);
