from bottle import post, request, response
import x
import uuid
import time
import bcrypt

@post("/api-sign-up")
def _():
    try:
        user_email = x.validate_email()
        user_username = x.validate_user_username()
        user_password = x.validate_password()
        x.validate_user_confirm_password()
        salt = bcrypt.gensalt()
        user_id = str(uuid.uuid4().hex)
        #print(user_id)
        user = {
            "user_id":user_id,
            "user_email": user_email,
            "user_password": bcrypt.hashpw(user_password.encode('utf-8'), salt),
            "user_username" : user_username,
            "user_name" : request.forms.user_first_name,
            "user_last_name" : "",
            "user_created_at" : int(time.time()),
            "user_total_followers" : 0,
            "user_total_following" : 0,
            "user_total_tweets" : 0,
            "user_total_retweets" : 0,
            "user_total_comments" : 0,
            "user_total_likes" : 0,
            "user_total_dislikes" : 0,
            "user_avatar" : "avatar.jpg",
            "user_cover" : "",
            "user_verification_key" : str(uuid.uuid4().hex),
            "user_verified_at" : 0
        }
        values = ""
        for key in user:
            values = values + f":{key},"
        values = values.rstrip(",")
        #print(values)
        db = x.db()
        total_rows_inserted = db.execute(f"INSERT INTO users VALUES({values})", user).rowcount
        if total_rows_inserted != 1: raise Exception("Please, try again")
        db.commit()
        #db = x.db
        #db.execute(f"INSERT INTO users VALUES({values})", user )
        return {
                "info" : "user created", 
                "user_id" : user_id
            }
    except Exception as ex:
        print(ex)
        response.status = 400
        return {"info":str(ex)}
    finally:
        pass
    