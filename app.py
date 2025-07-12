from Flask import Flask, jsonify
app = Flask(__name__)
@app.route('/')
def home():
    return jsonify({"message": "Hello from 1-tier flask ap on aws ec2!"})
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
