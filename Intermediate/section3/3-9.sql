SELECT
    subjects.name AS '科目名',
    COUNT(
        CASE WHEN
            students.enrollment_year = 2023
        THEN 1 END
    ) AS '1年生履修者数',
    COUNT(
        CASE WHEN
            students.enrollment_year = 2022
        THEN 1 END
    ) AS '2年生履修者数'

FROM
    registrations
    INNER JOIN
        students
    ON
        registrations.student_id = students.id
    INNER JOIN
        subjects
    ON
        registrations.subject_id = subjects.id

GROUP BY
    subjects.name;
