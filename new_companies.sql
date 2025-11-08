SELECT
    tbl.company_code,
    c.founder,
    tbl.lm, tbl.sm, tbl.m, tbl.e
FROM (
    SELECT
        e.company_code AS company_code,
        COUNT(DISTINCT e.lead_manager_code) AS lm,
        COUNT(DISTINCT e.senior_manager_code)AS sm,
        COUNT(DISTINCT e.manager_code) AS m,
        COUNT(DISTINCT e.employee_code) AS e
    FROM Employee AS e
    GROUP BY e.company_code
) AS tbl
LEFT JOIN Company AS c ON tbl.company_code = c.company_code
ORDER BY tbl.company_code
