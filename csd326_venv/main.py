import base64
from turtle import position
from PIL import Image
import io
from datetime import datetime
from crypt import methods
from flask import Flask, render_template, request, redirect, url_for, flash
from flask_login import LoginManager, current_user, login_user, logout_user, login_required
from auth2 import login_manager, logger, logout, User, session
from models import Base, Login_user, Club, Pub_dash
from queries import get_pubdash_events,get_pubdash_ads, get_userClubs, get_thisclub, get_myDetails, get_allEvents, add_event, add_Pvtevent,get_allAds, add_club,get_pvtdash_deadlines,get_pvtdash_meetings,add_member
app = Flask(__name__)
app.secret_key = 'mysecretkey'

# Configure login manager
login_manager.init_app(app)

@app.route('/',methods=['GET', 'POST'])
def home():
    x = get_allEvents()
    y = get_allAds()
    print(x)
    return render_template('home.html',events=x, ads = y)

@app.route('/manage',methods=['GET', 'POST'])
@login_required
def manage():
    if request.method == 'POST' and request.form['submit']=="clubform":
            cname = request.form['cname']
            content = request.form['content']
            img_link = request.form['img_link']
            add_club(cname,content,img_link)
    if request.method == 'POST' and request.form['submit']=="memberform":
            mid = request.form['mid']
            cid = request.form['cid']
            utype = request.form['utype']
            position = request.form['position']
            add_member(mid,cid,utype,position)
    return render_template('manage.html')

@app.route('/clubs',methods=['GET', 'POST'])
def allClubs():
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
    link = get_thisclub(club_id).Display_img
    return render_template('dash.html',events= get_pubdash_events(club_id), thisClub= get_thisclub(club_id),link = link, ads=get_pubdash_ads(club_id))


@app.route('/myPage')
# @login_required
@login_required
def mypage():
    print("check func")
    print(get_userClubs())
    return render_template('my_page.html', myclubs=get_userClubs())


@app.route('/pvt_dashboard/<club_id>',methods=['GET', 'POST'])
@login_required
def pvt_dashboard(club_id):
    if request.method == 'POST' and request.form['submit']=="pubform":
        fname = request.form['submit']
        content = request.form['content']
        type = request.form['type']
        timestamp = request.form['date']
        img_link = request.form['display']
        add_event(club_id,content,type,timestamp,img_link)
        return render_template('pvt_dash.html', deadlines = get_pvtdash_deadlines(club_id),meetings=get_pvtdash_meetings(club_id),  myDetails = get_myDetails(current_user.id,club_id),cid=club_id,form_name=fname)

    if request.method == 'POST' and request.form['submit']=="pvtform":
        fname = request.form['submit']
        content = request.form['pvt_content']
        type = request.form['pvt_type']
        timestamp = request.form['pvt_date']
       
        add_Pvtevent(club_id,content,type,timestamp)
        return render_template('pvt_dash.html',  deadlines = get_pvtdash_deadlines(club_id),meetings=get_pvtdash_meetings(club_id),  myDetails = get_myDetails(current_user.id,club_id),cid=club_id,form_name=fname)
    
    else:        
        return render_template('pvt_dash.html',  deadlines = get_pvtdash_deadlines(club_id),meetings=get_pvtdash_meetings(club_id),  myDetails = get_myDetails(current_user.id,club_id),cid = club_id)


# # snippet end

if __name__ == '__main__':
    app.debug = True
    app.run()
    app.run(debug = True)
