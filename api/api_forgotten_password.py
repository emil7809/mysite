from bottle import post, response
import x
import uuid
import smtplib, ssl
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

@post("/api-forgotten-password")
def _():
    try:
        user_email = x.validate_email()
        user_password_key = str(uuid.uuid4().hex)
        db = x.db()
        update_password = db.execute("""
            UPDATE users
            SET user_password_key = ?
            WHERE user_email = ?
            """, (user_password_key, user_email,)).rowcount
        if not update_password: raise Exception(400, "No user with this email")
        db.commit()

        message = MIMEMultipart("alternative")
        message["Subject"] = "Verification"
        message["From"] = x.admin_email
        message["To"] = user_email

        html =  f"""\
        <html>
        <body>
            <p>Hi,<br>
            Click the link to reset your password <br>
           http://127.0.0.1/api-reset-password/{user_password_key}
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

        return {"info": "An email with a reset link has ben sent"}
    
    except Exception as ex:
        response.status = 500
        return {"info": str(ex)}
    finally:
        if "db" in locals(): db.close()