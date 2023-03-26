from bottle import get, template, request, response
import x

trends = x.trends

@get("/")
def _():
    try:
        response.add_header("Cache-Control", "no-cashe, no-store, must-revalidate, max-age=0")
        response.add_header("Pragma", "no-cashe")
        response.add_header("Expires", 0)
        me = request.get_cookie("user", secret=x.MY_COOKIE_SECRET)
        #db = sqlite3.connect(
        #    str(pathlib.Path(__file__).parent.resolve())+"/twitter.db")
        #db.row_factory = dict_factory
        db = x.db()
        #tweets = db.execute("SELECT * FROM tweets").fetchall()
        users = db.execute("SELECT * FROM users LIMIT 3").fetchall()
        # print(tweets)
        #print(users)
        users_and_tweets = db.execute(
            'SELECT * FROM users JOIN tweets ON user_id = tweet_user_fk ORDER BY tweet_created_at DESC LIMIT 10').fetchall()
        #print("#"*30)
        #print(users_and_tweets)

        return template("index", me=me, trends=trends, users_and_tweets=users_and_tweets, users=users, tweet_min_len=x.TWEET_MIN_LEN, tweet_max_len=x.TWEET_MAX_LEN)

    except Exception as ex:
        print(ex)
        return "error"
    finally:
        if "db" in locals():
            db.close()