SELECT
    *
FROM
    prefectures
ORDER BY
    area DESC
LIMIT 1
OFFSET 1;

-- LIMIT：出力個数の指定
-- OFFSET：ずらしたい数(例えば11番目を出力したい場合、OFFSET 10を指定)
