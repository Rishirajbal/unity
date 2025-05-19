# Box Game Download Page - Vercel Deployment

A professional, sleek, and modern web page for downloading the Box Game. This branch is specifically optimized for deploying the game download page to Vercel.

## Repository Structure

- `game-download-page/` - Contains the complete website for downloading the game
- `box game_full_zip.zip` - The original game files
- `VERCEL_DEPLOYMENT_STEPS.md` - Step-by-step guide for Vercel deployment
- `GAME_DOWNLOAD_GUIDE.md` - Comprehensive guide for downloading and playing the game
- `BRANCH_INFO.md` - Information about all branches in this repository

## Game Download and Installation

For detailed instructions on downloading and playing the game, please see:
- [GAME_DOWNLOAD_GUIDE.md](GAME_DOWNLOAD_GUIDE.md)

### Quick Download Steps

1. Visit the game download website
2. Click the "Download Now" button
3. Extract the zip file
4. Run the game executable

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
- Optimized for Vercel deployment

## Vercel Deployment

### Quick Deployment Steps

1. Go to [Vercel](https://vercel.com/) and sign up/login
2. Import this GitHub repository
3. Set the root directory to `game-download-page`
4. Deploy!

### Detailed Deployment Instructions

For comprehensive deployment instructions, please see:
- [VERCEL_DEPLOYMENT_STEPS.md](VERCEL_DEPLOYMENT_STEPS.md) - Step-by-step guide for Vercel deployment

## Other Branches

This repository is organized into multiple branches, each serving a specific purpose:

### 1. `main` (Current Branch)
- Focus: Vercel deployment of the game download page
- Use when: You want to deploy the download page to Vercel

### 2. `local-deployment`
- Focus: Local deployment with one-click launchers
- Use when: You want to run the download page locally without cloud deployment

### 3. `mobile-app-new`
- Focus: Mobile app version of the Box Game built with Flutter
- Use when: You want to build and deploy the mobile app version

## How to Clone Specific Branches

### Clone All Branches

```bash
git clone https://github.com/Rishirajbal/unity.git
cd unity
```

### Clone a Specific Branch Only

```bash
git clone -b BRANCH_NAME --single-branch https://github.com/Rishirajbal/unity.git
```

Replace `BRANCH_NAME` with one of: `main`, `local-deployment`, or `mobile-app-new`.

For example, to clone only the mobile app branch:

```bash
git clone -b mobile-app-new --single-branch https://github.com/Rishirajbal/unity.git
```

For more detailed information about the branches, see [BRANCH_INFO.md](BRANCH_INFO.md).

## Local Development

To run the website locally from this branch:

```bash
cd game-download-page
python -m http.server 8000
```

Then visit `http://localhost:8000` in your browser.

## Game Preview

<img width="960" alt="game" src="https://github.com/user-attachments/assets/1f6d6b22-cef1-4ae2-9307-d8bd0718908a" />
