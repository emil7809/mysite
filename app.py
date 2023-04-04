# https://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@github.com/emil7809/mysite.git
# xvffngueczmspegn


from bottle import default_app, get, run, template, static_file, post, response, request
import x
import sqlite3
import pathlib
import git

import api.api_tweet
import api.api_login
import api.api_sign_up
import api.validate_user

import views.index
import views.profile
import views.login


@post('/secret_url_for_git_hook')
def git_update():
  repo = git.Repo('./mysite')
  origin = repo.remotes.origin
  repo.create_head('master', origin.refs.main).set_tracking_branch(origin.refs.main).checkout()
  origin.pull()
  return ""



@get("/logout")
def _():
    response.set_cookie("user", "", expires=0)
    response.status=303
    response.set_header("Location", "/")
    return 


@get("/style.css")
def _():
    return static_file("style.css", root=".")

@get("/js/validate.js")
def _():
    return static_file("validate.js", root="./js")

@get("/js/app.js")
def _():
    return static_file("app.js", root="./js")

@get("/avatars/<filename:re:.*\.jpg>")
def _(filename):
    return static_file(filename, root="./avatars")

@get("/tweet_images/<filename:re:.*\.jpg>")
def _(filename):
    return static_file(filename, root="./tweet_images")

@get("/user_cover/<filename:re:.*\.jpg>")
def _(filename):
    return static_file(filename, root="./user_cover")

try:
  import production
  application = default_app()
except Exception as ex:
  print("Running local server")
  run(host="127.0.0.1", port=80, debug=True, reloader=True)
