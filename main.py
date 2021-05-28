from flask import Flask, render_template, request, flash
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
from flask_googlemaps import GoogleMaps
from flask_googlemaps import get_coordinates
#import googlemaps
#from geopy import Nominatim

#gmaps = googlemaps.Client(key='')

app = Flask(__name__)

#API_KEY = ''
app.secret_key = 'super-secret-key'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/new_project'
#app.config['GOOGLEMAPS_KEY'] = ""
db: SQLAlchemy = SQLAlchemy(app)

local_server = True

app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL=True,
    MAIL_USERNAME='aayushiiitcse1@gmail.com',
    MAIL_PASSWORD=''
)

mail = Mail(app)
#GoogleMaps(app)


class Busbooking(db.Model):
    s_no = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=False, nullable=False)
    email = db.Column(db.String(120), nullable=False)
    website = db.Column(db.String(120), nullable=False)
    destination = db.Column(db.String(120), nullable=False)
    arrival = db.Column(db.String(120), nullable=False)
    cost = db.Column(db.Integer, nullable=False)
    date_of_depr = db.Column(db.Date(), nullable=True)
    time_of_depr = db.Column(db.Time(), nullable=True)
    msg = db.Column(db.String(120), nullable=False)
    phone_num = db.Column(db.String(12), nullable=False)
    available = db.Column(db.String(12), nullable=False)


class Ticketbooking(db.Model):
    s_no_s = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=False, nullable=False)
    email = db.Column(db.String(120), nullable=False)
    destination = db.Column(db.String(120), nullable=False)
    arrival = db.Column(db.String(120), nullable=False)
    no_of_passengers = db.Column(db.Integer, nullable=False)
    date_of_travel = db.Column(db.Date(), nullable=True)
    phone_num = db.Column(db.String(12), nullable=False)


@app.route("/")
def home():
    return render_template('index.html')


@app.route("/searchresults", methods=["GET", "POST"])
def searchresults():
    if request.method == "POST":
        dest_country = request.form.get('country')
        dest_state = request.form.get('state')
        dest_city = request.form.get('city')
        dest_Current_city = request.form.get('Current_city')
        date = request.form.get('check_out')

        booking = Busbooking.query.filter(Busbooking.destination == dest_city). \
            filter(Busbooking.arrival == dest_Current_city). \
            filter(Busbooking.available == "YES"). \
            filter(Busbooking.date_of_depr >= date).all()

        return render_template('tabel.html', booking=booking)
    return render_template('tabel.html')


@app.route("/busbooking", methods=["GET", "POST"])
def busbooking():
    if request.method == "POST":
        name = request.form.get('name')
        email = request.form.get('email')
        website = request.form.get('website')
        destination = request.form.get('destination')
        arrival = request.form.get('arrival')
        cost = request.form.get('cost')
        date_of_depr = request.form.get('date_of_depr')
        time_of_depr = request.form.get('time_of_depr')
        msg = request.form.get('message')
        phone_num = request.form.get('phone_num')
        available = "YES"

        entry = Busbooking(name=name, email=email, website=website, destination=destination, arrival=arrival, cost=cost,
                           date_of_depr=date_of_depr,
                           time_of_depr=time_of_depr, msg=msg, phone_num=phone_num, available=available)
        db.session.add(entry)
        db.session.commit()
        flash("Your information has been saved !", 'success')
        return render_template('index.html')

    return render_template('busbbook.html')


@app.route("/ticketbooking/<string:s_no>", methods=["GET", "POST"])
def ticketbooking(s_no):
    if request.method == "POST":
        bus = Busbooking.query.filter_by(s_no=s_no).first()
        volunteer_email = bus.email
        print(volunteer_email)
        bus.available = "NO"

        name = request.form.get('name')
        email = request.form.get('email')
        destination = request.form.get('destination')
        arrival = request.form.get('arrival')
        no_of_passengers = request.form.get('cost')
        date_of_travel = request.form.get('date_of_travel')
        phone_num = request.form.get('phone_num')

        entry = Ticketbooking(name=name, email=email, destination=destination, arrival=arrival,
                              no_of_passengers=no_of_passengers,
                              date_of_travel=date_of_travel, phone_num=phone_num)
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from ' + name,
                          sender='aayushiiitcse1@gmail.com',
                          recipients=[volunteer_email, email],
                          body="Ticket has been booked " + "\nPhone no is" + phone_num
                          )
        flash("Your ticket has been booked Check your mail !", 'success')
        return render_template('index.html')

    return render_template('ticketbook.html', s_no=s_no)


@app.route("/product/<string:s_no>", methods=['GET', 'POST'])
def product_route(s_no):
    product = Busbooking.query.filter_by(s_no=s_no).first()
    '''des = product.destination
    print(des)
    arv = product.arrival
    print(arv)
    #geolocator = Nominatim(user_agent="project3")
    location = geolocator.geocode("Laksar")
    print(location.latitude)
    #geocode_result = gmaps.geocode('Netaji Subhash Engineering College Kolkata')
    print("Latitude = {}, Longitude = {}".format(location.latitude, location.longitude))'''
    return render_template('product.html', product=product)


app.run(debug=True)
