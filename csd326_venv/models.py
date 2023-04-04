from flask_login import UserMixin
from flask_sqlalchemy import SQLAlchemy
from flask import Blueprint
auth = Blueprint('auth', __name__)

db = SQLAlchemy(auth)
class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True) # primary keys are required by SQLAlchemy
    email = db.Column(db.String(100), unique=True)
    password = db.Column(db.String(100))
    name = db.Column(db.String(1000))