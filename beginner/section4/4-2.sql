SELECT
    subject AS '科目',
    COUNT(score BETWEEN 90 AND 100 OR NULL) AS '秀',
    COUNT(score BETWEEN 80 AND 89 OR NULL) AS '優',
    COUNT(score BETWEEN 65 AND 79 OR NULL) AS '良',
    COUNT(score BETWEEN 50 AND 64 OR NULL) AS '可',
    COUNT(score BETWEEN 0 AND 49 OR NULL) AS '不可'
FROM
    grades
GROUP BY
    subject;
    
