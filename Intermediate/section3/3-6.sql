SELECT
    faculties.id AS '学部ID',
    faculties.name AS '学部名',
    COUNT(*) AS '学生数'
FROM
    students
    INNER JOIN faculties
        ON students.faculty_id = faculties.id
GROUP BY
    `学部名`
ORDER BY
    `学部ID`;