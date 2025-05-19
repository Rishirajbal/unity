# Repository Branch Information

This repository is organized into several branches, each serving a specific purpose. This guide explains the purpose of each branch and how to use them.

## Available Branches

### 1. `main` Branch

**Purpose**: Contains the game download page optimized for Vercel deployment.

**Key Features**:
- Professional download page for the Box Game
- Vercel deployment configuration
- Deployment guides and documentation

**Use Case**: Use this branch when you want to deploy the game download page to Vercel.

### 2. `local-deployment` Branch (Current)

**Purpose**: Simplified version of the download page with local deployment tools.

**Key Features**:
- One-click launchers for Windows and Mac/Linux
- Simplified Python scripts to run the website locally
- No external deployment dependencies

**Use Case**: Use this branch when you want to run the download page locally without any cloud deployment.

### 3. `mobile-app-new` Branch

**Purpose**: Contains the mobile app version of the Box Game built with Flutter.

**Key Features**:
- Complete Flutter mobile application
- Mobile-optimized game controls
- Cross-platform support (Android and iOS)

**Use Case**: Use this branch when you want to build and deploy the mobile app version of the game.

## How to Clone Specific Branches

### Clone All Branches

To clone the entire repository with all branches:

```bash
git clone https://github.com/Rishirajbal/unity.git
cd unity
```

### Clone a Specific Branch Only

To clone only a specific branch:

```bash
git clone -b BRANCH_NAME --single-branch https://github.com/Rishirajbal/unity.git
```

Replace `BRANCH_NAME` with one of: `main`, `local-deployment`, or `mobile-app-new`.

For example, to clone only the local deployment branch:

```bash
git clone -b local-deployment --single-branch https://github.com/Rishirajbal/unity.git
```

### Switch Between Branches

If you've already cloned the repository and want to switch branches:

```bash
git checkout BRANCH_NAME
```

For example:

```bash
git checkout main
```

## Working with Multiple Branches

If you want to work with multiple branches simultaneously, you can clone the repository multiple times into different directories:

```bash
# Clone main branch
git clone -b main --single-branch https://github.com/Rishirajbal/unity.git unity-main

# Clone local-deployment branch
git clone -b local-deployment --single-branch https://github.com/Rishirajbal/unity.git unity-local

# Clone mobile-app-new branch
git clone -b mobile-app-new --single-branch https://github.com/Rishirajbal/unity.git unity-mobile
```

## Branch Comparison

| Feature | main | local-deployment | mobile-app-new |
|---------|------|------------------|----------------|
| Game Download Page | ✅ | ✅ | ❌ |
| Vercel Deployment | ✅ | ❌ | ❌ |
| Local Deployment Tools | ❌ | ✅ | ❌ |
| Mobile App | ❌ | ❌ | ✅ |
| Game Files | ✅ | ✅ | ❌ |