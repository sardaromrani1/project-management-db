-- A. Task Management Queries

-- 3. List Subtasks of a Specific Task:

SELECT * FROM tasks
WHERE parent_task_id = [TaskID]	-- Replace [TaskID]
ORDER BY task_name