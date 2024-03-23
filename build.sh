#!/bin/bash

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install project dependencies
pip install -r requirements.txt

# Deactivate the virtual environment
deactivate

# Build static files (if applicable)
python manage.py collectstatic --noinput

# Perform migrations (if applicable)
python manage.py migrate
