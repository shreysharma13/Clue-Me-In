from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine

# create an engine object
engine = create_engine('mysql+mysqlconnector://username:password@localhost/database')
# username:password@localhost/database
# create a session object
session = Session(engine)

# create an automap base
Base = automap_base()

# reflect the tables in the database
Base.prepare(engine, reflect=True)

# uses Login_cred to authenticate user 
# if user id = 0 , then is admin

Login_user = Base.classes.Login_cred

# get the Club class from the automap base
Club = Base.classes.Club

Pub_dash = Base.classes.Public_Dash


Pvt_dash = Base.classes.Pvt_Dash

# Members table includes m_id and c_id ie which club who belongs to with the rank ie core(2) or member(1, default).
Mem = Base.classes.Members

















# from flask_login import UserMixin
# from flask_sqlalchemy import SQLAlchemy
# from flask import Blueprint


# db = SQLAlchemy(auth)
# class User(UserMixin, db.Model):
#     id = db.Column(db.Integer, primary_key=True) # primary keys are required by SQLAlchemy
#     email = db.Column(db.String(100), unique=True)
#     password = db.Column(db.String(100))
#     name = db.Column(db.String(1000))