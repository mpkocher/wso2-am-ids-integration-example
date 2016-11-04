#!/usr/bin/env python
from flask import Flask, jsonify
# for the swagger UI
from flask_cors import CORS, cross_origin

app = Flask(__name__)
CORS(app)


def to_msg(s):
    return jsonify(dict(message=s))


@app.route("/status")
def status_message():
    return to_msg("OK")


@app.route("/alpha")
def alpha():
    return to_msg("ALPHA")


@app.route("/beta")
def beta():
    return to_msg("BETA")


if __name__ == "__main__":
    app.run(debug=True)
