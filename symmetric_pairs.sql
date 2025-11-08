-- part 1: x!=y
SELECT
    DISTINCT f1.X,
    f1.Y
FROM Functions as f1
JOIN Functions as f2 on f1.X=f2.Y AND f1.Y=f2.X
WHERE f1.X < f1.Y

UNION

-- part 2: the same same one
SELECT X, Y
FROM Functions
WHERE X=Y
GROUP BY X, Y
HAVING COUNT(*) > 1

ORDER BY X;
