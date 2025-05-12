-- A. Task Management Queries

-- 1. List Tasks by Status :

SELECT * FROM tasks
WHERE status = 'In Progrss'
ORDER BY start_date;
