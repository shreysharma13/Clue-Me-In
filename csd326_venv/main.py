from crypt import methods
from flask import Flask, render_template, request, redirect, url_for, flash
from flask_login import LoginManager, current_user, login_user, logout_user, login_required
from auth2 import login_manager, logger, logout, User, session
from models import Base, Login_user, Club
from queries import get_pubdash, get_userClubs, get_pvtdash
app = Flask(__name__)
app.secret_key = 'mysecretkey'

# Configure login manager
login_manager.init_app(app)


@app.route('/',methods=['GET', 'POST'])
def home():
    flash('goodmorning!')
    return render_template('index.html', clubs= session.query(Club).all())


@app.route('/login', methods=['GET','POST'])
def login():
    return logger()


@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('home'))


@app.route('/secret')
def secret():
    return render_template('secret.html')


@app.route('/public_dashboard/<club_id>',methods=['GET', 'POST'])
def public_dashboard(club_id):
    return render_template('dash.html',events= get_pubdash(club_id))

@app.route('/myPage')
@login_required
@login_required
def mypage():
    print(get_userClubs())
    return render_template('my_page.html', myclubs=get_userClubs())

@app.route('/pvt_dashboard/<club_id>',methods=['GET', 'POST'])
@login_required
def pvt_dashboard(club_id):
    return render_template('pvt_dash.html', deadlines = get_pvtdash(club_id))

# # snippet end

if __name__ == '__main__':
    app.debug = True
    app.run()
    app.run(debug = True)
