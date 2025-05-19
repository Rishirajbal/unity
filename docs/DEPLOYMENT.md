# Deploying Box Game Download Page to Vercel

This guide will help you deploy the Box Game download page to Vercel.

## Prerequisites

- A [Vercel](https://vercel.com) account
- [Node.js](https://nodejs.org) installed on your computer
- [Git](https://git-scm.com) installed on your computer

## Deployment Steps

### Option 1: Deploy with Vercel CLI

1. Install Vercel CLI globally:
   ```bash
   npm install -g vercel
   ```

2. Login to your Vercel account:
   ```bash
   vercel login
   ```

3. Navigate to the game-download-page directory:
   ```bash
   cd game-download-page
   ```

4. Deploy to Vercel:
   ```bash
   vercel
   ```

5. Follow the prompts to complete the deployment.

6. For production deployment:
   ```bash
   vercel --prod
   ```

### Option 2: Deploy with Vercel Dashboard

1. Create a new GitHub repository and push this code to it:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/yourusername/box-game-download.git
   git push -u origin main
   ```

2. Go to [Vercel Dashboard](https://vercel.com/dashboard)

3. Click "Add New" > "Project"

4. Import your GitHub repository

5. Configure the project settings:
   - Framework Preset: Other
   - Root Directory: ./
   - Build Command: (leave empty)
   - Output Directory: ./

6. Click "Deploy"

## After Deployment

Once deployed, Vercel will provide you with a URL for your website. You can then:

1. Set up a custom domain if desired
2. Share the URL with others to download the game

## Troubleshooting

- If the game zip file is too large for Vercel, consider hosting it on a file storage service like Google Drive or Dropbox and updating the download link in the HTML file.
- If you encounter CORS issues, make sure your Vercel project has the appropriate CORS headers configured.