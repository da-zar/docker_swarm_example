from flask import Flask

APP = Flask(__name__)

@APP.route("/", methods=["GET", "POST"])
def run():
    return "Hi! I'm a flask app!"

if __name__ == "__main__":
    APP.run(host="0.0.0.0", port=5000)

