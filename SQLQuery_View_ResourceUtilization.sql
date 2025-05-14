-- vw_ResourceUtilization: A view to calculate resource utilization.

CREATE VIEW vw_ResourceUtilization AS
SELECT
	r.resource_id,
	r.resource_name,
	SUM(ta.assigned_hours) AS total_assigned_hours,
	(SUM(ta.assigned_hours) / r.weekly_capacity) * 100 AS utilization_percentage
FROM resources r
JOIN task_assignments ta ON r.resource_id = ta.resource_id
GROUP BY r.resource_id, r.resource_name, r.weekly_capacity;


