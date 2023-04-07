from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine

# create an engine object
engine = create_engine('mysql+mysqlconnector://username:password@localhost/db_name')

# create a session object
session = Session(engine)

# create an automap base
Base = automap_base()

# reflect the tables in the database
Base.prepare(engine, reflect=True)

# Assign the 'Member' table to the Member class
Mem = Base.classes.Member

# get the Club class from the automap base
Club = Base.classes.Club

















# from flask_login import UserMixin
# from flask_sqlalchemy import SQLAlchemy
# from flask import Blueprint


# db = SQLAlchemy(auth)
# class User(UserMixin, db.Model):
#     id = db.Column(db.Integer, primary_key=True) # primary keys are required by SQLAlchemy
#     email = db.Column(db.String(100), unique=True)
#     password = db.Column(db.String(100))
#     name = db.Column(db.String(1000))