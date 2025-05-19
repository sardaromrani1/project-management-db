-- task_assignments.IX_task_assignments_task_id_resource_id: A *composite index*. This is extremely important for queries that filter
-- by both task_id AND resource_id. SQL Server will be able to use this index more efficiently than separate indexes in many cases.

CREATE INDEX IX_task_assignments_task_id_resource_id ON task_assignments (task_id, resource_id);