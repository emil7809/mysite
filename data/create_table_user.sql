DROP TABLE IF EXISTS users;

CREATE TABLE users(
    user_id                TEXT NOT NULL UNIQUE,
    user_email             TEXT NOT NULL UNIQUE,
    user_password          TEXT NOT NULL,
    user_username          TEXT NOT NULL UNIQUE,
    user_name              TEXT,
    user_last_name         TEXT,
    user_createdat         TEXT NOT NULL,
    user_total_followers   TEXT,
    user_total_following   TEXT,
    user_total_tweets      INTEGER DEFAULT 0,
    user_total_retweets    INTEGER DEFAULT 0,
    user_total_comments    INTEGER DEFAULT 0,
    user_total_likes       INTEGER DEFAULT 0,
    user_total_dislikes    INTEGER DEFAULT 0,
    user_avatar            TEXT UNIQUE,
    user_cover             TEXT UNIQUE,
    user_verification_key  TEXT UNIQUE,
    user_verified_at       TEXT,

    PRIMARY KEY(user_id)

)WITHOUT ROWID;

INSERT INTO users VALUES("773fb079ed8d464eb8bef39d2c843128", "elon@mail.com", "pass", "elonmusk","Elon","Musk", "1244132713","129200000","178","22900","0","0","0","0","773fb079ed8d464eb8bef39d2c843128.jpg","773fb079ed8d464eb8bef39d2c843128.jpg", "49492464e9024faeb148c744a4035ae1", "0");
INSERT INTO users VALUES("32d322f985804fea8e9f7525053df778", "mat@mail.com", "pass", "matpat","MatPat","", "1244132713","5500000","491","4348","0","0","0","0","32d322f985804fea8e9f7525053df778.jpg", "32d322f985804fea8e9f7525053df778.jpg", "e8af0f592504444daa6dde10d9f69c5c", "0");
INSERT INTO users VALUES("1ad43d14574045a39006da33bc476d20", "daniel@mail.com", "pass", "Daniel_Sloss","Daniel","Sloss", "1244132713","180500","1133","28400","0","0","0","0","1ad43d14574045a39006da33bc476d20.jpg", "1ad43d14574045a39006da33bc476d20.jpg", "b9d67db8c84c49e0b429d4bc1ec431b3", "0");

CREATE INDEX inx_user_name ON users(user_name);
CREATE INDEX inx_user_last_name ON users(user_last_name);