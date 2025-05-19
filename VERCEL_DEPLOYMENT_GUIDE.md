# Comprehensive Vercel Deployment Guide

This guide provides detailed instructions for deploying the Box Game download page to Vercel.

## Prerequisites

- A GitHub account
- A Vercel account (free tier is sufficient)
- This repository forked or cloned to your GitHub account

## Deployment Steps

### 1. Prepare Your Repository

If you haven't already, fork this repository to your GitHub account or push it to your own repository.

### 2. Sign Up/Login to Vercel

- Visit [Vercel](https://vercel.com/)
- Sign up for a new account or log in with your GitHub account

### 3. Create a New Project

- From your Vercel dashboard, click "Add New..." and select "Project"
- Connect your GitHub account if not already connected
- Find and select your repository (e.g., "yourusername/unity")

### 4. Configure Project Settings

In the "Configure Project" screen:

- **Framework Preset**: Select "Other"
- **Root Directory**: Set to `game-download-page`
- **Build Command**: Leave empty (the site is static HTML/CSS/JS)
- **Output Directory**: Set to `.` (current directory)
- **Environment Variables**: None required for basic deployment

### 5. Deploy

- Click the "Deploy" button
- Vercel will build and deploy your site
- Once complete, you'll receive a URL for your deployed site (e.g., box-game.vercel.app)

### 6. Verify Deployment

- Visit the provided URL to ensure your site is working correctly
- Test the download functionality to make sure the game zip file can be downloaded

## Custom Domain (Optional)

If you want to use a custom domain:

1. In your project dashboard, go to "Settings" > "Domains"
2. Add your custom domain
3. Follow Vercel's instructions to verify domain ownership
4. Update your domain's DNS settings as instructed by Vercel

## Continuous Deployment

One of the benefits of Vercel is automatic deployments:

- Any changes pushed to your repository's main branch will trigger a new deployment
- You can configure which branches trigger deployments in your project settings

## Troubleshooting

### Deployment Fails

- Check the build logs for specific error messages
- Verify that the root directory is correctly set to `game-download-page`
- Make sure all required files are present in the repository

### Large File Issues

If the game zip file is too large for Vercel's limits:

1. Consider hosting the zip file on a file storage service (e.g., Google Drive, Dropbox)
2. Update the download link in `index.html` to point to the external file
3. Redeploy the site

### CORS Issues

If you're experiencing CORS (Cross-Origin Resource Sharing) issues:

1. Go to your project settings in Vercel
2. Navigate to the "Settings" tab
3. Under "Headers", add appropriate CORS headers

## Optimizing Performance

To improve your site's performance on Vercel:

1. Compress images using tools like [TinyPNG](https://tinypng.com/)
2. Minify CSS and JavaScript files
3. Enable Vercel's Edge Network in your project settings

## Monitoring and Analytics

Vercel provides basic analytics for your deployed site:

1. Go to your project dashboard
2. Navigate to the "Analytics" tab
3. View metrics like visitors, performance, and errors

For more advanced analytics, consider integrating Google Analytics or similar services.