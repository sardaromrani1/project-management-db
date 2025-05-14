-- CalculateTaskCost: A scalar function to calculate the cost of a task based on material and labor.

CREATE FUNCTION CalculateTaskCost(
	@TaskID INT
)
RETURNS DECIMAL(10, 2)
AS
BEGIN 
	DECLARE @TotalCost DECIMAL(10, 2);

	SELECT @TotalCost = t.estimated_cost + (SELECT ISNULL( SUM(r.hourly_rate * ta.assigned_hours), 0)
	FROM task_assignments ta
	JOIN resources r ON ta.resource_id = r.resource_id
	WHERE ta.task_id = t.task_id)
	FROM tasks t
	WHERE t.task_id = @TaskID;

	RETURN @TotalCost;
END;