DROP TABLE IF EXISTS posts;

CREATE VIRTUAL TABLE posts USING FTS5(post_tilte, post_body);

INSERT INTO posts VALUES(
'We are tying this databse','We hope this works'),
('Send a text messge','We do it via foptext'),
('Macs are great','Windows are great too');

SELECT * FROM posts WHERE posts MATCH 'are NOT tying';