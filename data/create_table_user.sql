DROP TABLE IF EXISTS users;

CREATE TABLE users(
    user_id                TEXT NOT NULL UNIQUE,
    user_email             TEXT NOT NULL UNIQUE,
    user_phone             TEXT UNIQUE,
    user_password          TEXT NOT NULL,
    user_username          TEXT NOT NULL UNIQUE,
    user_name              TEXT,
    user_last_name         TEXT,
    user_createdat         TEXT NOT NULL,
    user_total_followers   TEXT,
    user_total_following   TEXT,
    user_total_tweets      TEXT,
    user_total_retweets    TEXT,
    user_total_comments    TEXT,
    user_total_likes       TEXT,
    user_total_dislikes    TEXT,
    user_avatar            TEXT UNIQUE,
    user_cover             TEXT UNIQUE,
    user_api_key           TEXT,
    user_verification_key  TEXT NOT NULL UNIQUE,
    user_verification_txt  TEXT NOT NULL,
    user_verified_at       TEXT,

    PRIMARY KEY(user_id)

)WITHOUT ROWID;

INSERT INTO users VALUES("773fb079ed8d464eb8bef39d2c843128", "elon@mail.com", "00000000", "pass", "elonmusk","Elon","Musk", "1244132713","129200000","178","22900","0","0","0","0","773fb079ed8d464eb8bef39d2c843128.jpg","773fb079ed8d464eb8bef39d2c843128.jpg", "0", "49492464e9024faeb148c744a4035ae1", "49492464e9024faeb148c744a4035ae1", "0");
INSERT INTO users VALUES("32d322f985804fea8e9f7525053df778", "mat@mail.com", "00000001", "pass", "matpat","MatPat","", "1244132713","5500000","491","4348","0","0","0","0","32d322f985804fea8e9f7525053df778.jpg", "32d322f985804fea8e9f7525053df778.jpg", "0", "e8af0f592504444daa6dde10d9f69c5c", "e8af0f592504444daa6dde10d9f69c5c", "0");
INSERT INTO users VALUES("1ad43d14574045a39006da33bc476d20", "daniel@mail.com", "00000002", "pass", "Daniel_Sloss","Daniel","Sloss", "1244132713","180500","1133","28400","0","0","0","0","1ad43d14574045a39006da33bc476d20.jpg", "1ad43d14574045a39006da33bc476d20.jpg", "0", "b9d67db8c84c49e0b429d4bc1ec431b3", "b9d67db8c84c49e0b429d4bc1ec431b3", "0");

CREATE INDEX inx_user_name ON users(user_name);
CREATE INDEX inx_user_last_name ON users(user_last_name);

