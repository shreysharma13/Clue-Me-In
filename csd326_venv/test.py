from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def hello_world():
    return ('index hello')

if __name__ == '__main__':
    app.debug = True
    app.run()
    app.run(debug = True)
