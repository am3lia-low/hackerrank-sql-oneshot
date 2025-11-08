-- atp u might as well use python man
SET @row := 21;

SELECT REPEAT("* ", @row := @row-1)
FROM information_schema.tables -- claude saus this is just a system table w LOTS of rows
LIMIT 20;
