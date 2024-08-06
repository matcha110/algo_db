SELECT
    id, name, subject, score,

    CASE
        WHEN score >= 90 THEN '秀'
        WHEN score >= 80 THEN '優'
        WHEN score >= 65 THEN '良'
        WHEN score >= 50 THEN '可'
        ELSE '不可'
    END
        AS '評価' FROM grades;

-- CASE WHEN 分岐したいときに使用
-- else ifの続けて使用可能