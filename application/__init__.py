from flask import Flask, render_template

app = Flask(__name__)



@app.route("/")
def home():
    return render_template('base.html')

app.add_url_rule("/", view_func=home)