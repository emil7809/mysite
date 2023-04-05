from bottle import get, template, request, response
import x


@get("/forgotten-password")
def _():
   
    return template("forgotten_password")