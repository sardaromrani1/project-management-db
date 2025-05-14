-- sp_UpdateTaskStatus: A stored procedure to update the status of a task.

CREATE PROCEDURE sp_UpdateTaskStatus(
	@TaskID INT,
	@NewStatus VARCHAR(50)
)
AS 
BEGIN
	Update tasks SET status = @NewStatus
	WHERE task_id = @TaskID;
END;


-- Execute the stored procedure
EXEC sp_UpdateTaskStatus @TaskID= 123, @NewStatus= 'Completed';