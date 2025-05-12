-- B. Cost Management Queries

-- 7. Calculate Project Cost Variance (All tasks and resources):

SELECT 
	SUM(t.actual_cost) + (SELECT
	SUM(r.hourly_rate * ta.assigned_hours)
	FROM task_assignments ta
	JOIN resources r ON ta.resource_id = r.resource_id)
	- SUM(t.estimated_cost) + (SELECT 
	SUM(r.hourly_rate * ta.assigned_hours)
	FROM task_assignments ta 
	JOIN resources r ON ta.resource_id = r.resource_id) AS CostVariance 
	FROM tasks t