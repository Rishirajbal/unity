# Deploying to Vercel from GitHub

This guide will help you deploy the Box Game download page directly from GitHub to Vercel.

## Steps to Deploy

1. **Go to Vercel**
   - Visit [Vercel](https://vercel.com/) and sign in or create an account

2. **Create a New Project**
   - Click on "Add New..." and select "Project"

3. **Import Git Repository**
   - Select "Import Git Repository"
   - Connect your GitHub account if not already connected
   - Find and select the "Rishirajbal/unity" repository

4. **Configure Project**
   - In the "Configure Project" screen:
     - Set the Framework Preset to "Other"
     - Set the Root Directory to "game-download-page"
     - Leave Build Command empty
     - Set Output Directory to "."
     - Click "Deploy"

5. **Wait for Deployment**
   - Vercel will build and deploy your site
   - Once complete, you'll receive a URL for your deployed site (e.g., box-game.vercel.app)

6. **Custom Domain (Optional)**
   - In your project dashboard, go to "Settings" > "Domains"
   - Add your custom domain if you have one

## Troubleshooting

- If the deployment fails, check the build logs for errors
- Make sure the "game-download-page" directory is correctly specified as the root directory
- If the zip file is too large for Vercel, consider hosting it on a file storage service and updating the download link

## Accessing Your Deployed Site

After successful deployment, anyone can:
1. Visit your Vercel URL
2. Download the game directly from the website
3. Follow the instructions to install and play the game

## Updating the Site

If you make changes to the website:
1. Commit and push changes to GitHub
2. Vercel will automatically redeploy your site with the updates