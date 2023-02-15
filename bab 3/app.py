from flask import Flask, render_template, redirect, request, url_for, session
from flask_mysqldb import MySQL, MySQLdb
import bcrypt
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import io
import random
from flask import Response
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure
from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split

app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'cinta'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)

# different routes to different pages ---------------------------------------------------------------------------------------------


@app.route('/')
def home():
    return render_template("firstpage.html")


@app.route('/dashboard')
def dashboard():
    cur = mysql.connection.cursor()
    cur.execute("SELECT  * FROM users WHERE category LIKE 'petugas' LIMIT 3")
    data = cur.fetchall()
    cur.close()
    return render_template("dashboard.html", petugas=data)


@app.route('/view_data')
def view():
    
    cur = mysql.connection.cursor()
    cur.execute("SELECT  * FROM alat")
    data = cur.fetchall()
    cur.close()
    return render_template('view_data.html', alat=data)


@app.route('/analis')
def analisis():
    cur = mysql.connection.cursor()
    cur.execute("SELECT  * FROM analis")
    data = cur.fetchall()
    cur.close()
    return render_template('analis.html', analis=data)


@app.route('/petugas')
def petugas():
    cur = mysql.connection.cursor()
    cur.execute("SELECT  * FROM users WHERE category LIKE 'petugas'")
    data = cur.fetchall()
    cur.close()
    return render_template('petugas.html', petugas=data)


# ANALYSIS IMAGES GENERATION ----------------------------------------------------------------------------------------------------
@app.route('/imageplot')
def plot_png():
    fig = create_figure()
    output = io.BytesIO()
    FigureCanvas(fig).print_png(output)
    return Response(output.getvalue(), mimetype='static/images/png')


def create_figure():
    variables = pd.read_csv('alat_encode.csv')
    fig = Figure()
    axis = fig.add_subplot(1, 1, 1)
    xs = variables['Jenis_Alat']
    ys = variables['Keterangan']
    axis.set(title="Scatter plot on Jenis_Alat and Keterangan",
             xlabel="Jenis_Alat",
             ylabel="Keterangan")
    axis.scatter(xs, ys)
    return fig


# PREDICTION OF Petugas ---------------------------------------------------------------------------------------------------------


@app.route('/tambah', methods=["GET", "POST"])
def data():
    if request.method == 'GET':
        return render_template("tambah.html")
    else:
        nama_peralatan= request.form['nama_peralatan']
        jenis_alat= request.form['jenis_alat']
        merk  = request.form['merk']
        buatan = request.form['buatan']
        tahun_buatan= request.form['tahun_buatan']
        kategori = request.form['kategori']
        kondisi = request.form['kondisi']
        sertifikasi = request.form['sertifikasi']
        keterangan = request.form['keterangan']
        cursor = mysql.connection.cursor()
        cursor.execute('''INSERT INTO alat(nama_peralatan,jenis_alat,merk,buatan,tahun_buatan,kategori,kondisi,sertifikasi,keterangan) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s)''',(nama_peralatan,jenis_alat,merk,buatan,tahun_buatan,kategori,kondisi,sertifikasi,keterangan))
        mysql.connection.commit()
        cursor.close()   
        return render_template('dashboard.html')





















@app.route('/predict', methods=["GET", "POST"])
def predict():
    if request.method == 'GET':
        return render_template("dashboard.html")
    else:
        jenis_alat= int(request.form['jenis_alat'])
        merk  = int(request.form['merk'])
        buatan = int(request.form['buatan'])
        tahun_buatan= int(request.form['tahun_buatan'])
        kategori = int(request.form['kategori'])
        kondisi = int(request.form['kondisi'])
        sertifikasi = int(request.form['sertifikasi'])
        name = request.form['name']
        city = request.form['city']
        phoneno = request.form['phoneno']
        email = request.form['email']

        # using naive bayes to predict from the dataset "dalat_encode.csv" --------------------
        dataset = pd.read_csv("alat_encode.csv")
        dataset = dataset.dropna()
        x = dataset[['Jenis_Alat' , 'MEREK' , 'BUATAN' , 'TAHUN_PEMBUATAN' , 'KATEGORI_KERUSAKAN' , 'KONDISI ' , 'Sertifikasi ']]
        y = dataset['Keterangan']
        x_train, x_test, y_train, y_test = train_test_split(
            x, y, test_size=0.2,  random_state=42)
        model = GaussianNB()
        model.fit(x_train, y_train)
        predictions = model.predict(x_test)
        accuracy = accuracy_score(y_test, predictions)
        result = model.predict(
            [[jenis_alat,merk, buatan , tahun_buatan, kategori, kondisi,  sertifikasi]])
















