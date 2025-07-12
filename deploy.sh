#!/bin/bash


sudo apt update -y


sudo apt install python3-pip -y

cd ~/1-tier-architecture || exit


pip3 install -r requirements.txt

pip install gunicorn 

# Kill any running Flask app
pkill gunicorn || true

# Run app with gunicorn in background
gunicorn -w 4 -b 0.0.0.0:5000 app:app --daemon

