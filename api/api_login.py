from bottle import post, request, response
import x
import bcrypt

@post("/api-login")
def _():
    try:
        user = request.get_cookie("user", secret=x.MY_COOKIE_SECRET)
        #if user: return {"info":"Success login", "user_name":user["user_name"]}
        user_email = x.validate_email()
        user_password = x.validate_password()
        db = x.db()
        user = db.execute("SELECT * FROM users WHERE user_email = ? LIMIT 1", (user_email,)).fetchone()

        error = f"Please validate your email before logging in"
        if user["user_verification_txt"] != user["user_verification_key"]: raise Exception(error)
        
        if not user: raise Exception("Wrong email")
        if not bcrypt.checkpw(user_password.encode("utf-8"), user["user_password"]):
            raise Exception("Invalid Password")
        try:
            import production
            is_cookie_https = True
        except:
            is_cookie_https = False
        response.set_cookie("user", user, secret=x.MY_COOKIE_SECRET, httponly=True, secure=is_cookie_https)
       
       
        return {"info":"success login", "user_name":user["user_username"]}
    except Exception as ex:
        print(ex)
        response.status = 400
        return {"info":str(ex)}
    finally:
        if "db" in locals(): db.close()