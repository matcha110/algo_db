SELECT * FROM prefectures ORDER BY area DESC LIMIT 10;

SELECT * FROM prefectures WHERE name LIKE '%島%';

SELECT
    MAX(highest) AS '最高気温',
    MIN(lowest) AS '最低気温'
FROM temperature_august;