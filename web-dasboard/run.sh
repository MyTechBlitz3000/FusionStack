#!/bin/bash

echo "🚀 NovaFusionDB Booting..."

if ! command -v python3 &> /dev/null
then
    echo "❌ Python3 not installed."
    exit
fi

if ! command -v pip &> /dev/null
then
    echo "❌ pip not installed."
    exit
fi

echo "📦 Installing dependencies..."
pip install -r backend/requirements.txt

echo "🗄️ Launching Backend..."

cd backend || exit

python3 -m uvicorn main:app \
--host 0.0.0.0 \
--port 8000 \
--reload
