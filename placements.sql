-- what kind of fucked up query is this
SELECT
    one.name
FROM (
    SELECT
        s.ID AS ID,
        s.Name AS name,
        f.Friend_ID as friend_id,
        sal.Salary as salary
    FROM Students AS s
    LEFT JOIN Friends as f on s.ID=f.ID
    LEFT JOIN Packages as sal on s.ID=sal.ID
) AS one
LEFT JOIN Packages as fren on one.friend_id=fren.ID
WHERE fren.Salary > one.Salary
ORDER BY fren.Salary;
