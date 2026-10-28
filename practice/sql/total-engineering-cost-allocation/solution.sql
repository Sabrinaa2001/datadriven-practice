SELECT SUM(amount) AS total_amount
FROM cost_allocs
WHERE team_name iLIKE '%data-eng%'
OR team_name iLIKE '%backend%'
OR team_name iLIKE '%devops%'
OR team_name iLIKE '%platform%'
;
