from models import Pub_dash,Pvt_dash , Base, Mem, Club
from auth2 import session
from flask_login import current_user
from datetime import datetime

def get_pubdash_events(cid):
    events = session.query(Pub_dash).filter_by(C_ID=cid,Data_Type=1).order_by(Pub_dash.Timestamp).all()
    return events

def get_pubdash_ads(cid):
    ads = session.query(Pub_dash).filter_by(C_ID=cid,Data_Type=2).order_by(Pub_dash.Timestamp).all()
    return ads

def get_pvtdash(cid):
    deadlines = session.query(Pvt_dash).filter_by(Cid=cid).order_by(Pvt_dash.Timestamp).all()
    return deadlines

def get_thisclub(cid):
    x = session.query(Club).filter_by(Club_ID=cid).first()
    return x

def get_userClubs():
    myclubs = session.query(Mem).filter_by(M_ID=current_user.id).all()
    return myclubs

def get_myDetails(mid,cid):
    x = session.query(Mem).filter_by(M_ID=mid, Club_ID=cid).first()
    return x

def get_allEvents():
    now = datetime.now()
    x = session.query(Pub_dash).filter_by(Data_Type=1).filter(Pub_dash.Timestamp > now).all()
    return x

def get_allAds():
    now = datetime.now()
    y= session.query(Pub_dash).filter_by(Data_Type=2).filter(Pub_dash.Timestamp > now).all()
    return y
    
def add_event(cid,content,type,timestamp,img_link):
    new_record = Pub_dash(C_ID=cid,Data= content,Data_Type=type,Timestamp=timestamp,Display_img=img_link)
    # # add the new record to the session
    session.add(new_record)
    # # commit the changes to the database
    session.commit()
    
def add_Pvtevent(cid,content,type,timestamp):
    new_record = Pvt_dash(Cid=cid,Data= content,Data_Type=type,Timestamp=timestamp)
    # # add the new record to the session
    session.add(new_record)
    # # commit the changes to the database
    session.commit()
    
def add_club(cname,content,img_link):
    new_record = Club(Club_Name=cname,Description= content,Display_img=img_link)
    # # add the new record to the session
    session.add(new_record)
    # # commit the changes to the database
    session.commit()
    