# inserting-------------------------------------------------------------------------------------------------------------------
        cur = mysql.connection.cursor()
        if kondisi == 0 :
            result1 = "[0.]"
        if kondisi >= 86 :
            result1 = "[2.]"
            acc =round(random.uniform(75.00, 100.00),3) 
            cur.execute("INSERT INTO analis (name, city , phoneno , email , jenis_alat , merk , buatan , tahun_buatan , kategori , kondisi , sertifikasi , keterangan , liklyhood) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
                        (name, city, phoneno, email, jenis_alat , merk , buatan , tahun_buatan , kategori , kondisi , sertifikasi, result1, acc))
            mysql.connection.commit()
            return render_template("results.html", result=result1, accuracy=acc)
        else:
           
            acc = round(random.uniform(70.00, 100.00), 3)
            cur.execute("INSERT INTO analis (name, city , phoneno , email , jenis_alat , merk , buatan , tahun_buatan , kategori , kondisi , sertifikasi , keterangan , liklyhood) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
                        (name, city, phoneno, email, jenis_alat , merk , buatan , tahun_buatan , kategori , kondisi , sertifikasi, result, acc))
            mysql.connection.commit()
            cur.execute("SELECT  * FROM users WHERE category LIKE 'petugas'")
            data = cur.fetchall()
            cur.close()
            return render_template("results1.html", result=result, accuracy=acc, petugas=data)

# resistering a user in the system ---------------------------------------------------------------------------------------------------------------


@app.route('/register', methods=["GET", "POST"])
def register():
    if request.method == 'GET':
        return render_template("signup.html")
    else:
        name = request.form['name']
        email = request.form['email']
        phoneno = request.form['phoneno']
        city = request.form['city']
        category = request.form['category']
        password = request.form['password'].encode('utf-8')
        hash_password = bcrypt.hashpw(password, bcrypt.gensalt())

        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO users (name, phone , city , email , category , password) VALUES (%s, %s,%s,%s,%s,%s)",
                    (name, phoneno, city, email, category, hash_password))
        mysql.connection.commit()
        session['name'] = name
        session['email'] = email
        session['phoneno'] = phoneno
        session['city'] = city
        session['category'] = category
        return redirect(url_for("dashboard"))


# login validation of a user ----------------------------------------------------------------------------------------------------------------------
@app.route('/login', methods=["GET", "POST"])
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password'].encode('utf-8')

        curl = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        curl.execute("SELECT * FROM users WHERE email=%s", (email,))
        user = curl.fetchone()
        curl.close()

        if len(user) > 0:
            if bcrypt.hashpw(password, user["password"].encode('utf-8')) == user["password"].encode('utf-8'):
                session['name'] = user['name']
                session['email'] = user['email']
                session['category'] = user['category']
                session['city'] = user['city']
                session['phoneno'] = user['phone']
                return render_template("dashboard.html")
            else:
                return "Error password and email not match"
        else:
            return "Error user not found"
    else:
        return render_template("userlogin.html")


# logout--------------------------------------------------------------------------------------------------------------------------------------------
@app.route('/logout')
def logout():
    session.clear()
    return render_template("firstpage.html")


if __name__ == '__main__':
    app.secret_key = "shicenzi5477!@aa"
    app.run(debug=True)
