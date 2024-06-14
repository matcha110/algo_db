SELECT
    *
FROM
    prefectures
WHERE
    name in (
        SELECT name FROM kanto_regions 
    );
