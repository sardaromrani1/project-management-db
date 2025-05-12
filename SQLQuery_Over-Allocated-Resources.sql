-- C. Resource Management Queries

-- 11. Find Over-Allocated Resources ( Simplistic ):

SELECT
	r.resource_name,
	SUM( ta.assigned_hours) AS total_assigned_hours
	FROM resources r
	JOIN task_assignments ta ON r.resource_id = ta.resource_id
	GROUP BY r.resource_name, r.weekly_capacity
	HAVING SUM(ta.assigned_hours) > r.weekly_capacity;