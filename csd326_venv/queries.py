from models import Pub_dash , Base
from auth2 import session

def get_pubdash(cid):
    events = session.query(Pub_dash).filter_by(C_ID=cid).order_by(Pub_dash.Timestamp).all()
    return events

def get_pvtdash():
    pass