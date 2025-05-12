-- B. Cost Management Queries

-- 5. Calculate Resource Cost for a Specific Task:

SELECT
	SUM(r.hourly_rate * ta.assigned_hours) AS resource_cost
FROM tasks t
JOIN task_assignments ta ON t.task_id = ta.task_id
JOIN resources r ON ta.resource_id = r.resource_id
WHERE t.task_id = [TaskID]		-- Replace [TaskID]