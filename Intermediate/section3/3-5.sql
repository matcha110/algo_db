SELECT
    prefectures.name AS '都道府県名'
FROM
    prefectures
    INNER JOIN cities
        ON prefectures.id = cities.prefecture_id
WHERE
    cities.name = '府中市';