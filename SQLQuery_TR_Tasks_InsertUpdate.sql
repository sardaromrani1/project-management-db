-- TR_tasks_InsertUpdate: A trigger that ensures that the duration field in the tasks table is automatically
-- calculated when a new task is inserted or an existing task is updated.

CREATE TRIGGER TR_tasks_InsertUpdate
ON tasks
AFTER INSERT, UPDATE
AS 
BEGIN
	UPDATE tasks
	SET duration = DATEDIFF(day, start_date, end_date) + 1
	WHERE task_id IN (SELECT task_id FROM inserted);	-- Use inserted table for performance and correctness
END;