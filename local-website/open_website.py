#!/usr/bin/env python
"""
This script starts a local web server and opens the Box Game Download Page in a web browser.
"""

import http.server
import socketserver
import webbrowser
import os
import threading
import time
import sys

# Configuration
PORT = 8000
DIRECTORY = os.path.dirname(os.path.abspath(__file__))
URL = f"http://localhost:{PORT}"

def open_browser():
    """Wait a moment and then open the browser"""
    time.sleep(1.5)  # Give the server a moment to start
    print(f"Opening {URL} in your default browser...")
    webbrowser.open(URL)

def start_server():
    """Start the HTTP server"""
    os.chdir(DIRECTORY)  # Change to the directory containing the website files
    
    # Set up the server
    Handler = http.server.SimpleHTTPRequestHandler
    httpd = socketserver.TCPServer(("", PORT), Handler)
    
    print(f"Box Game Download Page")
    print(f"======================")
    print(f"Server started at: {URL}")
    print(f"Press Ctrl+C to stop the server when you're done.")
    
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nShutting down the server...")
        httpd.shutdown()
        print("Server stopped.")

if __name__ == "__main__":
    # Start a thread to open the browser
    browser_thread = threading.Thread(target=open_browser)
    browser_thread.daemon = True
    browser_thread.start()
    
    # Start the server in the main thread
    start_server()