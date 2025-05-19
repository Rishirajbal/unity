# Step-by-Step Vercel Deployment Guide

This guide will walk you through the process of deploying the Box Game download page to Vercel.

## Prerequisites

1. A GitHub account
2. A Vercel account (you can sign up for free at [vercel.com](https://vercel.com))
3. This repository cloned or forked to your GitHub account

## Deployment Steps

### 1. Sign Up/Login to Vercel

- Visit [Vercel](https://vercel.com/)
- Sign up for a new account or log in with your GitHub account

### 2. Install Vercel CLI (Optional)

If you prefer using the command line:

```bash
npm install -g vercel
```

### 3. Deploy Using Vercel Dashboard (Recommended)

1. Go to the [Vercel Dashboard](https://vercel.com/dashboard)
2. Click "Add New..." and select "Project"
3. Import your GitHub repository
4. Configure the project:
   - **Framework Preset**: Select "Other"
   - **Root Directory**: Set to `game-download-page`
   - **Build Command**: Leave empty (the site is static HTML/CSS/JS)
   - **Output Directory**: Set to `.` (current directory)
5. Click "Deploy"

### 4. Deploy Using Vercel CLI (Alternative)

1. Navigate to the `game-download-page` directory:
   ```bash
   cd game-download-page
   ```

2. Run the Vercel deployment command:
   ```bash
   vercel
   ```

3. Follow the prompts:
   - Log in to your Vercel account if prompted
   - Confirm the deployment settings
   - Set the project name when asked

### 5. Verify Your Deployment

- Once deployed, Vercel will provide you with a URL for your site
- Visit the URL to ensure everything is working correctly
- Test the download functionality

### 6. Custom Domain (Optional)

If you want to use a custom domain:

1. In your Vercel project dashboard, go to "Settings" > "Domains"
2. Add your custom domain
3. Follow Vercel's instructions to verify domain ownership
4. Update your domain's DNS settings as instructed by Vercel

## Troubleshooting

### Issue: Files Not Found

If your site deploys but files are missing:
- Make sure you set the correct root directory (`game-download-page`)
- Check that all files are properly committed to your repository

### Issue: Styling Problems

If your site looks different than expected:
- Check browser console for any errors
- Verify that all CSS and JavaScript files are being loaded correctly

### Issue: Download Not Working

If the game download doesn't work:
- Verify that the game zip file is included in your repository
- Check that the download link in `index.html` points to the correct file

## Continuous Deployment

One of the benefits of Vercel is automatic deployments:

- Any changes pushed to your repository's main branch will trigger a new deployment
- You can configure which branches trigger deployments in your project settings

## Need Help?

If you encounter any issues during deployment, you can:
- Check Vercel's [documentation](https://vercel.com/docs)
- Visit Vercel's [help center](https://vercel.com/help)
- Contact Vercel support through your dashboard