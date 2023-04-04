from flask import request,Flask , render_template, request, redirect, url_for
from flask_login import LoginManager, UserMixin, login_required, login_user, logout_user, current_user
from sqlalchemy import create_engine
from sqlalchemy.orm import Session
from sqlalchemy.ext.automap import automap_base

# Configure login manager
login_manager = LoginManager()

# Connect to MySQL database on localhost
engine = create_engine('mysql+mysqlconnector://username:password@localhost/db_name')

# Reflect database and generate Base class
Base = automap_base()
Base.prepare(engine, reflect=True)

# Assign the 'member' table to the Member class
Member = Base.classes.member
# var=Session(engine).query(Member).first()
# print(var.ID)
# print(type(var))

# Load user from database by id
@login_manager.user_loader
def load_user(user_id):
    with Session(engine) as session:
        user = session.query(Member).get(user_id)
        if user:
            loaded_user = User()
            loaded_user.id = user.ID
            loaded_user.name = user.name
            loaded_user.password = user.password
            loaded_user.type = user.type
            loaded_user.club_id = user.club_id
            return loaded_user
        else:
            return None

# Login function
def logger():
    # if request.method == 'POST':
    #     username = request.form['username']
    #     password = request.form['password']
    #     with Session(engine) as session:
    #         user = session.query(Member).filter(Member.name == username).first()
    #         if user and user.password == password:
    #             loaded_user = User()
    #             loaded_user.id = user.id
    #             loaded_user.name = user.name
    #             loaded_user.password = user.password
    #             loaded_user.type = user.type
    #             loaded_user.club_id = user.club_id
    #             login_user(loaded_user)
    #             return redirect(url_for('home'))
    #         else:
    #             return render_template('auth.html', message='Invalid username or password.')
    # else:
    #     return render_template('login.html')
#
    if current_user.is_authenticated:
        return redirect(url_for('pvt_dashboard'))

    message = None
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        with Session(engine) as session:
            user = session.query(Member).filter(Member.name == username).first()
            if user and user.password == password:
                loaded_user = User()
                loaded_user.id = user.ID
                loaded_user.name = user.name
                loaded_user.password = user.password
                loaded_user.type = user.type
                loaded_user.club_id = user.club_id
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
