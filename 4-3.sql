-- WITH句：副問い合わせ
WITH adjusted_results AS (
    SELECT
        *
    FROM
        results
    WHERE
        name NOT IN (
            SELECT
                name
            FROM
                optout
        )
)
-- 同点の場合は id (登録順) が早い参加者がより上位という条件
-- ROW_NUMBERで行番号付与
SELECT 
    ROW_NUMBER() OVER(ORDER BY score DESC, id) '順位',
    name AS '名前',
    score AS 'スコア'
FROM
    adjusted_results;
