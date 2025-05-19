# Box Game Download Page - Local Deployment

A professional, sleek, and modern web page for downloading the Box Game, optimized for local deployment.

## Running the Website Locally

### Prerequisites
- Python 3.x installed on your computer
- The files in this directory downloaded to your local machine

### Method 1: Using Python's Built-in HTTP Server

1. Open a command prompt or terminal
2. Navigate to the directory containing these files:
   ```
   cd path/to/local-website
   ```
3. Run the Python HTTP server:
   ```
   python -m http.server 8000
   ```
   (If you're using Python 2, use `python -m SimpleHTTPServer 8000` instead)
4. Open your web browser and go to:
   ```
   http://localhost:8000
   ```

### Method 2: Using the Included Batch File (Windows Only)

1. Simply double-click the `run_server.bat` file
2. A browser window should automatically open with the website

### Method 3: Using the Included Shell Script (Mac/Linux)

1. Open a terminal
2. Navigate to this directory:
   ```
   cd path/to/local-website
   ```
3. Make the script executable:
   ```
   chmod +x run_server.sh
   ```
4. Run the script:
   ```
   ./run_server.sh
   ```

## Troubleshooting

### Port Already in Use
If you see an error like "Port 8000 is already in use", try a different port:
```
python -m http.server 8080
```
Then access the site at `http://localhost:8080`

### Python Not Found
If you get a "Python not found" error, make sure Python is installed and in your system PATH. You can verify this by running:
```
python --version
```

### Browser Can't Connect
If your browser can't connect to the server:
1. Make sure the server is running (you should see a message like "Serving HTTP on 0.0.0.0 port 8000")
2. Try using `127.0.0.1` instead of `localhost`: `http://127.0.0.1:8000`
3. Check if any firewall or antivirus software is blocking the connection

## Game Controls

- "A" for left movement
- "D" for right movement
- "W" for stopping

<img width="960" alt="game" src="https://github.com/user-attachments/assets/1f6d6b22-cef1-4ae2-9307-d8bd0718908a" />
