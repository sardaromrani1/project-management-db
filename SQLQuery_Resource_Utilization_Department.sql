-- D. Combined Queries (Integrating All Three Areas)

-- 12. Resource Utilization per Department

SELECT
	r.department, SUM(ta.assigned_hours) AS total_assigned_hours
FROM resources r
JOIN task_assignments ta ON r.resource_id = ta.resource_id
GROUP BY r.department
ORDER BY total_assigned_hours DESC;