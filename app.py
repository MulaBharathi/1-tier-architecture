from flask import Flask, jsonify
app = Flask(__name__)
@app.route('/')
def home():
    return jsonify({"message": "Hello from 1-tier flask ap on aws ec2!"})
