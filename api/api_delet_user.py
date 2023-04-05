from bottle import delete, response, request
import x

@delete('/api-delet-user')
def _():
    try:
        me = request.get_cookie("user", secret=x.MY_COOKIE_SECRET)
        user_id = me["user_id"]
        print(user_id)
        if not user_id: raise Exception(400, "Could not delete user")
        db = x.db()
        delet_user = db.execute("DELETE FROM users WHERE user_id=?", (user_id,)).rowcount
        if not delet_user: raise Exception(400, "user not found")
        db.commit()
        return {'info':user_id}
    except Exception as ex:
        if 'db' in locals(): db.rollback()
        print(ex)
    finally:
        if 'db' in locals(): db.close()