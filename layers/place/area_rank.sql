CREATE OR REPLACE FUNCTION area_rank(area real) RETURNS int AS
$$
SELECT CASE
           WHEN area < 10000000 THEN 6
           WHEN area BETWEEN 1000000 AND 15000000 THEN 5
           WHEN area BETWEEN 15000000 AND 40000000 THEN 4
           WHEN area > 40000000 THEN 3
           WHEN area > 160000000 THEN 2
           WHEN area > 640000000 THEN 1
           ELSE 7
           END;
$$ LANGUAGE SQL IMMUTABLE
                STRICT
                PARALLEL SAFE;
