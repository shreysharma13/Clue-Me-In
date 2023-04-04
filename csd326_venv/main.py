from crypt import methods
from flask import Flask, render_template, request, redirect, url_for
from flask_login import LoginManager, current_user, login_user, logout_user, login_required
from auth2 import login_manager, logger, logout, User

app = Flask(__name__)
app.secret_key = 'mysecretkey'

# Configure login manager
login_manager.init_app(app)

@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('home'))

@app.route('/secret')
def secret():
    return render_template('secret.html')

@app.route('/',methods=['GET', 'POST'])
def home():
    return render_template('index.html',clubs =['E-Cell','finvest','Snuphoria','Wula','GDSC','Nexus','DebSoc'])

@app.route('/public_dashboard/<club_id>',methods=['GET', 'POST'])
def public_dashboard(club_id):
    return render_template('dash.html',club_id = club_id)


# trial for login page ,snippet from flask official page
@app.route('/login', methods=['GET','POST'])
def login():
    return logger()
    # if current_user.is_authenticated:
    #     return redirect(url_for('secret'))

    # message = None
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
    #             message = 'Invalid username or password.'

    # return render_template('login.html', message=message)
    
    
# def login():
#     username = request.form['username']
#     password = request.form['password']

#     # Check if the username and password are valid
#     if username == 'myuser' and password == 'mypassword':
#         return redirect(url_for('dashboard'))
#     else:
#         return redirect(url_for('home'))

@app.route('/pvt_dashboard')
def pvt_dashboard():
    return render_template('private_dashboard.html')

# snippet end

if __name__ == '__main__':
    app.debug = True
    app.run()
    app.run(debug = True)
