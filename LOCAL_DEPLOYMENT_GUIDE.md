# Comprehensive Local Deployment Guide

This guide provides detailed instructions for running the Box Game download page locally on your computer without requiring any external hosting services.

## Prerequisites

- A computer with Windows, macOS, or Linux
- Python 3.x installed (Python 3.6 or newer recommended)
- Basic familiarity with using terminal/command prompt (for manual methods only)

## Deployment Methods

### Method 1: One-Click Launchers (Recommended)

The simplest way to run the website locally is using the provided launcher scripts:

#### Windows

1. Navigate to the `local-website` folder in File Explorer
2. Double-click the `Launch_Website.bat` file
3. Your default web browser will open automatically with the Box Game download page

#### macOS/Linux

1. Open Terminal
2. Navigate to the `local-website` folder:
   ```bash
   cd path/to/unity/local-website
   ```
3. Make the launcher script executable:
   ```bash
   chmod +x Launch_Website.sh
   ```
4. Run the launcher:
   ```bash
   ./Launch_Website.sh
   ```
5. Your default web browser will open automatically with the Box Game download page

### Method 2: Using Python Directly

If the launchers don't work, you can run the Python script directly:

1. Open Terminal (macOS/Linux) or Command Prompt (Windows)
2. Navigate to the `local-website` folder:
   ```bash
   cd path/to/unity/local-website
   ```
3. Run the Python script:
   ```bash
   python open_website.py
   ```
   or
   ```bash
   python3 open_website.py
   ```

### Method 3: Using Python's Built-in HTTP Server

You can also use Python's built-in HTTP server:

1. Open Terminal (macOS/Linux) or Command Prompt (Windows)
2. Navigate to the `local-website` folder:
   ```bash
   cd path/to/unity/local-website
   ```
3. Start the server:
   ```bash
   python -m http.server 8000
   ```
   or
   ```bash
   python3 -m http.server 8000
   ```
4. Open your web browser and go to: http://localhost:8000

### Method 4: Using the Server Scripts

The repository includes dedicated server scripts:

#### Windows

1. Navigate to the `local-website` folder in File Explorer
2. Double-click the `run_server.bat` file
3. Open your web browser and go to: http://localhost:8000

#### macOS/Linux

1. Open Terminal
2. Navigate to the `local-website` folder:
   ```bash
   cd path/to/unity/local-website
   ```
3. Make the server script executable:
   ```bash
   chmod +x run_server.sh
   ```
4. Run the server:
   ```bash
   ./run_server.sh
   ```
5. Open your web browser and go to: http://localhost:8000

## Troubleshooting

### Port Already in Use

If you see an error about port 8000 being in use:

1. Close any other applications that might be using port 8000
2. Edit the Python script to use a different port:
   - Open `open_website.py` in a text editor
   - Change `PORT = 8000` to `PORT = 8080` (or any other available port)
   - Save and run again

### Python Not Found

If you get a "Python not found" error:

1. Make sure Python is installed on your computer
2. Make sure Python is in your system PATH
3. You can download Python from [python.org](https://www.python.org/downloads/)

### Browser Doesn't Open Automatically

If your browser doesn't open automatically:

1. Make sure the server is running (you should see a message like "Serving at port 8000")
2. Manually open your browser and go to: http://localhost:8000

### File Not Found Errors

If you see "File not found" errors:

1. Make sure you're running the scripts from the `local-website` folder
2. Check that all files are present in the `local-website` folder
3. Try running the server using Method 3 (Python's built-in HTTP server)

## Customizing the Website

If you want to customize the website:

1. Edit the HTML, CSS, and JavaScript files in the `local-website` folder
2. Refresh your browser to see the changes

## Security Considerations

The local web server is intended for personal use only and should not be exposed to the internet. By default, it only accepts connections from your own computer (localhost).

If you need to access the website from other devices on your local network:

1. Use Python's HTTP server with the following command:
   ```bash
   python -m http.server 8000 --bind 0.0.0.0
   ```
2. Find your computer's IP address:
   - Windows: Run `ipconfig` in Command Prompt
   - macOS/Linux: Run `ifconfig` or `ip addr` in Terminal
3. On other devices, go to: http://YOUR_IP_ADDRESS:8000

## Stopping the Server

To stop the server:

1. Go to the terminal/command prompt window where the server is running
2. Press Ctrl+C
3. Close the terminal/command prompt window