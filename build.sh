#!/usr/bin/env bash
# exit on error
set -o errexit

echo "🚀 Starting build process..."

echo "📦 Installing dependencies..."
pip install -r requirements.txt

echo "🔄 Making migrations..."
python manage.py makemigrations --no-input

echo "🗃️ Running migrations..."
python manage.py migrate --no-input

echo "📁 Collecting static files..."
python manage.py collectstatic --no-input

echo "✅ Build completed successfully!"