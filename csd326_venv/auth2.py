from flask import request,Flask , render_template, request, redirect, url_for
from flask_login import LoginManager, UserMixin, login_required, login_user, logout_user, current_user
from sqlalchemy import create_engine
from sqlalchemy.orm import Session
from sqlalchemy.ext.automap import automap_base
from models import Base, Mem, engine

# Configure login manager
login_manager = LoginManager()

# Connect to MySQL database on localhost
# engine = create_engine('mysql+mysqlconnector://')

#this session will be used in other files
session = Session(bind=engine)

# Reflect database and generate Base class
# Base = automap_base()
# Base.prepare(engine, reflect=True)

# # Assign the 'Member' table to the Member class
# Mem = Base.classes.Member

@login_manager.user_loader
def load_user(user_id):
    with Session(engine) as session:
        user = session.query(Mem).get(user_id)
        if user:
            loaded_user = User()
            loaded_user.id = user.M_No
            loaded_user.name = user.M_Name
            loaded_user.password = user.Password
            loaded_user.type = user.M_Type
            loaded_user.club_id = user.Club_ID
            
            return loaded_user
        else:
            return None



# Login function
def logger():
    
#
    if current_user.is_authenticated:
        return redirect(url_for('pvt_dashboard'))

    message = None
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        with Session(engine) as session:
            user = session.query(Mem).filter(Mem.M_Name == username).first()
            if user and user.Password == password:
                loaded_user = User()
                loaded_user.id = user.M_No
                loaded_user.name = user.M_Name
                loaded_user.password = user.Password
                loaded_user.type = user.M_Type
                loaded_user.club_id = user.Club_ID
                login_user(loaded_user)
                return redirect(url_for('pvt_dashboard'))
            else:
                message = 'Invalid username or password.'

    return render_template('login.html', message=message)
# Logout function
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))

# User class
class User(UserMixin):
    pass
