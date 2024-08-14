PRAGMA foreign_keys = ON;

-- CREATE TABLE users (
--     id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--     name TEXT UNIQUE,
--     CHECK(5 <= LENGTH(name)  AND LENGTH(name) <= 15)
-- )

-- CREATE TABLE posts (
--     id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
--     user_id INTEGER,
--     body TEXT,
--     FOREIGN KEY (user_id) REFERENCES users(id),
--     CHECK(1 <= LENGTH(body)  AND LENGTH(body) <= 140)
-- )

CREATE TABLE likes (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    post_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
)