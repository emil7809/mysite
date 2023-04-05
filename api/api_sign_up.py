from bottle import post, request, response
import smtplib, ssl
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import x
import uuid
import time
import bcrypt
import random




@post("/api-sign-up")
def _():
    try:
        user_email = x.validate_email()
        #user_phone = x.validate_user_phone()
        user_username = x.validate_user_username()
        user_password = x.validate_password()
        x.validate_user_confirm_password()
        salt = bcrypt.gensalt()
        user_id = str(uuid.uuid4().hex)
        #print(user_id)
        #user_password_key = random.randint(1000, 9999)
        user_verification_key = str(uuid.uuid4().hex)
        #user_verification_txt = request.params.get("user_verification_txt", "")
        user = {
            "user_id":user_id,
            "user_email": user_email,
            "user_phone": 0,
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
            "user_password_key" : "",
            "user_verification_key" : user_verification_key,
            "user_verification_txt": "",
            "user_verified_at" : 0
        }
        #error =f"You have recived en email with a varification link {user_verification_key}, {user_verification_txt}"
        #print(user_verification_key)
        #print("*"*30)
        #if user_verification_txt != user_verification_key: raise Exception(error)
        
        values = ""
        for key in user:
            values = values + f":{key},"
        values = values.rstrip(",")
        #print(values)
        db = x.db()
        total_rows_inserted = db.execute(f"INSERT INTO users VALUES({values})", user).rowcount
        if total_rows_inserted != 1: raise Exception("Please, try again")
        db.commit()
        
        message = MIMEMultipart("alternative")
        message["Subject"] = "Verification"
        message["From"] = x.admin_email
        message["To"] = user_email

        html =  f"""\
        <html>
        <body>
            <p>Hi,<br>
            Thank you for signing up, click the link to verify your account<br>
           http://127.0.0.1/validate-user/{user_verification_key}
            </p>
        </body>
        </html>
        """

        content =  MIMEText(html, "html")
        message.attach(content)

        context = ssl.create_default_context()
        with smtplib.SMTP_SSL("smtp.gmail.com", 465, context=context) as server:
            server.login(x.admin_email, x.google_key)
            server.sendmail(
                x.admin_email, user_email, message.as_string()
            )

        #if user_verification_txt != user_verification_key: raise Exception(context, user_verification_key, user_verification_txt)
        
        #db = x.db
        #db.execute(f"INSERT INTO users VALUES({values})", user )

        return {
                "info" : "user created, you must verify email before you can login", 
                "user_id" : user_id
            }
    except Exception as ex:
        print(ex)
        response.status = 400
        return {"info":str(ex)}
    finally:
        if "db" in locals(): db.close()
    

        