SELECT
CASE 
WHEN ack_by IS NULL 
THEN 'unassigned'
ELSE ack_by 
END 
AS responder,
COUNT(alert_id) AS alert_count
FROM alert_events
GROUP BY responder
ORDER BY responder
;
