SELECT prefectures.name AS 都道府県名, (
    SELECT name
    FROM regions
    WHERE prefectures.region_id = regions.id
) AS 地方名
FROM prefectures;
