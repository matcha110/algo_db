SELECT DISTINCT email
FROM registrations_day1
WHERE
    email IN (
        SELECT email FROM registrations_day2
    )
AND
    email IN (
        SELECT email FROM registrations_day3
    );
