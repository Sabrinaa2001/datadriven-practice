SELECT pipe_name, MIN(start_at), MAX(start_at), 
COUNT(DISTINCT TO_CHAR(start_at, 'YYYY-MM')) AS active_months
FROM data_pipes
GROUP BY pipe_name
;
