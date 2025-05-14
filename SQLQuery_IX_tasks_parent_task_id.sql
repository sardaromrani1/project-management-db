-- Index on parent_task_id in the tasks table

CREATE INDEX IX_tasks_parent_task_id
ON tasks(parent_task_id);