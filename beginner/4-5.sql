-- WITH句：副問い合わせ
WITH ranking AS (
    SELECT
        name AS '名前',
        score AS 'スコア'
    FROM
        results
    WHERE
        score = (
            SELECT MAX(score)
            FROM results AS res_max
            WHERE res_max.name = results.name
        )
    GROUP BY
        name
    ORDER BY
        score DESC, id
)
SELECT
    ROW_NUMBER() OVER() '順位',
    *
FROM
    ranking;
