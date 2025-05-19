# Complete Guide to Deploying Your Game Download Page

This guide provides step-by-step instructions for deploying your Box Game download page to Vercel.

## Option 1: Deploy via GitHub Integration (Recommended)

### Step 1: Set Up Vercel Account
1. Go to [Vercel](https://vercel.com/) and sign up or log in
2. Connect your GitHub account to Vercel

### Step 2: Import Your Repository
1. From the Vercel dashboard, click "Add New..." > "Project"
2. Find and select the "Rishirajbal/unity" repository
3. Configure the project:
   - Framework Preset: Other
   - Root Directory: game-download-page
   - Build Command: (leave empty)
   - Output Directory: .
4. Click "Deploy"

### Step 3: Configure Your Project
1. Once deployed, you'll get a URL like `box-game.vercel.app`
2. You can set up a custom domain in the project settings if desired

## Option 2: Deploy via GitHub Actions (For Automated Deployments)

This repository already includes a GitHub Actions workflow for automatic deployment.

### Step 1: Set Up Vercel Project
1. Create a new project in Vercel manually first
2. Go to your Vercel account settings > Tokens
3. Create a new token with appropriate permissions

### Step 2: Add Secrets to GitHub Repository
1. Go to your GitHub repository > Settings > Secrets and variables > Actions
2. Add the following secrets:
   - `VERCEL_TOKEN`: Your Vercel API token
   - `VERCEL_PROJECT_ID`: Found in your Vercel project settings
   - `VERCEL_ORG_ID`: Found in your Vercel account settings

### Step 3: Trigger Deployment
1. The workflow will run automatically on push to the main branch
2. You can also manually trigger it from the Actions tab in GitHub

## Option 3: Deploy Locally Using Vercel CLI

### Step 1: Install Vercel CLI
```bash
npm install -g vercel
```

### Step 2: Log In to Vercel
```bash
vercel login
```

### Step 3: Deploy
```bash
cd game-download-page
vercel
```

For production deployment:
```bash
vercel --prod
```

## Testing Your Deployment

After deployment, visit your Vercel URL to ensure:
1. The page loads correctly
2. The download button works
3. The game zip file can be downloaded

## Troubleshooting

### Large File Issues
If the game zip file is too large for Vercel:
1. Host the zip file on a service like Google Drive or Dropbox
2. Update the download link in `index.html` to point to the external file

### CORS Issues
If you encounter CORS issues:
1. Add appropriate headers in `vercel.json`
2. Contact Vercel support if issues persist

### Deployment Failures
If deployment fails:
1. Check the build logs in Vercel
2. Ensure all paths and configurations are correct
3. Try deploying with a different method

## Maintaining Your Site

To update your site:
1. Make changes to the files in the `game-download-page` directory
2. Commit and push to GitHub
3. Vercel will automatically redeploy (if using GitHub integration or Actions)

## Need Help?

If you encounter any issues with deployment, please:
1. Check Vercel's documentation: https://vercel.com/docs
2. Visit Vercel's support forum: https://github.com/vercel/vercel/discussions
3. Contact Vercel support directly through your dashboard