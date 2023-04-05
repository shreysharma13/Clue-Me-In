from importlib.metadata import metadata
from flask import Flask
from sqlalchemy import create_engine
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import select


app = Flask(__name__)
app.config['SECRET_KEY'] = "xxxxxxxx"




app.config["SQLALCHEMY_DATABASE_URI"] = "mysql+mysqlconnector://username:password@localhost/db_name"
# system_data = load_current_system_data()
engine = create_engine(url='mysql+mysqlconnector://username:password@localhost/db_name')
# meta = MetaData()
# meta.reflect(bind=engine)
conn = engine.connect()
db = SQLAlchemy(app)

metadata = SQLAlchemy.Metadata()
product = SQLAlchemy.Table('product',metadata,autoload=True,autoload_with=engine)
query = SQLAlchemy.select([product.type])
print(query)
print('query result')
print(engine.execute(query))

class Usertrial(db.Model):
    __tablename__ = 'usertrial'
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(64), unique=True, index=True)
    password = db.Column(db.String(128))

class Garbage(db.Model):
    __tablename__ = 'garbage'
    gar = db.Column(db.Integer,primary_key=True)
app.app_context().push()




users = Garbage.query.all()
print(type(users))
for user in users:
    print (user.gar)
if __name__ == '__main__':
    # app.debug = True
    app.run(debug = True)