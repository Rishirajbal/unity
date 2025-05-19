#!/bin/bash

echo "Starting Box Game Download Page server..."
echo ""
echo "The website will be available at: http://localhost:8000"
echo ""
echo "Press Ctrl+C to stop the server when you're done."
echo ""

# Try to start the server with Python 3
if command -v python3 &>/dev/null; then
    python3 -m http.server 8000
# Try with just 'python' (which might be Python 3)
elif command -v python &>/dev/null; then
    # Check if it's Python 3
    PYTHON_VERSION=$(python --version 2>&1)
    if [[ $PYTHON_VERSION == *"Python 3"* ]]; then
        python -m http.server 8000
    else
        # It's Python 2
        python -m SimpleHTTPServer 8000
    fi
else
    echo ""
    echo "Error: Python not found."
    echo "Please install Python and try again."
    echo ""
    exit 1
fi

# If we get here, the server was stopped
echo ""
echo "Server stopped."