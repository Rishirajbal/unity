#!/bin/bash

# Box Game Download Page Deployment Script
# This script helps you deploy the Box Game download page to Vercel

echo "=== Box Game Download Page Deployment ==="
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Error: Node.js is not installed. Please install Node.js first."
    echo "Visit https://nodejs.org to download and install."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "Error: npm is not installed. Please install npm first."
    exit 1
fi

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "Vercel CLI is not installed. Installing now..."
    npm install -g vercel
    
    if [ $? -ne 0 ]; then
        echo "Error: Failed to install Vercel CLI. Please install it manually with 'npm install -g vercel'."
        exit 1
    fi
    
    echo "Vercel CLI installed successfully."
else
    echo "Vercel CLI is already installed."
fi

echo ""
echo "=== Vercel Login ==="
echo "You need to be logged in to Vercel to deploy."
echo "If you're not logged in, you'll be prompted to do so."
echo ""

# Check if user is logged in to Vercel
vercel whoami &> /dev/null
if [ $? -ne 0 ]; then
    echo "Please log in to Vercel:"
    vercel login
    
    if [ $? -ne 0 ]; then
        echo "Error: Failed to log in to Vercel. Please try again."
        exit 1
    fi
else
    echo "You're already logged in to Vercel."
fi

echo ""
echo "=== Deployment Options ==="
echo "1. Deploy to preview (testing)"
echo "2. Deploy to production"
echo ""
read -p "Choose an option (1/2): " deploy_option

case $deploy_option in
    1)
        echo ""
        echo "Deploying to preview environment..."
        vercel
        ;;
    2)
        echo ""
        echo "Deploying to production environment..."
        vercel --prod
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac

if [ $? -eq 0 ]; then
    echo ""
    echo "=== Deployment Complete ==="
    echo "Your Box Game download page has been deployed successfully!"
    echo ""
    echo "For more information on managing your deployment, visit:"
    echo "https://vercel.com/dashboard"
else
    echo ""
    echo "=== Deployment Failed ==="
    echo "There was an error deploying your website. Please check the error messages above."
    echo "For help, refer to the DEPLOYMENT_GUIDE.md file or visit https://vercel.com/support"
fi