# Vercel GitHub Deployment Guide

This guide provides step-by-step instructions for deploying the Box Game download page to Vercel using GitHub integration.

## Prerequisites

1. A GitHub account with this repository forked or cloned
2. A Vercel account (sign up at [vercel.com](https://vercel.com))

## Deployment Steps

### 1. Sign Up/Login to Vercel

1. Visit [Vercel](https://vercel.com/)
2. Click "Sign Up" or "Login"
3. You can sign up/login with GitHub, GitLab, Bitbucket, or email

### 2. Connect Your GitHub Account

1. From the Vercel dashboard, click on your profile picture in the top-right corner
2. Select "Settings" from the dropdown menu
3. Click on "Git" in the left sidebar
4. Under "GitHub," click "Connect" if you haven't already connected your GitHub account
5. Follow the prompts to authorize Vercel to access your GitHub repositories

### 3. Import Your Repository

1. From the Vercel dashboard, click "Add New..." > "Project"
2. Under "Import Git Repository," find and select your Box Game repository
3. If you don't see your repository, click "Configure GitHub App" and grant access to the repository

### 4. Configure Project Settings

1. In the "Configure Project" screen:
   - **Project Name**: Choose a name or use the default
   - **Framework Preset**: Select "Other"
   - **Root Directory**: Set to `game-download-page`
   - **Build Command**: Leave empty (the site is static HTML/CSS/JS)
   - **Output Directory**: Set to `.` (current directory)
   - **Environment Variables**: None required for basic deployment

2. Click "Deploy"

### 5. Wait for Deployment

Vercel will now build and deploy your website. This usually takes less than a minute.

### 6. View Your Deployed Site

Once deployment is complete, you'll see a success message with a link to your site. Click the link to view your deployed Box Game download page.

## Setting Up Continuous Deployment

One of the benefits of using GitHub integration with Vercel is automatic deployments:

1. Any changes pushed to your repository's main branch will trigger a new deployment
2. You can configure which branches trigger deployments in your project settings

To configure deployment settings:

1. Go to your project in the Vercel dashboard
2. Click "Settings" > "Git"
3. Under "Production Branch," you can select which branch triggers production deployments
4. Under "Preview Branches," you can configure which branches get preview deployments

## Custom Domain Setup

To use a custom domain with your Vercel deployment:

1. Go to your project in the Vercel dashboard
2. Click "Settings" > "Domains"
3. Enter your domain name and click "Add"
4. Follow Vercel's instructions for configuring your DNS settings

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

## Monitoring Your Deployment

Vercel provides analytics and monitoring for your deployed site:

1. Go to your project in the Vercel dashboard
2. Click "Analytics" to view visitor statistics
3. Click "Logs" to view deployment and runtime logs

## Need Help?

If you encounter any issues during deployment, you can:

- Check Vercel's [documentation](https://vercel.com/docs)
- Visit Vercel's [help center](https://vercel.com/help)
- Contact Vercel support through your dashboard