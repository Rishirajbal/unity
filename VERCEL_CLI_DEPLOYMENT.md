# Vercel CLI Deployment Guide

This guide provides step-by-step instructions for deploying the Box Game download page to Vercel using the Vercel CLI.

## Prerequisites

1. Node.js and npm installed on your computer
2. A Vercel account (sign up at [vercel.com](https://vercel.com))
3. This repository cloned to your local machine

## Installation

First, install the Vercel CLI globally:

```bash
npm install -g vercel
```

## Deployment Steps

### 1. Login to Vercel

Open your terminal and run:

```bash
vercel login
```

Follow the prompts to log in to your Vercel account. You'll receive an email with a verification link.

### 2. Navigate to the Game Download Page Directory

```bash
cd game-download-page
```

### 3. Deploy to Vercel

Run the deployment command:

```bash
vercel
```

You'll be prompted with several questions:

- **Set up and deploy?**: Yes
- **Which scope?**: Select your personal account or team
- **Link to existing project?**: No (for first-time deployment)
- **What's your project's name?**: Enter a name (e.g., box-game-download)
- **In which directory is your code located?**: ./ (current directory)
- **Want to override settings?**: No (or Yes to customize)

### 4. Wait for Deployment

The CLI will show the deployment progress. Once complete, it will provide a URL to your deployed site.

### 5. Verify Your Deployment

Visit the provided URL to ensure your site is working correctly.

## Production Deployment

By default, the `vercel` command creates a preview deployment. To deploy to production:

```bash
vercel --prod
```

## Environment Variables (If Needed)

To set environment variables:

```bash
vercel env add MY_VARIABLE
```

You'll be prompted to enter the value and select which environments (production, preview, development) should use this variable.

## Custom Domain Setup

To add a custom domain:

```bash
vercel domains add yourdomain.com
```

Follow the prompts to verify domain ownership and configure DNS settings.

## Deployment Configuration

You can customize your deployment by creating a `vercel.json` file in your project root:

```json
{
  "version": 2,
  "builds": [
    {
      "src": "**/*",
      "use": "@vercel/static"
    }
  ],
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/$1"
    }
  ]
}
```

## Continuous Deployment

To set up continuous deployment from GitHub:

1. Link your project to GitHub:
   ```bash
   vercel link
   ```

2. Configure GitHub integration:
   ```bash
   vercel git connect
   ```

## Troubleshooting

### Issue: Authentication Failed

If you encounter authentication issues:
1. Run `vercel logout`
2. Then run `vercel login` again

### Issue: Deployment Failed

Check the error message in the CLI output. Common issues include:
- Missing files
- Invalid configuration
- Exceeded limits

### Issue: Custom Domain Not Working

Verify DNS settings have propagated (can take up to 48 hours).

## Useful Commands

- **List deployments**: `vercel ls`
- **Get deployment details**: `vercel inspect <deployment-url>`
- **Remove a deployment**: `vercel rm <deployment-url>`
- **View logs**: `vercel logs <deployment-url>`

## Need Help?

If you encounter any issues during deployment, you can:
- Run `vercel help` for CLI documentation
- Visit Vercel's [documentation](https://vercel.com/docs)
- Contact Vercel support through your dashboard