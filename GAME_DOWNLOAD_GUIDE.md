# Box Game Download Guide

This guide provides step-by-step instructions for downloading and playing the Box Game.

## Download Instructions

### Method 1: Download from the Website

1. Visit the Box Game download page at [https://your-vercel-deployment-url.vercel.app](https://your-vercel-deployment-url.vercel.app)
2. Click the "Download Now" button
3. Save the zip file to your computer

### Method 2: Download Directly from GitHub

1. Go to the [GitHub repository](https://github.com/Rishirajbal/unity)
2. Make sure you're on the `main` branch
3. Download the `box game_full_zip.zip` file

## Installation Instructions

The Box Game is portable and doesn't require installation. Follow these steps to start playing:

### Windows

1. Locate the downloaded zip file (`box game_full_zip.zip`)
2. Right-click the file and select "Extract All..." or use a program like WinRAR or 7-Zip to extract
3. Choose a destination folder for the extracted files
4. Open the extracted folder
5. Double-click on `box game.exe` to start the game

### Mac

1. Locate the downloaded zip file (`box game_full_zip.zip`)
2. Double-click the zip file to extract it (or right-click and select "Extract")
3. Open the extracted folder
4. Right-click on the game executable and select "Open" (you may need to confirm opening an app from an unidentified developer)
5. If prompted with a security warning, go to System Preferences > Security & Privacy and click "Open Anyway"

### Linux

1. Locate the downloaded zip file (`box game_full_zip.zip`)
2. Extract the zip file using the command:
   ```bash
   unzip "box game_full_zip.zip" -d box-game
   ```
3. Navigate to the extracted directory:
   ```bash
   cd box-game
   ```
4. Make the game executable:
   ```bash
   chmod +x "box game.x86_64"
   ```
5. Run the game:
   ```bash
   ./"box game.x86_64"
   ```

## Game Controls

- **A key**: Move left
- **D key**: Move right
- **W key**: Stop movement

## Troubleshooting

### Game Won't Start

- **Windows**: Make sure you have the latest Visual C++ Redistributable installed
- **Mac**: Check if you need to allow apps from unidentified developers in your security settings
- **Linux**: Ensure you have the required libraries installed:
  ```bash
  sudo apt-get install libgtk-3-0 libglu1-mesa
  ```

### Graphics Issues

- Update your graphics drivers to the latest version
- Try running the game in windowed mode (press Alt+Enter)

### Game Crashes

- Make sure your system meets the minimum requirements
- Close other applications to free up memory
- Verify all game files were extracted correctly

## System Requirements

### Minimum Requirements

- **OS**: Windows 7/8/10, macOS 10.12+, or Ubuntu 16.04+
- **Processor**: Intel Core i3 or equivalent
- **Memory**: 4 GB RAM
- **Graphics**: Intel HD Graphics 4000 or equivalent
- **Storage**: 100 MB available space

### Recommended Requirements

- **OS**: Windows 10, macOS 10.15+, or Ubuntu 20.04+
- **Processor**: Intel Core i5 or equivalent
- **Memory**: 8 GB RAM
- **Graphics**: NVIDIA GeForce GTX 960 or equivalent
- **Storage**: 100 MB available space

## Need Help?

If you encounter any issues downloading or playing the game, please:

1. Check the troubleshooting section above
2. Visit our GitHub repository at [https://github.com/Rishirajbal/unity](https://github.com/Rishirajbal/unity)
3. Open an issue on GitHub if you're experiencing a problem not covered in this guide