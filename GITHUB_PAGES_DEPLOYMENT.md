# Deploying to GitHub Pages

This guide explains how to deploy your Box Game download page to GitHub Pages, which is free and easy to set up.

## Automatic Deployment

This repository is already configured to automatically deploy to GitHub Pages when changes are pushed to the main branch. The website files are in the `docs/` directory.

## Manual Setup (If Needed)

If the automatic deployment isn't working, follow these steps:

1. Go to your GitHub repository (https://github.com/Rishirajbal/unity)
2. Click on "Settings"
3. Scroll down to the "GitHub Pages" section
4. Under "Source", select "Deploy from a branch"
5. Under "Branch", select "main" and "/docs" folder
6. Click "Save"

GitHub will now build and deploy your site. After a few minutes, it will be available at:
https://rishirajbal.github.io/unity/

## Enabling GitHub Pages in Repository Settings

For the GitHub Actions workflow to work, you need to enable GitHub Pages in your repository settings:

1. Go to your GitHub repository
2. Click on "Settings"
3. Click on "Pages" in the left sidebar
4. Under "Build and deployment":
   - Source: Select "GitHub Actions"
5. Save the settings

## Troubleshooting

If your deployment fails:

1. Check the Actions tab in your GitHub repository to see the workflow status
2. Ensure the repository has GitHub Pages enabled in Settings
3. Make sure the workflow file (.github/workflows/github-pages.yml) is present in the main branch
4. Check that the docs/ directory contains all the necessary files

## After Deployment

Once deployed, your site will be available at:
https://rishirajbal.github.io/unity/

You can share this URL with others to download the game.