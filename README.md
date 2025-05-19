# Box Game Download Page - Local Deployment

A professional, sleek, and modern web page for downloading the Box Game. This branch is specifically designed for easy local deployment without requiring any external hosting services.

## Repository Structure

- `local-website/` - Contains the complete website with one-click launchers
- `box game_full_zip.zip` - The original game files
- `LOCAL_DEPLOYMENT_README.md` - Quick guide for local deployment
- `LOCAL_DEPLOYMENT_GUIDE.md` - Comprehensive guide for local deployment
- `BRANCH_INFO.md` - Information about all branches in this repository

## Quick Start Guide

1. **Navigate to the `local-website` folder**

2. **Run the website**:
   - **Windows**: Double-click `Launch_Website.bat`
   - **Mac/Linux**: Open terminal, navigate to the folder, and run:
     ```
     chmod +x Launch_Website.sh
     ./Launch_Website.sh
     ```

3. **Your default web browser will open automatically** with the Box Game download page

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
- One-click local deployment

## Local Deployment Options

### One-Click Launchers (Recommended)

The simplest way to run the website locally is using the provided launcher scripts in the `local-website` folder:

- **Windows**: `Launch_Website.bat`
- **Mac/Linux**: `Launch_Website.sh`

### Manual Launch Options

If the automatic launcher doesn't work, you have several alternatives:

#### Using Python Directly

```bash
# Navigate to the local-website folder
cd path/to/local-website

# Run the Python script
python open_website.py
```

#### Using Python's Built-in HTTP Server

```bash
# Navigate to the local-website folder
cd path/to/local-website

# Start the server
python -m http.server 8000
```

Then open your web browser and go to: http://localhost:8000

For more detailed instructions, please see:
- [LOCAL_DEPLOYMENT_README.md](LOCAL_DEPLOYMENT_README.md) - Quick local deployment guide
- [LOCAL_DEPLOYMENT_GUIDE.md](LOCAL_DEPLOYMENT_GUIDE.md) - Comprehensive local deployment guide

## Other Branches

This repository is organized into multiple branches, each serving a specific purpose:

### 1. `main`
- Focus: Vercel deployment of the game download page
- Use when: You want to deploy the download page to Vercel

### 2. `local-deployment` (Current Branch)
- Focus: Local deployment with one-click launchers
- Use when: You want to run the download page locally without cloud deployment

### 3. `mobile-app-new`
- Focus: Mobile app version of the Box Game built with Flutter
- Use when: You want to build and deploy the mobile app version

For more detailed information about the branches, see [BRANCH_INFO.md](BRANCH_INFO.md).

## Game Preview

<img width="960" alt="game" src="https://github.com/user-attachments/assets/1f6d6b22-cef1-4ae2-9307-d8bd0718908a" />
