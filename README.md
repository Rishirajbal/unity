# Box Game Mobile App

A professional, sleek, and modern mobile application version of the Box Game built with Flutter. This branch is specifically focused on the mobile app implementation.

## Repository Structure

- `mobile_app_flutter/` - Contains the complete Flutter mobile application
  - `lib/` - Source code for the game
  - `assets/` - Game assets and resources
  - `android/` - Android-specific configuration
  - `ios/` - iOS-specific configuration
  - `pubspec.yaml` - Flutter dependencies and configuration
- `INSTALLATION_GUIDE.md` - Detailed installation instructions
- `BRANCH_INFO.md` - Information about all branches in this repository

## Game Features

- Smooth gameplay experience on mobile devices
- Intuitive touch controls
- Multiple difficulty levels
- Score tracking and high score system
- Responsive design that works on all mobile screen sizes
- Clean, modern UI with animations

## Game Controls

- Tap left side of screen for left movement
- Tap right side of screen for right movement
- Tap center of screen for stopping

## Quick Installation Guide

### Prerequisites

- Flutter SDK (version 2.0 or higher)
- Android Studio or Xcode (depending on target platform)
- Git

### Setup and Installation

1. Clone this repository:
   ```bash
   git clone -b mobile-app-new --single-branch https://github.com/Rishirajbal/unity.git
   cd unity
   ```

2. Install Flutter dependencies:
   ```bash
   cd mobile_app_flutter
   flutter pub get
   ```

3. Run the app in debug mode:
   ```bash
   flutter run
   ```

For more detailed installation instructions, please see [INSTALLATION_GUIDE.md](INSTALLATION_GUIDE.md).

### Building for Release

#### Android

```bash
flutter build apk --release
```

The APK file will be available at `build/app/outputs/flutter-apk/app-release.apk`

#### iOS

```bash
flutter build ios --release
```

Then use Xcode to archive and distribute the app.

## Other Branches

This repository is organized into multiple branches, each serving a specific purpose:

### 1. `main`
- Focus: Vercel deployment of the game download page
- Use when: You want to deploy the download page to Vercel

### 2. `local-deployment`
- Focus: Local deployment with one-click launchers
- Use when: You want to run the download page locally without cloud deployment

### 3. `mobile-app-new` (Current Branch)
- Focus: Mobile app version of the Box Game built with Flutter
- Use when: You want to build and deploy the mobile app version

For more detailed information about the branches, see [BRANCH_INFO.md](BRANCH_INFO.md).

## Development

To contribute to the development of the Box Game Mobile App:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## Game Preview

<img width="300" alt="mobile game" src="https://github.com/user-attachments/assets/1f6d6b22-cef1-4ae2-9307-d8bd0718908a" />
