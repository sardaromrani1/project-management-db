-- task_assignments.IX_task_assignments_task_id: Essential for finding all assignments related to a specific task.

CREATE INDEX IX_task_assignments_task_id ON task_assignments (task_id);