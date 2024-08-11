SELECT
row_number()
over(
    order by score desc,
    id
    )
    順位,
    name AS 名前,
    score AS スコア
from
    results
order by
    順位
limit
    20
offset
    40;