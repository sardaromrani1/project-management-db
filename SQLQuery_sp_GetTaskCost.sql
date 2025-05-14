-- sp_GetTaskCost: A stored procedure to calculate the total cost (material and resource) of a task.

CREATE PROCEDURE sp_GetTaskCost(
	@TaskID INT
)
AS
BEGIN
	SELECT t.estimated_cost + (SELECT ISNULL(SUM(r.hourly_rate * ta.assigned_hours), 0)
	FROM task_assignments ta
	JOIN resources r ON ta.resource_id = r.resource_id
	WHERE ta.task_id = t.task_id)
	AS total_cost

	FROM tasks t
	WHERE t.task_id = @TaskID;
END;