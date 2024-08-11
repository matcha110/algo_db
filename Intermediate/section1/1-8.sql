-- 問題1の得点の更新
UPDATE
    grades
SET
    score = 25
WHERE
    problem_id = 1;

-- 各学生の得点集計
SELECT
    name AS 名前,
    SUM(score) AS 合計点
FROM
    grades
GROUP BY
    name;
