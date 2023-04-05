from bottle import get, template
import x


@get("/forgotten-password")
def _():
   
    return template("forgotten_password")