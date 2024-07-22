-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE meta (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    version TEXT NOT NULL,
    name TEXT NOT NULL,
    last_updated TEXT NOT NULL,
    description TEXT,
    author TEXT,
    environment TEXT,
    build_number TEXT,
    license TEXT
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE meta;
