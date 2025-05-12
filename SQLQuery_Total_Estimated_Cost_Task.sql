-- B. Cost Management Queries

-- 6. Calculate Total Estimated Cost for a Task (Including Resource Costs):

SELECT
	t.estimated_cost + (SELECT
	SUM(r.hourly_rate * ta.assigned_hours)
	FROM task_assignments ta
	JOIN resources r ON ta.resource_id = r.resource_id
	WHERE ta.task_id = t.task_id) AS total_estimated_cost
	FROM tasks t 
	WHERE t.task_id = [TaskID]		-- Replace [TaskID]