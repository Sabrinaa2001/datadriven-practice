SELECT 
token_id, issued, requests
FROM
(SELECT token_id, issued, requests, 
CASE
  WHEN expires IS NULL THEN 'Live'
  WHEN expires > CURRENT_DATE THEN 'Live'
  ELSE 'NotAlive'
END AS condition
FROM api_tokens
WHERE condition = 'Live'
ORDER BY requests DESC
LIMIT 20)
;
