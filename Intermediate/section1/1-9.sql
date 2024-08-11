SELECT
    *
FROM
    posts
WHERE
-- 「いいね」の数が最も多い記事を書いた投稿者を探す
    posts.author = (
        SELECT
            author
        FROM
            posts
        ORDER BY faves DESC
        LIMIT 1
)
-- 投稿日が新しい順に5件取得
ORDER BY date DESC
LIMIT 5;