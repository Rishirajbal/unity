#!/bin/bash

echo "Starting Box Game Download Page..."
echo ""

# Try to run with Python 3
if command -v python3 &>/dev/null; then
    python3 open_website.py
# Try with just 'python' (which might be Python 3)
elif command -v python &>/dev/null; then
    python open_website.py
else
    echo ""
    echo "Python not found or error occurred."
    echo "Falling back to basic server..."
    echo ""
    bash run_server.sh
fi