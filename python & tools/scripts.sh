flask run -h 0.0.0.0 -p 8888 --debug # running the app


virtualenv venv # creating a virtual environment

source ./venv/bin/activate
#freezing the requirements
python3.9 -m pip freeze > requirements.txt

python3.9 -m pip install flask-sqlalchemy flask-migrate


python3.9 -m pip install -r requirements.txt