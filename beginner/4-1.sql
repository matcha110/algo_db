SELECT
    *
FROM
    users
WHERE
    flg_data_public = 1
    AND
    name LIKE '%RURU'
    AND 
    rank is NULL;
