-- A. Task Management Queries

-- 2. List Top-Level Tasks

SELECT * FROM tasks
WHERE parent_task_id IS NULL
ORDER BY task_name;