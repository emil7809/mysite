from bottle import get, template, run, request
import jwt


@get("/jwt")
def _():
    try:
        the_jwt = jwt.encode(
            {"name": "Emily", "last_name": "Hoolahan"}, "the_secret", algorithm="HS256")
        decode = jwt.decode(the_jwt, "the_secret", algorithms=["HS256"])
        me = request.get_cookie("jwt", the_jwt, secret=the_jwt)
        print(me)
        return template("jwt", decode=decode, me=me, the_jwt=the_jwt)

    except Exception as e:
        return (e)


run(host="127.0.0.1", port=80, debug=True, reloader=True)
