-- C. Resource Management Queries

-- 10. Calculate Total Assigned Hours for a Resource

SELECT
	r.resource_name,
	SUM(ta.assigned_hours) AS total_assigned_hours
FROM resources r
JOIN task_assignments ta ON r.resource_id = ta.resource_id
GROUP BY r.resource_name
ORDER BY total_assigned_hours DESC;