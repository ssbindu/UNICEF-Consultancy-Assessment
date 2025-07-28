#!/bin/bash

# Create virtual environment
python3 -m venv venv

# Activate the environment (for Linux/macOS)
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install required packages
pip install -r requirements.txt
