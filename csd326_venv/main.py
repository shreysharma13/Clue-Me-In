from crypt import methods
from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/',methods=['GET', 'POST'])
def hello_world():
    return render_template('index.html',clubs =['E-Cell','finvest','Snuphoria','Wula','GDSC','Nexus'])

@app.route('/public_dashboard/<club_id>',methods=['GET', 'POST'])
def public_dashboard(club_id):
    return render_template('dash.html',club_id = club_id)

if __name__ == '__main__':
    app.debug = True
    app.run()
    app.run(debug = True)
