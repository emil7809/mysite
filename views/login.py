from bottle import get, template, request, response
import x


@get("/login")
def _():
    response.add_header("Cache-Control", "no-cashe, no-store, must-revalidate, max-age=0")
    response.add_header("Pragma", "no-cashe")
    response.add_header("Expires", 0)
    user = request.get_cookie("user", secret=x.MY_COOKIE_SECRET)
    if user:
        response.status = 303
        response.set_header("Location", f"/{user['user_username']}")
    return template("login")