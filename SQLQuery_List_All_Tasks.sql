-- A. Task Management Queries

-- 1. List All Tasks (WBS Style):

SELECT * FROM tasks
ORDER BY parent_task_id, task_name;