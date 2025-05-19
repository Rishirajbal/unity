# Box Game - Local Deployment

This branch contains a simplified version of the Box Game download website that can be easily run on any computer with Python installed, without requiring any external hosting.

## Quick Start Guide

1. **Download this repository**:
   - Click the green "Code" button on GitHub
   - Select "Download ZIP"
   - Extract the ZIP file to your computer

2. **Navigate to the `local-website` folder**

3. **Run the website**:
   - **Windows**: Double-click `Launch_Website.bat`
   - **Mac/Linux**: Open terminal, navigate to the folder, and run:
     ```
     chmod +x Launch_Website.sh
     ./Launch_Website.sh
     ```

4. **Your default web browser will open automatically** with the Box Game download page

## Manual Launch Options

If the automatic launcher doesn't work, you have several alternatives:

### Using Python Directly

```bash
# Navigate to the local-website folder
cd path/to/local-website

# Run the Python script
python open_website.py
```

### Using Python's Built-in HTTP Server

```bash
# Navigate to the local-website folder
cd path/to/local-website

# Start the server
python -m http.server 8000
```

Then open your web browser and go to: http://localhost:8000

### Using the Provided Scripts

- **Windows**: Run `run_server.bat`
- **Mac/Linux**: Run `run_server.sh` (make it executable first with `chmod +x run_server.sh`)

## Troubleshooting

### Port Already in Use

If you see an error about port 8000 being in use, you can:

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

## Game Controls

- "A" for left movement
- "D" for right movement
- "W" for stopping

## Website Features

- Professional, sleek, and modern design
- Responsive layout that works on all devices
- Easy game download functionality
- Game information and instructions
- Animated UI elements for better user experience