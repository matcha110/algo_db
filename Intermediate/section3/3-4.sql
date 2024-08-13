SELECT
    IFNULL(students.name, '該当なし') AS '氏名',
    faculties.name AS '所属学部'
FROM
    faculties
    LEFT OUTER JOIN students
        ON students.faculty_id = faculties.id;