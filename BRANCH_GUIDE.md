# Branch Guide for Box Game Website

This repository contains multiple branches with different deployment options for the Box Game website.

## Available Branches

### 1. `main` Branch

The main branch contains:
- The original game files
- The web download page in `game-download-page/` directory
- Configuration for GitHub Pages deployment (in `docs/` directory)
- Configuration for Vercel deployment
- Comprehensive deployment guides

### 2. `local-deployment` Branch

The local-deployment branch contains:
- The original game files
- A simplified website structure in `local-website/` directory
- Scripts for running the website locally using Python
- One-click launchers for Windows and Mac/Linux

## How to Switch Branches

### Using Git Command Line

```bash
# Clone the repository (if you haven't already)
git clone https://github.com/Rishirajbal/unity.git
cd unity

# Switch to the main branch
git checkout main

# OR switch to the local-deployment branch
git checkout local-deployment
```

### Using GitHub Web Interface

1. Go to the repository: https://github.com/Rishirajbal/unity
2. Click on the branch dropdown (it will say "main" by default)
3. Select the branch you want to view
4. You can then download the ZIP of that branch using the "Code" button

## Recommended Branch

- If you want to host the website online: Use the `main` branch
- If you want to run the website locally on your computer: Use the `local-deployment` branch

## Downloading Without Git

If you don't want to use Git, you can download each branch directly:

1. Main branch: https://github.com/Rishirajbal/unity/archive/refs/heads/main.zip
2. Local deployment branch: https://github.com/Rishirajbal/unity/archive/refs/heads/local-deployment.zip