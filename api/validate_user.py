from bottle import post, get, template
import x

@post('/validate-user/<verification_key>')
def _(verification_key):
    try:

        db = x.db()
        user = db.execute("SELECT * FROM users WHERE user_verification_key=?", (verification_key,)).fetchall()[0]
        #print(user)
        #print("*"*30)
        #if user["user_verification_txt"] == user["user_verification_key"]: raise Exception(400, "user allready varified")
        update_user_verification_txt = db.execute("""
                        UPDATE users
                        SET user_verification_txt = ?
                        WHERE user_verification_key = ?
                        """, (verification_key, verification_key,)).rowcount
        if not update_user_verification_txt: raise Exception(400, "could not varify")
        db.commit()
        
        return {'info':'user verified'}
    except Exception as ex:
        if 'db' in locals(): db.rollback()
        print(ex)
    finally:
        if 'db' in locals(): db.close()


@get('/validate-user/<verification_key>')
def _(verification_key):
    try:

        db = x.db()
        user = db.execute("SELECT * FROM users WHERE user_verification_key=?", (verification_key,)).fetchall()[0]
        #print(user)
        #print("*"*30)
        update_user_verification_txt = db.execute("""
                        UPDATE users
                        SET user_verification_txt = ?
                        WHERE user_verification_key = ?
                        """, (verification_key, verification_key,)).rowcount
        db.commit()
        
        return template("verifed")
    except Exception as ex:
        if 'db' in locals(): db.rollback()
        print(ex)
    finally:
        if 'db' in locals(): db.close()