PRAGMA foreign_keys = ON;

CREATE TABLE regions(
    id INTEGER NOT NULL PRIMARY KEY,
    name TEXT
);

CREATE TABLE prefectures(
    id INTEGER NOT NULL PRIMARY KEY,
    name TEXT,
    region_id INTEGER,
    FOREIGN KEY (region_id) REFERENCES regions(id)
);

