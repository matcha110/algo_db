-- WITH句：副問い合わせ
WITH ranked_results AS (
    SELECT
        ROW_NUMBER() OVER(ORDER BY score DESC, id) '順位',
        name AS '名前',
        score AS 'スコア'
    FROM
        results
)
SELECT
    *
FROM
    ranked_results
WHERE
    `順位` IN (1, 2, 3, 10);
