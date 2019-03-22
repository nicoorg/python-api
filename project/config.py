import os

basedir = os.path.abspath(os.path.dirname(__file__))
username = "nico"
password = "nico"
dbhost = "postdb"
database = "Mydatabase"
SQLALCHEMY_ECHO = False
SQLALCHEMY_TRACK_MODIFICATIONS = True
SQLALCHEMY_DATABASE_URI = "sqlite:///../app.db"
