WITH min_highest AS (
    SELECT
        MIN(station_id) AS min_station_id
    FROM
        temperature_august
    WHERE
        highest = (
            SELECT
                MIN(highest)
            FROM
                temperature_august AS temperature_min
            WHERE
                temperature_min.prefecture = temperature_august.prefecture
    )
    GROUP BY prefecture
)
SELECT
    *
FROM
    temperature_august
WHERE station_id IN (
    SELECT min_station_id FROM min_highest
)
ORDER BY
    highest, station_id;
