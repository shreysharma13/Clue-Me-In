from models import Pub_dash,Pvt_dash , Base, Mem, Club
from auth2 import session
from flask_login import current_user

def get_pubdash(cid):
    events = session.query(Pub_dash).filter_by(C_ID=cid).order_by(Pub_dash.Timestamp).all()
    return events

def get_pvtdash(cid):
    deadlines = session.query(Pvt_dash).filter_by(Cid=cid).order_by(Pvt_dash.Timestamp).all()
    return deadlines

def get_thisclub(cid):
    x = session.query(Club).filter_by(Club_ID=cid).first()
    return x

def get_userClubs():
    myclubs = session.query(Mem).filter_by(M_ID=current_user.id).all()
    return myclubs
