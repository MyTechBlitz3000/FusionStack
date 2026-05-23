#!/bin/bash

echo "🚀 Starting NovaFusionDB..."

echo ""
echo "📦 Installing Python dependencies..."
pip install -r backend/requirements.txt

echo ""
echo "🗄️ Starting FastAPI backend..."
cd backend

python -m uvicorn main:app \
--host 0.0.0.0 \
--port 8000 \
--reload
