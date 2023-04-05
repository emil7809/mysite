from bottle import post, get, template, response
import x
import bcrypt

@post("/api-reset-password/<user_password_key>")
def _(user_password_key):
    try:
        db = x.db()
        user_password = x.validate_password()
        x.validate_user_confirm_password()

        salt = bcrypt.gensalt()
        user_password = bcrypt.hashpw(user_password.encode('utf-8'), salt)
        update_user_password = db.execute("""
            UPDATE users
            SET user_password = ?
            WHERE user_password_key = ?
            """, (user_password, user_password_key,)).rowcount
        if not update_user_password: raise Exception(400, "could not reset password")
        db.commit()
        return {"info":"Password reset"}
    except Exception as ex:
        response.status = 500
        return {"info": str(ex)}
    finally:
        if "db" in locals(): db.close()

@get("/api-reset-password/<user_password_key>")
def _(user_password_key):    
        return template("reset_password", user_password_key=user_password_key)
  