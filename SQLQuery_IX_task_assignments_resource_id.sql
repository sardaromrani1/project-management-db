-- Index on resource_id in the task_assignments table

CREATE INDEX IX_task_assignments_resource_id
ON task_assignments( resource_id );