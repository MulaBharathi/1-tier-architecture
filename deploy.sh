#!/bin/bash


sudo apt update -y


sudo apt install python3-pip -y

cd ~/1-tier-architecture || exit


pip3 install -r requirements.txt

# Kill any running Flask app
pkill -f "python3 app.py"

# Run the app in the background and log output
nohup python3 app.py > app.log 2>&1 &

