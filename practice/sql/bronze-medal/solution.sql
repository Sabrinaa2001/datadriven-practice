SELECT 
TOP 3
amount
FROM cloud_costs
GROUP BY amount
ORDER BY amount DESC
;
