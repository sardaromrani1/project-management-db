-- Virws are virtual tables based on a SELECT statement. They simplify complex queries and can provide a more
-- user-friendly interface.

CREATE VIEW vw_TaskDetails AS
SELECT
	t.task_id,
	t.task_name,
	t.description,
	t.start_date,
	t.end_date,
	t.status,
	t.estimated_cost,
	t.actual_cost,
	r.resource_name,
	r.hourly_rate,
	ta.assigned_hours,
	( r.hourly_rate * ta.assigned_hours) AS resource_cost
FROM tasks t
LEFT JOIN task_assignments ta ON t.task_id = ta.task_id
LEFT JOIN resources r ON ta.resource_id = r.resource_id