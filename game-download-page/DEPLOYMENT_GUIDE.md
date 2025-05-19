# Deployment Guide for Box Game Download Page

This guide provides step-by-step instructions for deploying the Box Game download page to Vercel.

## Prerequisites

- A [Vercel](https://vercel.com) account
- [Node.js](https://nodejs.org) installed on your computer
- [Git](https://git-scm.com) installed on your computer

## Deployment Steps

### 1. Install Vercel CLI

Open your terminal or command prompt and run:

```bash
npm install -g vercel
```

### 2. Login to Vercel

Run the following command and follow the prompts to log in:

```bash
vercel login
```

You'll be asked to provide your email address, and then you'll receive an email with a verification link.

### 3. Clone the Repository

If you haven't already, clone the repository:

```bash
git clone https://github.com/Rishirajbal/unity.git
cd unity/game-download-page
```

### 4. Deploy to Vercel

From the `game-download-page` directory, run:

```bash
vercel
```

You'll be prompted with a few questions:
- Set up and deploy? Answer `y`
- Which scope to deploy to? Select your account
- Link to an existing project? Answer `n` (unless you've deployed this before)
- What's your project name? Press Enter to use the default or type a name
- In which directory is your code located? Press Enter to use the current directory
- Want to override settings? Answer `n`

### 5. Production Deployment

After testing your preview deployment, you can deploy to production:

```bash
vercel --prod
```

### 6. Custom Domain (Optional)

To add a custom domain:

1. Go to your [Vercel Dashboard](https://vercel.com/dashboard)
2. Select your project
3. Go to "Settings" > "Domains"
4. Add your domain and follow the instructions

## Continuous Deployment

Vercel supports continuous deployment from GitHub. To set this up:

1. Push your code to GitHub
2. In your Vercel dashboard, create a new project
3. Import your repository
4. Configure the build settings (use the defaults for this project)
5. Deploy

Now, whenever you push changes to your repository, Vercel will automatically deploy the updates.

## Environment Variables (If Needed)

If you need to add environment variables:

1. Go to your project in the Vercel dashboard
2. Navigate to "Settings" > "Environment Variables"
3. Add your key-value pairs

## Troubleshooting

- **Build Errors**: Check the build logs in your Vercel dashboard
- **Deployment Issues**: Make sure your `vercel.json` file is correctly configured
- **Performance Problems**: Use Vercel Analytics to identify bottlenecks

## Support

If you encounter any issues with deployment, you can:

- Check [Vercel Documentation](https://vercel.com/docs)
- Visit [Vercel Support](https://vercel.com/support)
- Open an issue in the GitHub repository