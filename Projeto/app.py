from flask import Flask, render_template, redirect 
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime


app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///tabela.db'
db = SQLAlchemy(app)


class CLIENTE(db.Model):
    id_cliente = db.Column(db.Integer, primary_key=True, autoincrement=True)
    nome = db.Column(db.String(100), nullable=False)
    telefone = db.Column(db.String(15), unique=True, nullable=False)
    email = db.Column(db.String(100), unique=True)
    cpf = db.Column(db.String(14), unique=True)
    data_cadastro = db.Column(db.DateTime(), default=datetime.now)

@app.route('/')
def index():
    clientes = CLIENTE.query.all()
    return render_template('index.html' , clientes=clientes)

if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=True, port=5153)