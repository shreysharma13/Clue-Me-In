from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html',clubs =['E-Cell','finvest','Snuphoria','Wula','GDSC'])

if __name__ == '__main__':
    app.debug = True
    app.run()
    app.run(debug = True)
