#!/bin/bash

echo "🔄 Updating packages..."
python -m pip install --upgrade pip

echo "📦 Installing Python requirements..."
pip install -r requirements.txt

echo "🛑 Stopping existing Flask (if any)..."
# Note: pkill may not work on Windows Git Bash; skip if needed
taskkill //IM python.exe //F 2>nul || true

echo "🚀 Starting Flask app..."
python app.py &

echo "✅ Flask app started on http://localhost:5000"

