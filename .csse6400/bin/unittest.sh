#!/bin/bash
#
# Install dependencies and run tests using pipenv

echo "Installing dependencies with pipenv..."
pipenv install || { echo "❌ pipenv install failed"; exit 1; }

echo "Running tests..."
pipenv run python -m unittest discover -s tests || { echo "❌ Tests failed"; }

echo
echo "✅ Script finished. Press any key to exit..."
read -n 1 -s