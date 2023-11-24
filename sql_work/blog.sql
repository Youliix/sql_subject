CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE users(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name VARCHAR(20),
        last_name VARCHAR(20)
    );
CREATE TABLE posts(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        content TEXT,
        user_id INTEGER,
        FOREIGN KEY(user_id) REFERENCES users(id)
    );
CREATE TABLE likes(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        created_at TEXT,
        user_id INTEGER,
        post_id INTEGER,
        FOREIGN KEY(user_id) REFERENCES users(id),
        FOREIGN KEY(post_id) REFERENCES posts(id)
    );
