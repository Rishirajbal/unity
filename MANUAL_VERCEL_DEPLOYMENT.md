# Manual Vercel Deployment Guide

This guide provides simple, step-by-step instructions for manually deploying your Box Game download page to Vercel.

## Prerequisites

- A [Vercel](https://vercel.com) account (free tier is sufficient)
- Git installed on your local machine

## Step 1: Clone the Repository Locally

```bash
git clone https://github.com/Rishirajbal/unity.git
cd unity
```

## Step 2: Install Vercel CLI

```bash
npm install -g vercel
```

## Step 3: Login to Vercel

```bash
vercel login
```

Follow the prompts to complete the authentication process.

## Step 4: Deploy to Vercel

Navigate to the game-download-page directory:

```bash
cd game-download-page
```

Deploy to Vercel:

```bash
vercel
```

During the deployment process, you'll be asked a few questions:
- Set up and deploy? Answer: `y`
- Which scope to deploy to? Select your account
- Link to an existing project? Answer: `n`
- What's your project name? Enter a name or accept the default
- In which directory is your code located? Enter `.` (current directory)
- Want to override settings? Answer: `n`

## Step 5: Deploy to Production

After testing the preview deployment, deploy to production:

```bash
vercel --prod
```

## Alternative: Deploy via Vercel Dashboard

If you prefer using the Vercel web interface:

1. Go to [Vercel Dashboard](https://vercel.com/dashboard)
2. Click "Add New" > "Project"
3. Import your GitHub repository (you may need to connect GitHub first)
4. Configure the project:
   - Framework Preset: Other
   - Root Directory: game-download-page
   - Build Command: (leave empty)
   - Output Directory: .
5. Click "Deploy"

## Troubleshooting

### Large File Issues

If you encounter issues with the large game zip file:

1. Host the zip file on a service like Google Drive or Dropbox
2. Get a shareable link
3. Edit the `index.html` file to update the download link:

```html
<!-- Find this line in index.html -->
<a href="box game_full_zip.zip" class="download-btn" download>
<!-- Replace with -->
<a href="YOUR_SHARED_LINK" class="download-btn">
```

4. Redeploy to Vercel

### Deployment Failures

If deployment fails:
1. Check that you're in the correct directory (`game-download-page`)
2. Ensure you have the necessary permissions in your Vercel account
3. Try deploying through the Vercel web dashboard instead

## After Deployment

Once deployed, Vercel will provide you with a URL for your website. You can:
1. Share this URL with others to download the game
2. Set up a custom domain in the Vercel project settings
3. Monitor analytics in the Vercel dashboard