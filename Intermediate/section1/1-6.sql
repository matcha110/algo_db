SELECT
    *
FROM
    prefectures
WHERE
    population > (
        SELECT
            population
        FROM
            prefectures
        WHERE
            name = '東京都'
    ) / 2.0
ORDER BY
    population DESC;
