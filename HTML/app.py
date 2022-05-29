from flask import Flask, render_template
#Run with PythonData interpreter 3.7.0

app = Flask(__name__)


# Add route for home page
@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html')


# Add route to the about page
@app.route('/about')
def about():
    return render_template('about.html')


# Reroute all errors to 404
@app.errorhandler(404)
def page_not_found(error):
    return render_template('404.html'), 404


#Call to the main
if __name__ == '__main__':

    # Run this when running on LOCAL server...
    app.run(debug=True)

    # ...OR run this when PRODUCTION server.
    # app.run(debug=False)