from flask import request,Flask , render_template, request, redirect, url_for
from flask_login import LoginManager, UserMixin, login_required, login_user, logout_user, current_user
from sqlalchemy import create_engine
from sqlalchemy.orm import Session
from sqlalchemy.ext.automap import automap_base
from models import Base, Login_user, engine

# Configure login manager
login_manager = LoginManager()
session = Session(bind=engine)



@login_manager.user_loader
def load_user(user_id):
    with Session(engine) as session:
        user = session.query(Login_user).get(user_id)
        if user:
            loaded_user = User()
            loaded_user.id = user.ID
            loaded_user.name = user.Username
            loaded_user.password = user.Password
            # loaded_user.type = user.M_Type
            # loaded_user.club_id = user.Club_ID
            
            return loaded_user
        else:
            return None



# Login function
def logger():
    if current_user.is_authenticated:
        return redirect(url_for('mypage'))

    message = None
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        with Session(engine) as session:
            #uses Members table 
            user = session.query(Login_user).filter(Login_user.Username == username).first()
            if user and user.Password == password:
                loaded_user = User()
                loaded_user.id = user.ID
                loaded_user.name = user.Username
                loaded_user.password = user.Password
                #remove U_type - redundeant column
                # loaded_user.type = user.U_Type
                # loaded_user.club_id = user.Club_ID
                login_user(loaded_user)
                return redirect(url_for('mypage'))
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
