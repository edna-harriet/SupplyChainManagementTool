from flask import Flask
from flask import render_template

app = Flask(__name__) #name is the file name called flasky.

@app.route('/') #method=['POST', 'GET']) #sets index function as the handler of all requests to the route URL address. route(decorator), app variable,route method.
# / stands for string url address.means that all requests to the url address will e handled by index function.

def index(): # views allow information to be displayed on the  webpage.
    return render_template("index.html" )   #render_template function returns the index html template.

@app.route('/ ') #('/login', methods = ['POST', 'GET'])

def login():
    if request.method == 'POST':
        return render_template("login.html") # login = login)

if __name__ == "__main__":
    app.run(debug=True) # flask will automatically restart on the development server when changes are made on the file.
