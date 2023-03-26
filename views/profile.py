from bottle import get, template, request, response
import x

trends = x.trends


@get("/<username>")
def _(username):
    try:
        response.add_header("Cache-Control", "no-cashe, no-store, must-revalidate, max-age=0")
        response.add_header("Pragma", "no-cashe")
        response.add_header("Expires", 0)
        me = request.get_cookie("user", secret=x.MY_COOKIE_SECRET)
        db = x.db()
        users = db.execute("SELECT * FROM users LIMIT 3").fetchall()
        user = db.execute(
            "SELECT * FROM users WHERE user_username=? COLLATE NOCASE", (username,)).fetchall()[0]

        user_id = user["user_id"]
        user_name = user["user_username"]
       
        
        users_and_tweets = db.execute(
            'SELECT * FROM users JOIN tweets ON user_id = tweet_user_fk WHERE tweet_user_fk=? ORDER BY tweet_created_at DESC LIMIT 0, 10', (user_id,)).fetchall()

        return template("profile", me=me, user=user, users=users, trends=trends, title=user_name, users_and_tweets=users_and_tweets)
    except Exception as ex:
        print(ex)
        return "error"
    finally:
        if "db" in locals():
            db.close()